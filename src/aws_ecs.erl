%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Elastic Container Service
%%
%% Amazon Elastic Container Service (Amazon ECS) is a highly scalable, fast,
%% container management service.
%%
%% It makes it easy to run, stop, and manage Docker containers. You can host
%% your cluster on a serverless infrastructure that's managed by Amazon
%% ECS by launching your services or tasks on Fargate. For more control, you
%% can host your tasks on a cluster of Amazon Elastic Compute Cloud (Amazon
%% EC2) or External (on-premises) instances that you manage.
%%
%% Amazon ECS makes it easy to launch and stop container-based applications
%% with simple API calls. This makes it easy to get the state of your cluster
%% from a centralized service, and gives you access to many familiar Amazon
%% EC2 features.
%%
%% You can use Amazon ECS to schedule the placement of containers across your
%% cluster based on your resource needs, isolation policies, and availability
%% requirements. With Amazon ECS, you don't need to operate your own
%% cluster management and configuration management systems. You also
%% don't need to worry about scaling your management infrastructure.
-module(aws_ecs).

-export([create_capacity_provider/2,
         create_capacity_provider/3,
         create_cluster/2,
         create_cluster/3,
         create_service/2,
         create_service/3,
         create_task_set/2,
         create_task_set/3,
         delete_account_setting/2,
         delete_account_setting/3,
         delete_attributes/2,
         delete_attributes/3,
         delete_capacity_provider/2,
         delete_capacity_provider/3,
         delete_cluster/2,
         delete_cluster/3,
         delete_service/2,
         delete_service/3,
         delete_task_definitions/2,
         delete_task_definitions/3,
         delete_task_set/2,
         delete_task_set/3,
         deregister_container_instance/2,
         deregister_container_instance/3,
         deregister_task_definition/2,
         deregister_task_definition/3,
         describe_capacity_providers/2,
         describe_capacity_providers/3,
         describe_clusters/2,
         describe_clusters/3,
         describe_container_instances/2,
         describe_container_instances/3,
         describe_services/2,
         describe_services/3,
         describe_task_definition/2,
         describe_task_definition/3,
         describe_task_sets/2,
         describe_task_sets/3,
         describe_tasks/2,
         describe_tasks/3,
         discover_poll_endpoint/2,
         discover_poll_endpoint/3,
         execute_command/2,
         execute_command/3,
         get_task_protection/2,
         get_task_protection/3,
         list_account_settings/2,
         list_account_settings/3,
         list_attributes/2,
         list_attributes/3,
         list_clusters/2,
         list_clusters/3,
         list_container_instances/2,
         list_container_instances/3,
         list_services/2,
         list_services/3,
         list_services_by_namespace/2,
         list_services_by_namespace/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_task_definition_families/2,
         list_task_definition_families/3,
         list_task_definitions/2,
         list_task_definitions/3,
         list_tasks/2,
         list_tasks/3,
         put_account_setting/2,
         put_account_setting/3,
         put_account_setting_default/2,
         put_account_setting_default/3,
         put_attributes/2,
         put_attributes/3,
         put_cluster_capacity_providers/2,
         put_cluster_capacity_providers/3,
         register_container_instance/2,
         register_container_instance/3,
         register_task_definition/2,
         register_task_definition/3,
         run_task/2,
         run_task/3,
         start_task/2,
         start_task/3,
         stop_task/2,
         stop_task/3,
         submit_attachment_state_changes/2,
         submit_attachment_state_changes/3,
         submit_container_state_change/2,
         submit_container_state_change/3,
         submit_task_state_change/2,
         submit_task_state_change/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_capacity_provider/2,
         update_capacity_provider/3,
         update_cluster/2,
         update_cluster/3,
         update_cluster_settings/2,
         update_cluster_settings/3,
         update_container_agent/2,
         update_container_agent/3,
         update_container_instances_state/2,
         update_container_instances_state/3,
         update_service/2,
         update_service/3,
         update_service_primary_task_set/2,
         update_service_primary_task_set/3,
         update_task_protection/2,
         update_task_protection/3,
         update_task_set/2,
         update_task_set/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new capacity provider.
%%
%% Capacity providers are associated with an Amazon ECS cluster and are used
%% in capacity provider strategies to facilitate cluster auto scaling.
%%
%% Only capacity providers that use an Auto Scaling group can be created.
%% Amazon ECS tasks on Fargate use the `FARGATE' and `FARGATE_SPOT'
%% capacity providers. These providers are available to all accounts in the
%% Amazon Web Services Regions that Fargate supports.
create_capacity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_capacity_provider(Client, Input, []).
create_capacity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCapacityProvider">>, Input, Options).

%% @doc Creates a new Amazon ECS cluster.
%%
%% By default, your account receives a `default' cluster when you launch
%% your first container instance. However, you can create your own cluster
%% with a unique name with the `CreateCluster' action.
%%
%% When you call the `CreateCluster' API operation, Amazon ECS attempts
%% to create the Amazon ECS service-linked role for your account. This is so
%% that it can manage required resources in other Amazon Web Services
%% services on your behalf. However, if the user that makes the call
%% doesn't have permissions to create the service-linked role, it
%% isn't created. For more information, see Using service-linked roles
%% for Amazon ECS in the Amazon Elastic Container Service Developer Guide.
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Runs and maintains your desired number of tasks from a specified task
%% definition.
%%
%% If the number of tasks running in a service drops below the
%% `desiredCount', Amazon ECS runs another copy of the task in the
%% specified cluster. To update an existing service, see the
%% `UpdateService' action.
%%
%% Starting April 15, 2023, Amazon Web Services will not onboard new
%% customers to Amazon Elastic Inference (EI), and will help current
%% customers migrate their workloads to options that offer better price and
%% performance. After April 15, 2023, new customers will not be able to
%% launch instances with Amazon EI accelerators in Amazon SageMaker, Amazon
%% ECS, or Amazon EC2. However, customers who have used Amazon EI at least
%% once during the past 30-day period are considered current customers and
%% will be able to continue using the service.
%%
%% In addition to maintaining the desired count of tasks in your service, you
%% can optionally run your service behind one or more load balancers. The
%% load balancers distribute traffic across the tasks that are associated
%% with the service. For more information, see Service load balancing in the
%% Amazon Elastic Container Service Developer Guide.
%%
%% Tasks for services that don't use a load balancer are considered
%% healthy if they're in the `RUNNING' state. Tasks for services that
%% use a load balancer are considered healthy if they're in the
%% `RUNNING' state and are reported as healthy by the load balancer.
%%
%% There are two service scheduler strategies available:
%%
%% <ul> <li> `REPLICA' - The replica scheduling strategy places and
%% maintains your desired number of tasks across your cluster. By default,
%% the service scheduler spreads tasks across Availability Zones. You can use
%% task placement strategies and constraints to customize task placement
%% decisions. For more information, see Service scheduler concepts in the
%% Amazon Elastic Container Service Developer Guide.
%%
%% </li> <li> `DAEMON' - The daemon scheduling strategy deploys exactly
%% one task on each active container instance that meets all of the task
%% placement constraints that you specify in your cluster. The service
%% scheduler also evaluates the task placement constraints for running tasks.
%% It also stops tasks that don't meet the placement constraints. When
%% using this strategy, you don't need to specify a desired number of
%% tasks, a task placement strategy, or use Service Auto Scaling policies.
%% For more information, see Service scheduler concepts in the Amazon Elastic
%% Container Service Developer Guide.
%%
%% </li> </ul> You can optionally specify a deployment configuration for your
%% service. The deployment is initiated by changing properties. For example,
%% the deployment might be initiated by the task definition or by your
%% desired count of a service. This is done with an `UpdateService'
%% operation. The default value for a replica service for
%% `minimumHealthyPercent' is 100%. The default value for a daemon
%% service for `minimumHealthyPercent' is 0%.
%%
%% If a service uses the `ECS' deployment controller, the minimum healthy
%% percent represents a lower limit on the number of tasks in a service that
%% must remain in the `RUNNING' state during a deployment. Specifically,
%% it represents it as a percentage of your desired number of tasks (rounded
%% up to the nearest integer). This happens when any of your container
%% instances are in the `DRAINING' state if the service contains tasks
%% using the EC2 launch type. Using this parameter, you can deploy without
%% using additional cluster capacity. For example, if you set your service to
%% have desired number of four tasks and a minimum healthy percent of 50%,
%% the scheduler might stop two existing tasks to free up cluster capacity
%% before starting two new tasks. If they're in the `RUNNING' state,
%% tasks for services that don't use a load balancer are considered
%% healthy . If they're in the `RUNNING' state and reported as
%% healthy by the load balancer, tasks for services that do use a load
%% balancer are considered healthy . The default value for minimum healthy
%% percent is 100%.
%%
%% If a service uses the `ECS' deployment controller, the maximum percent
%% parameter represents an upper limit on the number of tasks in a service
%% that are allowed in the `RUNNING' or `PENDING' state during a
%% deployment. Specifically, it represents it as a percentage of the desired
%% number of tasks (rounded down to the nearest integer). This happens when
%% any of your container instances are in the `DRAINING' state if the
%% service contains tasks using the EC2 launch type. Using this parameter,
%% you can define the deployment batch size. For example, if your service has
%% a desired number of four tasks and a maximum percent value of 200%, the
%% scheduler may start four new tasks before stopping the four older tasks
%% (provided that the cluster resources required to do this are available).
%% The default value for maximum percent is 200%.
%%
%% If a service uses either the `CODE_DEPLOY' or `EXTERNAL'
%% deployment controller types and tasks that use the EC2 launch type, the
%% minimum healthy percent and maximum percent values are used only to define
%% the lower and upper limit on the number of the tasks in the service that
%% remain in the `RUNNING' state. This is while the container instances
%% are in the `DRAINING' state. If the tasks in the service use the
%% Fargate launch type, the minimum healthy percent and maximum percent
%% values aren't used. This is the case even if they're currently
%% visible when describing your service.
%%
%% When creating a service that uses the `EXTERNAL' deployment
%% controller, you can specify only parameters that aren't controlled at
%% the task set level. The only required parameter is the service name. You
%% control your services using the `CreateTaskSet' operation. For more
%% information, see Amazon ECS deployment types in the Amazon Elastic
%% Container Service Developer Guide.
%%
%% When the service scheduler launches new tasks, it determines task
%% placement. For information about task placement and task placement
%% strategies, see Amazon ECS task placement in the Amazon Elastic Container
%% Service Developer Guide.
create_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service(Client, Input, []).
create_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateService">>, Input, Options).

%% @doc Create a task set in the specified cluster and service.
%%
%% This is used when a service uses the `EXTERNAL' deployment controller
%% type. For more information, see Amazon ECS deployment types in the Amazon
%% Elastic Container Service Developer Guide.
create_task_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_task_set(Client, Input, []).
create_task_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTaskSet">>, Input, Options).

%% @doc Disables an account setting for a specified user, role, or the root
%% user for an account.
delete_account_setting(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_account_setting(Client, Input, []).
delete_account_setting(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccountSetting">>, Input, Options).

%% @doc Deletes one or more custom attributes from an Amazon ECS resource.
delete_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_attributes(Client, Input, []).
delete_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAttributes">>, Input, Options).

%% @doc Deletes the specified capacity provider.
%%
%% The `FARGATE' and `FARGATE_SPOT' capacity providers are reserved
%% and can't be deleted. You can disassociate them from a cluster using
%% either the `PutClusterCapacityProviders' API or by deleting the
%% cluster.
%%
%% Prior to a capacity provider being deleted, the capacity provider must be
%% removed from the capacity provider strategy from all services. The
%% `UpdateService' API can be used to remove a capacity provider from a
%% service's capacity provider strategy. When updating a service, the
%% `forceNewDeployment' option can be used to ensure that any tasks using
%% the Amazon EC2 instance capacity provided by the capacity provider are
%% transitioned to use the capacity from the remaining capacity providers.
%% Only capacity providers that aren't associated with a cluster can be
%% deleted. To remove a capacity provider from a cluster, you can either use
%% `PutClusterCapacityProviders' or delete the cluster.
delete_capacity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_capacity_provider(Client, Input, []).
delete_capacity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCapacityProvider">>, Input, Options).

%% @doc Deletes the specified cluster.
%%
%% The cluster transitions to the `INACTIVE' state. Clusters with an
%% `INACTIVE' status might remain discoverable in your account for a
%% period of time. However, this behavior is subject to change in the future.
%% We don't recommend that you rely on `INACTIVE' clusters
%% persisting.
%%
%% You must deregister all container instances from this cluster before you
%% may delete it. You can list the container instances in a cluster with
%% `ListContainerInstances' and deregister them with
%% `DeregisterContainerInstance'.
delete_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster(Client, Input, []).
delete_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCluster">>, Input, Options).

%% @doc Deletes a specified service within a cluster.
%%
%% You can delete a service if you have no running tasks in it and the
%% desired task count is zero. If the service is actively maintaining tasks,
%% you can't delete it, and you must update the service to a desired task
%% count of zero. For more information, see `UpdateService'.
%%
%% When you delete a service, if there are still running tasks that require
%% cleanup, the service status moves from `ACTIVE' to `DRAINING', and
%% the service is no longer visible in the console or in the
%% `ListServices' API operation. After all tasks have transitioned to
%% either `STOPPING' or `STOPPED' status, the service status moves
%% from `DRAINING' to `INACTIVE'. Services in the `DRAINING' or
%% `INACTIVE' status can still be viewed with the `DescribeServices'
%% API operation. However, in the future, `INACTIVE' services may be
%% cleaned up and purged from Amazon ECS record keeping, and
%% `DescribeServices' calls on those services return a
%% `ServiceNotFoundException' error.
%%
%% If you attempt to create a new service with the same name as an existing
%% service in either `ACTIVE' or `DRAINING' status, you receive an
%% error.
delete_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service(Client, Input, []).
delete_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteService">>, Input, Options).

%% @doc Deletes one or more task definitions.
%%
%% You must deregister a task definition revision before you delete it. For
%% more information, see DeregisterTaskDefinition.
%%
%% When you delete a task definition revision, it is immediately transitions
%% from the `INACTIVE' to `DELETE_IN_PROGRESS'. Existing tasks and
%% services that reference a `DELETE_IN_PROGRESS' task definition
%% revision continue to run without disruption. Existing services that
%% reference a `DELETE_IN_PROGRESS' task definition revision can still
%% scale up or down by modifying the service's desired count.
%%
%% You can't use a `DELETE_IN_PROGRESS' task definition revision to
%% run new tasks or create new services. You also can't update an
%% existing service to reference a `DELETE_IN_PROGRESS' task definition
%% revision.
%%
%% A task definition revision will stay in `DELETE_IN_PROGRESS' status
%% until all the associated tasks and services have been terminated.
%%
%% When you delete all `INACTIVE' task definition revisions, the task
%% definition name is not displayed in the console and not returned in the
%% API. If a task definition revisions are in the `DELETE_IN_PROGRESS'
%% state, the task definition name is displayed in the console and returned
%% in the API. The task definition name is retained by Amazon ECS and the
%% revision is incremented the next time you create a task definition with
%% that name.
delete_task_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_task_definitions(Client, Input, []).
delete_task_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTaskDefinitions">>, Input, Options).

%% @doc Deletes a specified task set within a service.
%%
%% This is used when a service uses the `EXTERNAL' deployment controller
%% type. For more information, see Amazon ECS deployment types in the Amazon
%% Elastic Container Service Developer Guide.
delete_task_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_task_set(Client, Input, []).
delete_task_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTaskSet">>, Input, Options).

%% @doc Deregisters an Amazon ECS container instance from the specified
%% cluster.
%%
%% This instance is no longer available to run tasks.
%%
%% If you intend to use the container instance for some other purpose after
%% deregistration, we recommend that you stop all of the tasks running on the
%% container instance before deregistration. That prevents any orphaned tasks
%% from consuming resources.
%%
%% Deregistering a container instance removes the instance from a cluster,
%% but it doesn't terminate the EC2 instance. If you are finished using
%% the instance, be sure to terminate it in the Amazon EC2 console to stop
%% billing.
%%
%% If you terminate a running container instance, Amazon ECS automatically
%% deregisters the instance from your cluster (stopped container instances or
%% instances with disconnected agents aren't automatically deregistered
%% when terminated).
deregister_container_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_container_instance(Client, Input, []).
deregister_container_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterContainerInstance">>, Input, Options).

%% @doc Deregisters the specified task definition by family and revision.
%%
%% Upon deregistration, the task definition is marked as `INACTIVE'.
%% Existing tasks and services that reference an `INACTIVE' task
%% definition continue to run without disruption. Existing services that
%% reference an `INACTIVE' task definition can still scale up or down by
%% modifying the service's desired count. If you want to delete a task
%% definition revision, you must first deregister the task definition
%% revision.
%%
%% You can't use an `INACTIVE' task definition to run new tasks or
%% create new services, and you can't update an existing service to
%% reference an `INACTIVE' task definition. However, there may be up to a
%% 10-minute window following deregistration where these restrictions have
%% not yet taken effect.
%%
%% At this time, `INACTIVE' task definitions remain discoverable in your
%% account indefinitely. However, this behavior is subject to change in the
%% future. We don't recommend that you rely on `INACTIVE' task
%% definitions persisting beyond the lifecycle of any associated tasks and
%% services.
%%
%% You must deregister a task definition revision before you delete it. For
%% more information, see DeleteTaskDefinitions.
deregister_task_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_task_definition(Client, Input, []).
deregister_task_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterTaskDefinition">>, Input, Options).

%% @doc Describes one or more of your capacity providers.
describe_capacity_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_capacity_providers(Client, Input, []).
describe_capacity_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCapacityProviders">>, Input, Options).

%% @doc Describes one or more of your clusters.
describe_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_clusters(Client, Input, []).
describe_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusters">>, Input, Options).

%% @doc Describes one or more container instances.
%%
%% Returns metadata about each container instance requested.
describe_container_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_container_instances(Client, Input, []).
describe_container_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeContainerInstances">>, Input, Options).

%% @doc Describes the specified services running in your cluster.
describe_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_services(Client, Input, []).
describe_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServices">>, Input, Options).

%% @doc Describes a task definition.
%%
%% You can specify a `family' and `revision' to find information
%% about a specific task definition, or you can simply specify the family to
%% find the latest `ACTIVE' revision in that family.
%%
%% You can only describe `INACTIVE' task definitions while an active task
%% or service references them.
describe_task_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_task_definition(Client, Input, []).
describe_task_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTaskDefinition">>, Input, Options).

%% @doc Describes the task sets in the specified cluster and service.
%%
%% This is used when a service uses the `EXTERNAL' deployment controller
%% type. For more information, see Amazon ECS Deployment Types in the Amazon
%% Elastic Container Service Developer Guide.
describe_task_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_task_sets(Client, Input, []).
describe_task_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTaskSets">>, Input, Options).

%% @doc Describes a specified task or tasks.
%%
%% Currently, stopped tasks appear in the returned results for at least one
%% hour.
%%
%% If you have tasks with tags, and then delete the cluster, the tagged tasks
%% are returned in the response. If you create a new cluster with the same
%% name as the deleted cluster, the tagged tasks are not included in the
%% response.
describe_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tasks(Client, Input, []).
describe_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTasks">>, Input, Options).

%% @doc This action is only used by the Amazon ECS agent, and it is not
%% intended for use outside of the agent.
%%
%% Returns an endpoint for the Amazon ECS agent to poll for updates.
discover_poll_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    discover_poll_endpoint(Client, Input, []).
discover_poll_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DiscoverPollEndpoint">>, Input, Options).

%% @doc Runs a command remotely on a container within a task.
%%
%% If you use a condition key in your IAM policy to refine the conditions for
%% the policy statement, for example limit the actions to a specific cluster,
%% you receive an `AccessDeniedException' when there is a mismatch
%% between the condition key value and the corresponding parameter value.
%%
%% For information about required permissions and considerations, see Using
%% Amazon ECS Exec for debugging in the Amazon ECS Developer Guide.
execute_command(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_command(Client, Input, []).
execute_command(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteCommand">>, Input, Options).

%% @doc Retrieves the protection status of tasks in an Amazon ECS service.
get_task_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_task_protection(Client, Input, []).
get_task_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTaskProtection">>, Input, Options).

%% @doc Lists the account settings for a specified principal.
list_account_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_settings(Client, Input, []).
list_account_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountSettings">>, Input, Options).

%% @doc Lists the attributes for Amazon ECS resources within a specified
%% target type and cluster.
%%
%% When you specify a target type and cluster, `ListAttributes' returns a
%% list of attribute objects, one for each attribute on each resource. You
%% can filter the list of results to a single attribute name to only return
%% results that have that name. You can also filter the results by attribute
%% name and value. You can do this, for example, to see which container
%% instances in a cluster are running a Linux AMI (`ecs.os-type=linux').
list_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_attributes(Client, Input, []).
list_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAttributes">>, Input, Options).

%% @doc Returns a list of existing clusters.
list_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_clusters(Client, Input, []).
list_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusters">>, Input, Options).

%% @doc Returns a list of container instances in a specified cluster.
%%
%% You can filter the results of a `ListContainerInstances' operation
%% with cluster query language statements inside the `filter' parameter.
%% For more information, see Cluster Query Language in the Amazon Elastic
%% Container Service Developer Guide.
list_container_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_container_instances(Client, Input, []).
list_container_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListContainerInstances">>, Input, Options).

%% @doc Returns a list of services.
%%
%% You can filter the results by cluster, launch type, and scheduling
%% strategy.
list_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_services(Client, Input, []).
list_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServices">>, Input, Options).

%% @doc This operation lists all of the services that are associated with a
%% Cloud Map namespace.
%%
%% This list might include services in different clusters. In contrast,
%% `ListServices' can only list services in one cluster at a time. If you
%% need to filter the list of services in a single cluster by various
%% parameters, use `ListServices'. For more information, see Service
%% Connect in the Amazon Elastic Container Service Developer Guide.
list_services_by_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_services_by_namespace(Client, Input, []).
list_services_by_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServicesByNamespace">>, Input, Options).

%% @doc List the tags for an Amazon ECS resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Returns a list of task definition families that are registered to
%% your account.
%%
%% This list includes task definition families that no longer have any
%% `ACTIVE' task definition revisions.
%%
%% You can filter out task definition families that don't contain any
%% `ACTIVE' task definition revisions by setting the `status'
%% parameter to `ACTIVE'. You can also filter the results with the
%% `familyPrefix' parameter.
list_task_definition_families(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_task_definition_families(Client, Input, []).
list_task_definition_families(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTaskDefinitionFamilies">>, Input, Options).

%% @doc Returns a list of task definitions that are registered to your
%% account.
%%
%% You can filter the results by family name with the `familyPrefix'
%% parameter or by status with the `status' parameter.
list_task_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_task_definitions(Client, Input, []).
list_task_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTaskDefinitions">>, Input, Options).

%% @doc Returns a list of tasks.
%%
%% You can filter the results by cluster, task definition family, container
%% instance, launch type, what IAM principal started the task, or by the
%% desired status of the task.
%%
%% Recently stopped tasks might appear in the returned results.
list_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tasks(Client, Input, []).
list_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTasks">>, Input, Options).

%% @doc Modifies an account setting.
%%
%% Account settings are set on a per-Region basis.
%%
%% If you change the root user account setting, the default settings are
%% reset for users and roles that do not have specified individual account
%% settings. For more information, see Account Settings in the Amazon Elastic
%% Container Service Developer Guide.
%%
%% When you specify `serviceLongArnFormat', `taskLongArnFormat', or
%% `containerInstanceLongArnFormat', the Amazon Resource Name (ARN) and
%% resource ID format of the resource type for a specified user, role, or the
%% root user for an account is affected. The opt-in and opt-out account
%% setting must be set for each Amazon ECS resource separately. The ARN and
%% resource ID format of a resource is defined by the opt-in status of the
%% user or role that created the resource. You must turn on this setting to
%% use Amazon ECS features such as resource tagging.
%%
%% When you specify `awsvpcTrunking', the elastic network interface (ENI)
%% limit for any new container instances that support the feature is changed.
%% If `awsvpcTrunking' is turned on, any new container instances that
%% support the feature are launched have the increased ENI limits available
%% to them. For more information, see Elastic Network Interface Trunking in
%% the Amazon Elastic Container Service Developer Guide.
%%
%% When you specify `containerInsights', the default setting indicating
%% whether Amazon Web Services CloudWatch Container Insights is turned on for
%% your clusters is changed. If `containerInsights' is turned on, any new
%% clusters that are created will have Container Insights turned on unless
%% you disable it during cluster creation. For more information, see
%% CloudWatch Container Insights in the Amazon Elastic Container Service
%% Developer Guide.
%%
%% Amazon ECS is introducing tagging authorization for resource creation.
%% Users must have permissions for actions that create the resource, such as
%% `ecsCreateCluster'. If tags are specified when you create a resource,
%% Amazon Web Services performs additional authorization to verify if users
%% or roles have permissions to create tags. Therefore, you must grant
%% explicit permissions to use the `ecs:TagResource' action. For more
%% information, see Grant permission to tag resources on creation in the
%% Amazon ECS Developer Guide.
%%
%% When Amazon Web Services determines that a security or infrastructure
%% update is needed for an Amazon ECS task hosted on Fargate, the tasks need
%% to be stopped and new tasks launched to replace them. Use
%% `fargateTaskRetirementWaitPeriod' to configure the wait time to retire
%% a Fargate task. For information about the Fargate tasks maintenance, see
%% Amazon Web Services Fargate task maintenance in the Amazon ECS Developer
%% Guide.
put_account_setting(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_account_setting(Client, Input, []).
put_account_setting(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAccountSetting">>, Input, Options).

%% @doc Modifies an account setting for all users on an account for whom no
%% individual account setting has been specified.
%%
%% Account settings are set on a per-Region basis.
put_account_setting_default(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_account_setting_default(Client, Input, []).
put_account_setting_default(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAccountSettingDefault">>, Input, Options).

%% @doc Create or update an attribute on an Amazon ECS resource.
%%
%% If the attribute doesn't exist, it's created. If the attribute
%% exists, its value is replaced with the specified value. To delete an
%% attribute, use `DeleteAttributes'. For more information, see
%% Attributes in the Amazon Elastic Container Service Developer Guide.
put_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_attributes(Client, Input, []).
put_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAttributes">>, Input, Options).

%% @doc Modifies the available capacity providers and the default capacity
%% provider strategy for a cluster.
%%
%% You must specify both the available capacity providers and a default
%% capacity provider strategy for the cluster. If the specified cluster has
%% existing capacity providers associated with it, you must specify all
%% existing capacity providers in addition to any new ones you want to add.
%% Any existing capacity providers that are associated with a cluster that
%% are omitted from a `PutClusterCapacityProviders' API call will be
%% disassociated with the cluster. You can only disassociate an existing
%% capacity provider from a cluster if it's not being used by any
%% existing tasks.
%%
%% When creating a service or running a task on a cluster, if no capacity
%% provider or launch type is specified, then the cluster's default
%% capacity provider strategy is used. We recommend that you define a default
%% capacity provider strategy for your cluster. However, you must specify an
%% empty array (`[]') to bypass defining a default strategy.
put_cluster_capacity_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_cluster_capacity_providers(Client, Input, []).
put_cluster_capacity_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutClusterCapacityProviders">>, Input, Options).

%% @doc This action is only used by the Amazon ECS agent, and it is not
%% intended for use outside of the agent.
%%
%% Registers an EC2 instance into the specified cluster. This instance
%% becomes available to place containers on.
register_container_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_container_instance(Client, Input, []).
register_container_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterContainerInstance">>, Input, Options).

%% @doc Registers a new task definition from the supplied `family' and
%% `containerDefinitions'.
%%
%% Optionally, you can add data volumes to your containers with the
%% `volumes' parameter. For more information about task definition
%% parameters and defaults, see Amazon ECS Task Definitions in the Amazon
%% Elastic Container Service Developer Guide.
%%
%% You can specify a role for your task with the `taskRoleArn' parameter.
%% When you specify a role for a task, its containers can then use the latest
%% versions of the CLI or SDKs to make API requests to the Amazon Web
%% Services services that are specified in the policy that's associated
%% with the role. For more information, see IAM Roles for Tasks in the Amazon
%% Elastic Container Service Developer Guide.
%%
%% You can specify a Docker networking mode for the containers in your task
%% definition with the `networkMode' parameter. The available network
%% modes correspond to those described in Network settings in the Docker run
%% reference. If you specify the `awsvpc' network mode, the task is
%% allocated an elastic network interface, and you must specify a
%% `NetworkConfiguration' when you create a service or run a task with
%% the task definition. For more information, see Task Networking in the
%% Amazon Elastic Container Service Developer Guide.
register_task_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_task_definition(Client, Input, []).
register_task_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterTaskDefinition">>, Input, Options).

%% @doc Starts a new task using the specified task definition.
%%
%% You can allow Amazon ECS to place tasks for you, or you can customize how
%% Amazon ECS places tasks using placement constraints and placement
%% strategies. For more information, see Scheduling Tasks in the Amazon
%% Elastic Container Service Developer Guide.
%%
%% Alternatively, you can use `StartTask' to use your own scheduler or
%% place tasks manually on specific container instances.
%%
%% Starting April 15, 2023, Amazon Web Services will not onboard new
%% customers to Amazon Elastic Inference (EI), and will help current
%% customers migrate their workloads to options that offer better price and
%% performance. After April 15, 2023, new customers will not be able to
%% launch instances with Amazon EI accelerators in Amazon SageMaker, Amazon
%% ECS, or Amazon EC2. However, customers who have used Amazon EI at least
%% once during the past 30-day period are considered current customers and
%% will be able to continue using the service.
%%
%% The Amazon ECS API follows an eventual consistency model. This is because
%% of the distributed nature of the system supporting the API. This means
%% that the result of an API command you run that affects your Amazon ECS
%% resources might not be immediately visible to all subsequent commands you
%% run. Keep this in mind when you carry out an API command that immediately
%% follows a previous API command.
%%
%% To manage eventual consistency, you can do the following:
%%
%% <ul> <li> Confirm the state of the resource before you run a command to
%% modify it. Run the DescribeTasks command using an exponential backoff
%% algorithm to ensure that you allow enough time for the previous command to
%% propagate through the system. To do this, run the DescribeTasks command
%% repeatedly, starting with a couple of seconds of wait time and increasing
%% gradually up to five minutes of wait time.
%%
%% </li> <li> Add wait time between subsequent commands, even if the
%% DescribeTasks command returns an accurate response. Apply an exponential
%% backoff algorithm starting with a couple of seconds of wait time, and
%% increase gradually up to about five minutes of wait time.
%%
%% </li> </ul>
run_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    run_task(Client, Input, []).
run_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RunTask">>, Input, Options).

%% @doc Starts a new task from the specified task definition on the specified
%% container instance or instances.
%%
%% Starting April 15, 2023, Amazon Web Services will not onboard new
%% customers to Amazon Elastic Inference (EI), and will help current
%% customers migrate their workloads to options that offer better price and
%% performance. After April 15, 2023, new customers will not be able to
%% launch instances with Amazon EI accelerators in Amazon SageMaker, Amazon
%% ECS, or Amazon EC2. However, customers who have used Amazon EI at least
%% once during the past 30-day period are considered current customers and
%% will be able to continue using the service.
%%
%% Alternatively, you can use `RunTask' to place tasks for you. For more
%% information, see Scheduling Tasks in the Amazon Elastic Container Service
%% Developer Guide.
start_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_task(Client, Input, []).
start_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTask">>, Input, Options).

%% @doc Stops a running task.
%%
%% Any tags associated with the task will be deleted.
%%
%% When `StopTask' is called on a task, the equivalent of `docker
%% stop' is issued to the containers running in the task. This results in
%% a `SIGTERM' value and a default 30-second timeout, after which the
%% `SIGKILL' value is sent and the containers are forcibly stopped. If
%% the container handles the `SIGTERM' value gracefully and exits within
%% 30 seconds from receiving it, no `SIGKILL' value is sent.
%%
%% The default 30-second timeout can be configured on the Amazon ECS
%% container agent with the `ECS_CONTAINER_STOP_TIMEOUT' variable. For
%% more information, see Amazon ECS Container Agent Configuration in the
%% Amazon Elastic Container Service Developer Guide.
stop_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_task(Client, Input, []).
stop_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTask">>, Input, Options).

%% @doc This action is only used by the Amazon ECS agent, and it is not
%% intended for use outside of the agent.
%%
%% Sent to acknowledge that an attachment changed states.
submit_attachment_state_changes(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_attachment_state_changes(Client, Input, []).
submit_attachment_state_changes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubmitAttachmentStateChanges">>, Input, Options).

%% @doc This action is only used by the Amazon ECS agent, and it is not
%% intended for use outside of the agent.
%%
%% Sent to acknowledge that a container changed states.
submit_container_state_change(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_container_state_change(Client, Input, []).
submit_container_state_change(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubmitContainerStateChange">>, Input, Options).

%% @doc This action is only used by the Amazon ECS agent, and it is not
%% intended for use outside of the agent.
%%
%% Sent to acknowledge that a task changed states.
submit_task_state_change(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_task_state_change(Client, Input, []).
submit_task_state_change(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubmitTaskStateChange">>, Input, Options).

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn'.
%%
%% If existing tags on a resource aren't specified in the request
%% parameters, they aren't changed. When a resource is deleted, the tags
%% that are associated with that resource are deleted as well.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes specified tags from a resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Modifies the parameters for a capacity provider.
update_capacity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_capacity_provider(Client, Input, []).
update_capacity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCapacityProvider">>, Input, Options).

%% @doc Updates the cluster.
update_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cluster(Client, Input, []).
update_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCluster">>, Input, Options).

%% @doc Modifies the settings to use for a cluster.
update_cluster_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cluster_settings(Client, Input, []).
update_cluster_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateClusterSettings">>, Input, Options).

%% @doc Updates the Amazon ECS container agent on a specified container
%% instance.
%%
%% Updating the Amazon ECS container agent doesn't interrupt running
%% tasks or services on the container instance. The process for updating the
%% agent differs depending on whether your container instance was launched
%% with the Amazon ECS-optimized AMI or another operating system.
%%
%% The `UpdateContainerAgent' API isn't supported for container
%% instances using the Amazon ECS-optimized Amazon Linux 2 (arm64) AMI. To
%% update the container agent, you can update the `ecs-init' package.
%% This updates the agent. For more information, see Updating the Amazon ECS
%% container agent in the Amazon Elastic Container Service Developer Guide.
%%
%% Agent updates with the `UpdateContainerAgent' API operation do not
%% apply to Windows container instances. We recommend that you launch new
%% container instances to update the agent version in your Windows clusters.
%%
%% The `UpdateContainerAgent' API requires an Amazon ECS-optimized AMI or
%% Amazon Linux AMI with the `ecs-init' service installed and running.
%% For help updating the Amazon ECS container agent on other operating
%% systems, see Manually updating the Amazon ECS container agent in the
%% Amazon Elastic Container Service Developer Guide.
update_container_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_container_agent(Client, Input, []).
update_container_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContainerAgent">>, Input, Options).

%% @doc Modifies the status of an Amazon ECS container instance.
%%
%% Once a container instance has reached an `ACTIVE' state, you can
%% change the status of a container instance to `DRAINING' to manually
%% remove an instance from a cluster, for example to perform system updates,
%% update the Docker daemon, or scale down the cluster size.
%%
%% A container instance can't be changed to `DRAINING' until it has
%% reached an `ACTIVE' status. If the instance is in any other status, an
%% error will be received.
%%
%% When you set a container instance to `DRAINING', Amazon ECS prevents
%% new tasks from being scheduled for placement on the container instance and
%% replacement service tasks are started on other container instances in the
%% cluster if the resources are available. Service tasks on the container
%% instance that are in the `PENDING' state are stopped immediately.
%%
%% Service tasks on the container instance that are in the `RUNNING'
%% state are stopped and replaced according to the service's deployment
%% configuration parameters, `minimumHealthyPercent' and
%% `maximumPercent'. You can change the deployment configuration of your
%% service using `UpdateService'.
%%
%% <ul> <li> If `minimumHealthyPercent' is below 100%, the scheduler can
%% ignore `desiredCount' temporarily during task replacement. For
%% example, `desiredCount' is four tasks, a minimum of 50% allows the
%% scheduler to stop two existing tasks before starting two new tasks. If the
%% minimum is 100%, the service scheduler can't remove existing tasks
%% until the replacement tasks are considered healthy. Tasks for services
%% that do not use a load balancer are considered healthy if they're in
%% the `RUNNING' state. Tasks for services that use a load balancer are
%% considered healthy if they're in the `RUNNING' state and are
%% reported as healthy by the load balancer.
%%
%% </li> <li> The `maximumPercent' parameter represents an upper limit on
%% the number of running tasks during task replacement. You can use this to
%% define the replacement batch size. For example, if `desiredCount' is
%% four tasks, a maximum of 200% starts four new tasks before stopping the
%% four tasks to be drained, provided that the cluster resources required to
%% do this are available. If the maximum is 100%, then replacement tasks
%% can't start until the draining tasks have stopped.
%%
%% </li> </ul> Any `PENDING' or `RUNNING' tasks that do not belong to
%% a service aren't affected. You must wait for them to finish or stop
%% them manually.
%%
%% A container instance has completed draining when it has no more
%% `RUNNING' tasks. You can verify this using `ListTasks'.
%%
%% When a container instance has been drained, you can set a container
%% instance to `ACTIVE' status and once it has reached that status the
%% Amazon ECS scheduler can begin scheduling tasks on the instance again.
update_container_instances_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_container_instances_state(Client, Input, []).
update_container_instances_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContainerInstancesState">>, Input, Options).

%% @doc Modifies the parameters of a service.
%%
%% For services using the rolling update (`ECS') you can update the
%% desired count, deployment configuration, network configuration, load
%% balancers, service registries, enable ECS managed tags option, propagate
%% tags option, task placement constraints and strategies, and task
%% definition. When you update any of these parameters, Amazon ECS starts new
%% tasks with the new configuration.
%%
%% For services using the blue/green (`CODE_DEPLOY') deployment
%% controller, only the desired count, deployment configuration, health check
%% grace period, task placement constraints and strategies, enable ECS
%% managed tags option, and propagate tags can be updated using this API. If
%% the network configuration, platform version, task definition, or load
%% balancer need to be updated, create a new CodeDeploy deployment. For more
%% information, see CreateDeployment in the CodeDeploy API Reference.
%%
%% For services using an external deployment controller, you can update only
%% the desired count, task placement constraints and strategies, health check
%% grace period, enable ECS managed tags option, and propagate tags option,
%% using this API. If the launch type, load balancer, network configuration,
%% platform version, or task definition need to be updated, create a new task
%% set For more information, see `CreateTaskSet'.
%%
%% You can add to or subtract from the number of instantiations of a task
%% definition in a service by specifying the cluster that the service is
%% running in and a new `desiredCount' parameter.
%%
%% If you have updated the Docker image of your application, you can create a
%% new task definition with that image and deploy it to your service. The
%% service scheduler uses the minimum healthy percent and maximum percent
%% parameters (in the service's deployment configuration) to determine
%% the deployment strategy.
%%
%% If your updated Docker image uses the same tag as what is in the existing
%% task definition for your service (for example, `my_image:latest'), you
%% don't need to create a new revision of your task definition. You can
%% update the service using the `forceNewDeployment' option. The new
%% tasks launched by the deployment pull the current image/tag combination
%% from your repository when they start.
%%
%% You can also update the deployment configuration of a service. When a
%% deployment is triggered by updating the task definition of a service, the
%% service scheduler uses the deployment configuration parameters,
%% `minimumHealthyPercent' and `maximumPercent', to determine the
%% deployment strategy.
%%
%% <ul> <li> If `minimumHealthyPercent' is below 100%, the scheduler can
%% ignore `desiredCount' temporarily during a deployment. For example, if
%% `desiredCount' is four tasks, a minimum of 50% allows the scheduler to
%% stop two existing tasks before starting two new tasks. Tasks for services
%% that don't use a load balancer are considered healthy if they're
%% in the `RUNNING' state. Tasks for services that use a load balancer
%% are considered healthy if they're in the `RUNNING' state and are
%% reported as healthy by the load balancer.
%%
%% </li> <li> The `maximumPercent' parameter represents an upper limit on
%% the number of running tasks during a deployment. You can use it to define
%% the deployment batch size. For example, if `desiredCount' is four
%% tasks, a maximum of 200% starts four new tasks before stopping the four
%% older tasks (provided that the cluster resources required to do this are
%% available).
%%
%% </li> </ul> When `UpdateService' stops a task during a deployment, the
%% equivalent of `docker stop' is issued to the containers running in the
%% task. This results in a `SIGTERM' and a 30-second timeout. After this,
%% `SIGKILL' is sent and the containers are forcibly stopped. If the
%% container handles the `SIGTERM' gracefully and exits within 30 seconds
%% from receiving it, no `SIGKILL' is sent.
%%
%% When the service scheduler launches new tasks, it determines task
%% placement in your cluster with the following logic.
%%
%% <ul> <li> Determine which of the container instances in your cluster can
%% support your service's task definition. For example, they have the
%% required CPU, memory, ports, and container instance attributes.
%%
%% </li> <li> By default, the service scheduler attempts to balance tasks
%% across Availability Zones in this manner even though you can choose a
%% different placement strategy.
%%
%% <ul> <li> Sort the valid container instances by the fewest number of
%% running tasks for this service in the same Availability Zone as the
%% instance. For example, if zone A has one running service task and zones B
%% and C each have zero, valid container instances in either zone B or C are
%% considered optimal for placement.
%%
%% </li> <li> Place the new service task on a valid container instance in an
%% optimal Availability Zone (based on the previous steps), favoring
%% container instances with the fewest number of running tasks for this
%% service.
%%
%% </li> </ul> </li> </ul> When the service scheduler stops running tasks, it
%% attempts to maintain balance across the Availability Zones in your cluster
%% using the following logic:
%%
%% <ul> <li> Sort the container instances by the largest number of running
%% tasks for this service in the same Availability Zone as the instance. For
%% example, if zone A has one running service task and zones B and C each
%% have two, container instances in either zone B or C are considered optimal
%% for termination.
%%
%% </li> <li> Stop the task on a container instance in an optimal
%% Availability Zone (based on the previous steps), favoring container
%% instances with the largest number of running tasks for this service.
%%
%% </li> </ul> You must have a service-linked role when you update any of the
%% following service properties:
%%
%% `loadBalancers',
%%
%% `serviceRegistries'
%%
%% For more information about the role see the `CreateService' request
%% parameter `role' .
update_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service(Client, Input, []).
update_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateService">>, Input, Options).

%% @doc Modifies which task set in a service is the primary task set.
%%
%% Any parameters that are updated on the primary task set in a service will
%% transition to the service. This is used when a service uses the
%% `EXTERNAL' deployment controller type. For more information, see
%% Amazon ECS Deployment Types in the Amazon Elastic Container Service
%% Developer Guide.
update_service_primary_task_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_primary_task_set(Client, Input, []).
update_service_primary_task_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServicePrimaryTaskSet">>, Input, Options).

%% @doc Updates the protection status of a task.
%%
%% You can set `protectionEnabled' to `true' to protect your task
%% from termination during scale-in events from Service Autoscaling or
%% deployments.
%%
%% Task-protection, by default, expires after 2 hours at which point Amazon
%% ECS clears the `protectionEnabled' property making the task eligible
%% for termination by a subsequent scale-in event.
%%
%% You can specify a custom expiration period for task protection from 1
%% minute to up to 2,880 minutes (48 hours). To specify the custom expiration
%% period, set the `expiresInMinutes' property. The
%% `expiresInMinutes' property is always reset when you invoke this
%% operation for a task that already has `protectionEnabled' set to
%% `true'. You can keep extending the protection expiration period of a
%% task by invoking this operation repeatedly.
%%
%% To learn more about Amazon ECS task protection, see Task scale-in
%% protection in the Amazon Elastic Container Service Developer Guide .
%%
%% This operation is only supported for tasks belonging to an Amazon ECS
%% service. Invoking this operation for a standalone task will result in an
%% `TASK_NOT_VALID' failure. For more information, see API failure
%% reasons.
%%
%% If you prefer to set task protection from within the container, we
%% recommend using the Task scale-in protection endpoint.
update_task_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_task_protection(Client, Input, []).
update_task_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTaskProtection">>, Input, Options).

%% @doc Modifies a task set.
%%
%% This is used when a service uses the `EXTERNAL' deployment controller
%% type. For more information, see Amazon ECS Deployment Types in the Amazon
%% Elastic Container Service Developer Guide.
update_task_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_task_set(Client, Input, []).
update_task_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTaskSet">>, Input, Options).

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
    Client1 = Client#{service => <<"ecs">>},
    Host = build_host(<<"ecs">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonEC2ContainerServiceV20141113.", Action/binary>>}
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
