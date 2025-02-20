%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Web Services Price List API is a centralized and
%% convenient way to programmatically query Amazon Web Services for services,
%% products, and pricing information.
%%
%% The Amazon Web Services Price List uses standardized product attributes
%% such as `Location', `Storage Class', and `Operating System',
%% and provides prices at the SKU level. You can use the Amazon Web Services
%% Price List to do the following:
%%
%% <ul> <li> Build cost control and scenario planning tools
%%
%% </li> <li> Reconcile billing data
%%
%% </li> <li> Forecast future spend for budgeting purposes
%%
%% </li> <li> Provide cost benefit analysis that compare your internal
%% workloads with Amazon Web Services
%%
%% </li> </ul> Use `GetServices' without a service code to retrieve the
%% service codes for all Amazon Web Services, then `GetServices' with a
%% service code to retrieve the attribute names for that service. After you
%% have the service code and attribute names, you can use
%% `GetAttributeValues' to see what values are available for an
%% attribute. With the service code and an attribute name and value, you can
%% use `GetProducts' to find specific products that you're interested
%% in, such as an `AmazonEC2' instance, with a `Provisioned IOPS'
%% `volumeType'.
%%
%% You can use the following endpoints for the Amazon Web Services Price List
%% API:
%%
%% <ul> <li> https://api.pricing.us-east-1.amazonaws.com
%%
%% </li> <li> https://api.pricing.ap-south-1.amazonaws.com
%%
%% </li> </ul>
-module(aws_pricing).

-export([describe_services/2,
         describe_services/3,
         get_attribute_values/2,
         get_attribute_values/3,
         get_price_list_file_url/2,
         get_price_list_file_url/3,
         get_products/2,
         get_products/3,
         list_price_lists/2,
         list_price_lists/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Returns the metadata for one service or a list of the metadata for
%% all services.
%%
%% Use this without a service code to get the service codes for all services.
%% Use it with a service code, such as `AmazonEC2', to get information
%% specific to that service, such as the attribute names available for that
%% service. For example, some of the attribute names available for EC2 are
%% `volumeType', `maxIopsVolume', `operation',
%% `locationType', and `instanceCapacity10xlarge'.
describe_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_services(Client, Input, []).
describe_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServices">>, Input, Options).

%% @doc Returns a list of attribute values.
%%
%% Attributes are similar to the details in a Price List API offer file. For
%% a list of available attributes, see Offer File Definitions in the Billing
%% and Cost Management User Guide.
get_attribute_values(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_attribute_values(Client, Input, []).
get_attribute_values(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAttributeValues">>, Input, Options).

%% @doc This feature is in preview release and is subject to change.
%%
%% Your use of Amazon Web Services Price List API is subject to the Beta
%% Service Participation terms of the Amazon Web Services Service Terms
%% (Section 1.10).
%%
%% This returns the URL that you can retrieve your Price List file from. This
%% URL is based on the `PriceListArn' and `FileFormat' that you
%% retrieve from the `ListPriceLists' response.
get_price_list_file_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_price_list_file_url(Client, Input, []).
get_price_list_file_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPriceListFileUrl">>, Input, Options).

%% @doc Returns a list of all products that match the filter criteria.
get_products(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_products(Client, Input, []).
get_products(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProducts">>, Input, Options).

%% @doc This feature is in preview release and is subject to change.
%%
%% Your use of Amazon Web Services Price List API is subject to the Beta
%% Service Participation terms of the Amazon Web Services Service Terms
%% (Section 1.10).
%%
%% This returns a list of Price List references that the requester if
%% authorized to view, given a `ServiceCode', `CurrencyCode', and an
%% `EffectiveDate'. Use without a `RegionCode' filter to list Price
%% List references from all available Amazon Web Services Regions. Use with a
%% `RegionCode' filter to get the Price List reference that's
%% specific to a specific Amazon Web Services Region. You can use the
%% `PriceListArn' from the response to get your preferred Price List
%% files through the `GetPriceListFileUrl' API.
list_price_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_price_lists(Client, Input, []).
list_price_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPriceLists">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"pricing">>},
    Host = build_host(<<"api.pricing">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSPriceListService.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
