%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Lookout for Equipment is a machine learning service that uses
%% advanced analytics to identify anomalies in machines from sensor data for
%% use in predictive maintenance.
-module(aws_lookoutequipment).

-export([create_dataset/2,
         create_dataset/3,
         create_inference_scheduler/2,
         create_inference_scheduler/3,
         create_label/2,
         create_label/3,
         create_label_group/2,
         create_label_group/3,
         create_model/2,
         create_model/3,
         create_retraining_scheduler/2,
         create_retraining_scheduler/3,
         delete_dataset/2,
         delete_dataset/3,
         delete_inference_scheduler/2,
         delete_inference_scheduler/3,
         delete_label/2,
         delete_label/3,
         delete_label_group/2,
         delete_label_group/3,
         delete_model/2,
         delete_model/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_retraining_scheduler/2,
         delete_retraining_scheduler/3,
         describe_data_ingestion_job/2,
         describe_data_ingestion_job/3,
         describe_dataset/2,
         describe_dataset/3,
         describe_inference_scheduler/2,
         describe_inference_scheduler/3,
         describe_label/2,
         describe_label/3,
         describe_label_group/2,
         describe_label_group/3,
         describe_model/2,
         describe_model/3,
         describe_model_version/2,
         describe_model_version/3,
         describe_resource_policy/2,
         describe_resource_policy/3,
         describe_retraining_scheduler/2,
         describe_retraining_scheduler/3,
         import_dataset/2,
         import_dataset/3,
         import_model_version/2,
         import_model_version/3,
         list_data_ingestion_jobs/2,
         list_data_ingestion_jobs/3,
         list_datasets/2,
         list_datasets/3,
         list_inference_events/2,
         list_inference_events/3,
         list_inference_executions/2,
         list_inference_executions/3,
         list_inference_schedulers/2,
         list_inference_schedulers/3,
         list_label_groups/2,
         list_label_groups/3,
         list_labels/2,
         list_labels/3,
         list_model_versions/2,
         list_model_versions/3,
         list_models/2,
         list_models/3,
         list_retraining_schedulers/2,
         list_retraining_schedulers/3,
         list_sensor_statistics/2,
         list_sensor_statistics/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_resource_policy/2,
         put_resource_policy/3,
         start_data_ingestion_job/2,
         start_data_ingestion_job/3,
         start_inference_scheduler/2,
         start_inference_scheduler/3,
         start_retraining_scheduler/2,
         start_retraining_scheduler/3,
         stop_inference_scheduler/2,
         stop_inference_scheduler/3,
         stop_retraining_scheduler/2,
         stop_retraining_scheduler/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_active_model_version/2,
         update_active_model_version/3,
         update_inference_scheduler/2,
         update_inference_scheduler/3,
         update_label_group/2,
         update_label_group/3,
         update_model/2,
         update_model/3,
         update_retraining_scheduler/2,
         update_retraining_scheduler/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a container for a collection of data being ingested for
%% analysis.
%%
%% The dataset contains the metadata describing where the data is and what
%% the data actually looks like. For example, it contains the location of the
%% data source, the data schema, and other information. A dataset also
%% contains any tags associated with the ingested data.
create_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset(Client, Input, []).
create_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataset">>, Input, Options).

%% @doc Creates a scheduled inference.
%%
%% Scheduling an inference is setting up a continuous real-time inference
%% plan to analyze new measurement data. When setting up the schedule, you
%% provide an S3 bucket location for the input data, assign it a delimiter
%% between separate entries in the data, set an offset delay if desired, and
%% set the frequency of inferencing. You must also provide an S3 bucket
%% location for the output data.
create_inference_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_inference_scheduler(Client, Input, []).
create_inference_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInferenceScheduler">>, Input, Options).

%% @doc Creates a label for an event.
create_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_label(Client, Input, []).
create_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLabel">>, Input, Options).

%% @doc Creates a group of labels.
create_label_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_label_group(Client, Input, []).
create_label_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLabelGroup">>, Input, Options).

%% @doc Creates a machine learning model for data inference.
%%
%% A machine-learning (ML) model is a mathematical model that finds patterns
%% in your data. In Amazon Lookout for Equipment, the model learns the
%% patterns of normal behavior and detects abnormal behavior that could be
%% potential equipment failure (or maintenance events). The models are made
%% by analyzing normal data and abnormalities in machine behavior that have
%% already occurred.
%%
%% Your model is trained using a portion of the data from your dataset and
%% uses that data to learn patterns of normal behavior and abnormal patterns
%% that lead to equipment failure. Another portion of the data is used to
%% evaluate the model's accuracy.
create_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model(Client, Input, []).
create_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModel">>, Input, Options).

%% @doc Creates a retraining scheduler on the specified model.
create_retraining_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_retraining_scheduler(Client, Input, []).
create_retraining_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRetrainingScheduler">>, Input, Options).

%% @doc Deletes a dataset and associated artifacts.
%%
%% The operation will check to see if any inference scheduler or data
%% ingestion job is currently using the dataset, and if there isn't, the
%% dataset, its metadata, and any associated data stored in S3 will be
%% deleted. This does not affect any models that used this dataset for
%% training and evaluation, but does prevent it from being used in the
%% future.
delete_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dataset(Client, Input, []).
delete_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataset">>, Input, Options).

%% @doc Deletes an inference scheduler that has been set up.
%%
%% Prior inference results will not be deleted.
delete_inference_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_inference_scheduler(Client, Input, []).
delete_inference_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInferenceScheduler">>, Input, Options).

%% @doc Deletes a label.
delete_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_label(Client, Input, []).
delete_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLabel">>, Input, Options).

%% @doc Deletes a group of labels.
delete_label_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_label_group(Client, Input, []).
delete_label_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLabelGroup">>, Input, Options).

%% @doc Deletes a machine learning model currently available for Amazon
%% Lookout for Equipment.
%%
%% This will prevent it from being used with an inference scheduler, even one
%% that is already set up.
delete_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model(Client, Input, []).
delete_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModel">>, Input, Options).

%% @doc Deletes the resource policy attached to the resource.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes a retraining scheduler from a model.
%%
%% The retraining scheduler must be in the `STOPPED' status.
delete_retraining_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_retraining_scheduler(Client, Input, []).
delete_retraining_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRetrainingScheduler">>, Input, Options).

%% @doc Provides information on a specific data ingestion job such as
%% creation time, dataset ARN, and status.
describe_data_ingestion_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_ingestion_job(Client, Input, []).
describe_data_ingestion_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataIngestionJob">>, Input, Options).

%% @doc Provides a JSON description of the data in each time series dataset,
%% including names, column names, and data types.
describe_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset(Client, Input, []).
describe_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataset">>, Input, Options).

%% @doc Specifies information about the inference scheduler being used,
%% including name, model, status, and associated metadata
describe_inference_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_inference_scheduler(Client, Input, []).
describe_inference_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInferenceScheduler">>, Input, Options).

%% @doc Returns the name of the label.
describe_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_label(Client, Input, []).
describe_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLabel">>, Input, Options).

%% @doc Returns information about the label group.
describe_label_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_label_group(Client, Input, []).
describe_label_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLabelGroup">>, Input, Options).

%% @doc Provides a JSON containing the overall information about a specific
%% machine learning model, including model name and ARN, dataset, training
%% and evaluation information, status, and so on.
describe_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model(Client, Input, []).
describe_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModel">>, Input, Options).

%% @doc Retrieves information about a specific machine learning model
%% version.
describe_model_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_version(Client, Input, []).
describe_model_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelVersion">>, Input, Options).

%% @doc Provides the details of a resource policy attached to a resource.
describe_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource_policy(Client, Input, []).
describe_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResourcePolicy">>, Input, Options).

%% @doc Provides a description of the retraining scheduler, including
%% information such as the model name and retraining parameters.
describe_retraining_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_retraining_scheduler(Client, Input, []).
describe_retraining_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRetrainingScheduler">>, Input, Options).

%% @doc Imports a dataset.
import_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_dataset(Client, Input, []).
import_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportDataset">>, Input, Options).

%% @doc Imports a model that has been trained successfully.
import_model_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_model_version(Client, Input, []).
import_model_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportModelVersion">>, Input, Options).

%% @doc Provides a list of all data ingestion jobs, including dataset name
%% and ARN, S3 location of the input data, status, and so on.
list_data_ingestion_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_ingestion_jobs(Client, Input, []).
list_data_ingestion_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataIngestionJobs">>, Input, Options).

%% @doc Lists all datasets currently available in your account, filtering on
%% the dataset name.
list_datasets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_datasets(Client, Input, []).
list_datasets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasets">>, Input, Options).

%% @doc Lists all inference events that have been found for the specified
%% inference scheduler.
list_inference_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inference_events(Client, Input, []).
list_inference_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInferenceEvents">>, Input, Options).

%% @doc Lists all inference executions that have been performed by the
%% specified inference scheduler.
list_inference_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inference_executions(Client, Input, []).
list_inference_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInferenceExecutions">>, Input, Options).

%% @doc Retrieves a list of all inference schedulers currently available for
%% your account.
list_inference_schedulers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inference_schedulers(Client, Input, []).
list_inference_schedulers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInferenceSchedulers">>, Input, Options).

%% @doc Returns a list of the label groups.
list_label_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_label_groups(Client, Input, []).
list_label_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLabelGroups">>, Input, Options).

%% @doc Provides a list of labels.
list_labels(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_labels(Client, Input, []).
list_labels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLabels">>, Input, Options).

%% @doc Generates a list of all model versions for a given model, including
%% the model version, model version ARN, and status.
%%
%% To list a subset of versions, use the `MaxModelVersion' and
%% `MinModelVersion' fields.
list_model_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_versions(Client, Input, []).
list_model_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelVersions">>, Input, Options).

%% @doc Generates a list of all models in the account, including model name
%% and ARN, dataset, and status.
list_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_models(Client, Input, []).
list_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModels">>, Input, Options).

%% @doc Lists all retraining schedulers in your account, filtering by model
%% name prefix and status.
list_retraining_schedulers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_retraining_schedulers(Client, Input, []).
list_retraining_schedulers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRetrainingSchedulers">>, Input, Options).

%% @doc Lists statistics about the data collected for each of the sensors
%% that have been successfully ingested in the particular dataset.
%%
%% Can also be used to retreive Sensor Statistics for a previous ingestion
%% job.
list_sensor_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_sensor_statistics(Client, Input, []).
list_sensor_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSensorStatistics">>, Input, Options).

%% @doc Lists all the tags for a specified resource, including key and value.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Creates a resource control policy for a given resource.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Starts a data ingestion job.
%%
%% Amazon Lookout for Equipment returns the job status.
start_data_ingestion_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_data_ingestion_job(Client, Input, []).
start_data_ingestion_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDataIngestionJob">>, Input, Options).

%% @doc Starts an inference scheduler.
start_inference_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_inference_scheduler(Client, Input, []).
start_inference_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartInferenceScheduler">>, Input, Options).

%% @doc Starts a retraining scheduler.
start_retraining_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_retraining_scheduler(Client, Input, []).
start_retraining_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartRetrainingScheduler">>, Input, Options).

%% @doc Stops an inference scheduler.
stop_inference_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_inference_scheduler(Client, Input, []).
stop_inference_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopInferenceScheduler">>, Input, Options).

%% @doc Stops a retraining scheduler.
stop_retraining_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_retraining_scheduler(Client, Input, []).
stop_retraining_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopRetrainingScheduler">>, Input, Options).

%% @doc Associates a given tag to a resource in your account.
%%
%% A tag is a key-value pair which can be added to an Amazon Lookout for
%% Equipment resource as metadata. Tags can be used for organizing your
%% resources as well as helping you to search and filter by tag. Multiple
%% tags can be added to a resource, either when you create it, or later. Up
%% to 50 tags can be associated with each resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes a specific tag from a given resource.
%%
%% The tag is specified by its key.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Sets the active model version for a given machine learning model.
update_active_model_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_active_model_version(Client, Input, []).
update_active_model_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateActiveModelVersion">>, Input, Options).

%% @doc Updates an inference scheduler.
update_inference_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_inference_scheduler(Client, Input, []).
update_inference_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInferenceScheduler">>, Input, Options).

%% @doc Updates the label group.
update_label_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_label_group(Client, Input, []).
update_label_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLabelGroup">>, Input, Options).

%% @doc Updates a model in the account.
update_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model(Client, Input, []).
update_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModel">>, Input, Options).

%% @doc Updates a retraining scheduler.
update_retraining_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_retraining_scheduler(Client, Input, []).
update_retraining_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRetrainingScheduler">>, Input, Options).

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
    Client1 = Client#{service => <<"lookoutequipment">>},
    Host = build_host(<<"lookoutequipment">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AWSLookoutEquipmentFrontendService.", Action/binary>>}
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
