%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Routing Control (Recovery Cluster) API Reference Guide
%% for Amazon Route 53 Application Recovery Controller.
%%
%% With Amazon Route 53 Application Recovery Controller, you can use routing
%% control with extreme reliability to recover applications by rerouting
%% traffic across Availability Zones or AWS Regions. Routing controls are
%% simple on/off switches hosted on a highly available cluster in Application
%% Recovery Controller. A cluster provides a set of five redundant Regional
%% endpoints against which you can run API calls to get or update the state
%% of routing controls. To implement failover, you set one routing control on
%% and another one off, to reroute traffic from one Availability Zone or
%% Amazon Web Services Region to another.
%%
%% Be aware that you must specify the Regional endpoints for a cluster when
%% you work with API cluster operations to get or update routing control
%% states in Application Recovery Controller. In addition, you must specify
%% the US West (Oregon) Region for Application Recovery Controller API calls.
%% For example, use the parameter `region us-west-2' with AWS CLI commands.
%% For more information, see Get and update routing control states using the
%% API in the Amazon Route 53 Application Recovery Controller Developer
%% Guide.
%%
%% This API guide includes information about the API operations for how to
%% get and update routing control states in Application Recovery Controller.
%% You also must set up the structures to support routing controls: clusters
%% and control panels.
%%
%% For more information about working with routing control in Application
%% Recovery Controller, see the following:
%%
%% <ul> <li> To create clusters, routing controls, and control panels by
%% using the control plane API for routing control, see the Recovery Control
%% Configuration API Reference Guide for Amazon Route 53 Application Recovery
%% Controller.
%%
%% </li> <li> Learn about the components in recovery control configuration,
%% including clusters, routing controls, and control panels. For more
%% information, see Recovery control components in the Amazon Route 53
%% Application Recovery Controller Developer Guide.
%%
%% </li> <li> Application Recovery Controller also provides readiness checks
%% that run continually to help make sure that your applications are scaled
%% and ready to handle failover traffic. For more information about the
%% related API actions, see the Recovery Readiness API Reference Guide for
%% Amazon Route 53 Application Recovery Controller.
%%
%% </li> <li> For more information about creating resilient applications and
%% preparing for recovery readiness with Application Recovery Controller, see
%% the Amazon Route 53 Application Recovery Controller Developer Guide.
%%
%% </li> </ul>
-module(aws_route53_recovery_cluster).

-export([get_routing_control_state/2,
         get_routing_control_state/3,
         update_routing_control_state/2,
         update_routing_control_state/3,
         update_routing_control_states/2,
         update_routing_control_states/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Get the state for a routing control.
%%
%% A routing control is a simple on/off switch that you can use to route
%% traffic to cells. When the state is On, traffic flows to a cell. When it's
%% Off, traffic does not flow.
%%
%% Before you can create a routing control, you must first create a cluster
%% to host the control in a control panel. For more information, see Create
%% routing control structures in the Amazon Route 53 Application Recovery
%% Controller Developer Guide. Then you access one of the endpoints for the
%% cluster to get or update the routing control state to redirect traffic.
%%
%% You must specify Regional endpoints when you work with API cluster
%% operations to get or update routing control states in Application Recovery
%% Controller.
%%
%% To see a code example for getting a routing control state, including
%% accessing Regional cluster endpoints in sequence, see API examples in the
%% Amazon Route 53 Application Recovery Controller Developer Guide.
%%
%% Learn more about working with routing controls in the following topics in
%% the Amazon Route 53 Application Recovery Controller Developer Guide:
%%
%% <ul> <li> Viewing and updating routing control states
%%
%% </li> <li> Working with routing controls overall
%%
%% </li> </ul>
get_routing_control_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_routing_control_state(Client, Input, []).
get_routing_control_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRoutingControlState">>, Input, Options).

%% @doc Set the state of the routing control to reroute traffic.
%%
%% You can set the value to be On or Off. When the state is On, traffic flows
%% to a cell. When it's Off, traffic does not flow.
%%
%% With Application Recovery Controller, you can add safety rules for routing
%% controls, which are safeguards for routing control state updates that help
%% prevent unexpected outcomes, like fail open traffic routing. However,
%% there are scenarios when you might want to bypass the routing control
%% safeguards that are enforced with safety rules that you've configured. For
%% example, you might want to fail over quickly for disaster recovery, and
%% one or more safety rules might be unexpectedly preventing you from
%% updating a routing control state to reroute traffic. In a "break glass"
%% scenario like this, you can override one or more safety rules to change a
%% routing control state and fail over your application.
%%
%% The `SafetyRulesToOverride' property enables you override one or more
%% safety rules and update routing control states. For more information, see
%% Override safety rules to reroute traffic in the Amazon Route 53
%% Application Recovery Controller Developer Guide.
%%
%% You must specify Regional endpoints when you work with API cluster
%% operations to get or update routing control states in Application Recovery
%% Controller.
%%
%% To see a code example for getting a routing control state, including
%% accessing Regional cluster endpoints in sequence, see API examples in the
%% Amazon Route 53 Application Recovery Controller Developer Guide.
%%
%% <ul> <li> Viewing and updating routing control states
%%
%% </li> <li> Working with routing controls overall
%%
%% </li> </ul>
update_routing_control_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_routing_control_state(Client, Input, []).
update_routing_control_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRoutingControlState">>, Input, Options).

%% @doc Set multiple routing control states.
%%
%% You can set the value for each state to be On or Off. When the state is
%% On, traffic flows to a cell. When it's Off, traffic does not flow.
%%
%% With Application Recovery Controller, you can add safety rules for routing
%% controls, which are safeguards for routing control state updates that help
%% prevent unexpected outcomes, like fail open traffic routing. However,
%% there are scenarios when you might want to bypass the routing control
%% safeguards that are enforced with safety rules that you've configured. For
%% example, you might want to fail over quickly for disaster recovery, and
%% one or more safety rules might be unexpectedly preventing you from
%% updating a routing control state to reroute traffic. In a "break glass"
%% scenario like this, you can override one or more safety rules to change a
%% routing control state and fail over your application.
%%
%% The `SafetyRulesToOverride' property enables you override one or more
%% safety rules and update routing control states. For more information, see
%% Override safety rules to reroute traffic in the Amazon Route 53
%% Application Recovery Controller Developer Guide.
%%
%% You must specify Regional endpoints when you work with API cluster
%% operations to get or update routing control states in Application Recovery
%% Controller.
%%
%% To see a code example for getting a routing control state, including
%% accessing Regional cluster endpoints in sequence, see API examples in the
%% Amazon Route 53 Application Recovery Controller Developer Guide.
%%
%% <ul> <li> Viewing and updating routing control states
%%
%% </li> <li> Working with routing controls overall
%%
%% </li> </ul>
update_routing_control_states(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_routing_control_states(Client, Input, []).
update_routing_control_states(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRoutingControlStates">>, Input, Options).

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
    Client1 = Client#{service => <<"route53-recovery-cluster">>},
    Host = build_host(<<"route53-recovery-cluster">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"ToggleCustomerAPI.", Action/binary>>}
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).