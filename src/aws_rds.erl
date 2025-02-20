%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Relational Database Service
%%
%% Amazon Relational Database Service (Amazon RDS) is a web service that
%% makes it easier to set up, operate, and scale a relational database in the
%% cloud.
%%
%% It provides cost-efficient, resizeable capacity for an industry-standard
%% relational database and manages common database administration tasks,
%% freeing up developers to focus on what makes their applications and
%% businesses unique.
%%
%% Amazon RDS gives you access to the capabilities of a MySQL, MariaDB,
%% PostgreSQL, Microsoft SQL Server, Oracle, or Amazon Aurora database
%% server. These capabilities mean that the code, applications, and tools you
%% already use today with your existing databases work with Amazon RDS
%% without modification. Amazon RDS automatically backs up your database and
%% maintains the database software that powers your DB instance. Amazon RDS
%% is flexible: you can scale your DB instance's compute resources and
%% storage capacity to meet your application's demand. As with all Amazon
%% Web Services, there are no up-front investments, and you pay only for the
%% resources you use.
%%
%% This interface reference for Amazon RDS contains documentation for a
%% programming or command line interface you can use to manage Amazon RDS.
%% Amazon RDS is asynchronous, which means that some interfaces might require
%% techniques such as polling or callback functions to determine when a
%% command has been applied. In this reference, the parameter descriptions
%% indicate whether a command is applied immediately, on the next instance
%% reboot, or during the maintenance window. The reference structure is as
%% follows, and we list following some related topics from the user guide.
%%
%% Amazon RDS API Reference
%%
%% <ul> <li> For the alphabetical list of API actions, see API Actions.
%%
%% </li> <li> For the alphabetical list of data types, see Data Types.
%%
%% </li> <li> For a list of common query parameters, see Common Parameters.
%%
%% </li> <li> For descriptions of the error codes, see Common Errors.
%%
%% </li> </ul> Amazon RDS User Guide
%%
%% <ul> <li> For a summary of the Amazon RDS interfaces, see Available RDS
%% Interfaces.
%%
%% </li> <li> For more information about how to use the Query API, see Using
%% the Query API.
%%
%% </li> </ul>
-module(aws_rds).

-export([add_role_to_db_cluster/2,
         add_role_to_db_cluster/3,
         add_role_to_db_instance/2,
         add_role_to_db_instance/3,
         add_source_identifier_to_subscription/2,
         add_source_identifier_to_subscription/3,
         add_tags_to_resource/2,
         add_tags_to_resource/3,
         apply_pending_maintenance_action/2,
         apply_pending_maintenance_action/3,
         authorize_db_security_group_ingress/2,
         authorize_db_security_group_ingress/3,
         backtrack_db_cluster/2,
         backtrack_db_cluster/3,
         cancel_export_task/2,
         cancel_export_task/3,
         copy_db_cluster_parameter_group/2,
         copy_db_cluster_parameter_group/3,
         copy_db_cluster_snapshot/2,
         copy_db_cluster_snapshot/3,
         copy_db_parameter_group/2,
         copy_db_parameter_group/3,
         copy_db_snapshot/2,
         copy_db_snapshot/3,
         copy_option_group/2,
         copy_option_group/3,
         create_blue_green_deployment/2,
         create_blue_green_deployment/3,
         create_custom_db_engine_version/2,
         create_custom_db_engine_version/3,
         create_db_cluster/2,
         create_db_cluster/3,
         create_db_cluster_endpoint/2,
         create_db_cluster_endpoint/3,
         create_db_cluster_parameter_group/2,
         create_db_cluster_parameter_group/3,
         create_db_cluster_snapshot/2,
         create_db_cluster_snapshot/3,
         create_db_instance/2,
         create_db_instance/3,
         create_db_instance_read_replica/2,
         create_db_instance_read_replica/3,
         create_db_parameter_group/2,
         create_db_parameter_group/3,
         create_db_proxy/2,
         create_db_proxy/3,
         create_db_proxy_endpoint/2,
         create_db_proxy_endpoint/3,
         create_db_security_group/2,
         create_db_security_group/3,
         create_db_snapshot/2,
         create_db_snapshot/3,
         create_db_subnet_group/2,
         create_db_subnet_group/3,
         create_event_subscription/2,
         create_event_subscription/3,
         create_global_cluster/2,
         create_global_cluster/3,
         create_option_group/2,
         create_option_group/3,
         delete_blue_green_deployment/2,
         delete_blue_green_deployment/3,
         delete_custom_db_engine_version/2,
         delete_custom_db_engine_version/3,
         delete_db_cluster/2,
         delete_db_cluster/3,
         delete_db_cluster_automated_backup/2,
         delete_db_cluster_automated_backup/3,
         delete_db_cluster_endpoint/2,
         delete_db_cluster_endpoint/3,
         delete_db_cluster_parameter_group/2,
         delete_db_cluster_parameter_group/3,
         delete_db_cluster_snapshot/2,
         delete_db_cluster_snapshot/3,
         delete_db_instance/2,
         delete_db_instance/3,
         delete_db_instance_automated_backup/2,
         delete_db_instance_automated_backup/3,
         delete_db_parameter_group/2,
         delete_db_parameter_group/3,
         delete_db_proxy/2,
         delete_db_proxy/3,
         delete_db_proxy_endpoint/2,
         delete_db_proxy_endpoint/3,
         delete_db_security_group/2,
         delete_db_security_group/3,
         delete_db_snapshot/2,
         delete_db_snapshot/3,
         delete_db_subnet_group/2,
         delete_db_subnet_group/3,
         delete_event_subscription/2,
         delete_event_subscription/3,
         delete_global_cluster/2,
         delete_global_cluster/3,
         delete_option_group/2,
         delete_option_group/3,
         deregister_db_proxy_targets/2,
         deregister_db_proxy_targets/3,
         describe_account_attributes/2,
         describe_account_attributes/3,
         describe_blue_green_deployments/2,
         describe_blue_green_deployments/3,
         describe_certificates/2,
         describe_certificates/3,
         describe_db_cluster_automated_backups/2,
         describe_db_cluster_automated_backups/3,
         describe_db_cluster_backtracks/2,
         describe_db_cluster_backtracks/3,
         describe_db_cluster_endpoints/2,
         describe_db_cluster_endpoints/3,
         describe_db_cluster_parameter_groups/2,
         describe_db_cluster_parameter_groups/3,
         describe_db_cluster_parameters/2,
         describe_db_cluster_parameters/3,
         describe_db_cluster_snapshot_attributes/2,
         describe_db_cluster_snapshot_attributes/3,
         describe_db_cluster_snapshots/2,
         describe_db_cluster_snapshots/3,
         describe_db_clusters/2,
         describe_db_clusters/3,
         describe_db_engine_versions/2,
         describe_db_engine_versions/3,
         describe_db_instance_automated_backups/2,
         describe_db_instance_automated_backups/3,
         describe_db_instances/2,
         describe_db_instances/3,
         describe_db_log_files/2,
         describe_db_log_files/3,
         describe_db_parameter_groups/2,
         describe_db_parameter_groups/3,
         describe_db_parameters/2,
         describe_db_parameters/3,
         describe_db_proxies/2,
         describe_db_proxies/3,
         describe_db_proxy_endpoints/2,
         describe_db_proxy_endpoints/3,
         describe_db_proxy_target_groups/2,
         describe_db_proxy_target_groups/3,
         describe_db_proxy_targets/2,
         describe_db_proxy_targets/3,
         describe_db_security_groups/2,
         describe_db_security_groups/3,
         describe_db_snapshot_attributes/2,
         describe_db_snapshot_attributes/3,
         describe_db_snapshots/2,
         describe_db_snapshots/3,
         describe_db_subnet_groups/2,
         describe_db_subnet_groups/3,
         describe_engine_default_cluster_parameters/2,
         describe_engine_default_cluster_parameters/3,
         describe_engine_default_parameters/2,
         describe_engine_default_parameters/3,
         describe_event_categories/2,
         describe_event_categories/3,
         describe_event_subscriptions/2,
         describe_event_subscriptions/3,
         describe_events/2,
         describe_events/3,
         describe_export_tasks/2,
         describe_export_tasks/3,
         describe_global_clusters/2,
         describe_global_clusters/3,
         describe_option_group_options/2,
         describe_option_group_options/3,
         describe_option_groups/2,
         describe_option_groups/3,
         describe_orderable_db_instance_options/2,
         describe_orderable_db_instance_options/3,
         describe_pending_maintenance_actions/2,
         describe_pending_maintenance_actions/3,
         describe_reserved_db_instances/2,
         describe_reserved_db_instances/3,
         describe_reserved_db_instances_offerings/2,
         describe_reserved_db_instances_offerings/3,
         describe_source_regions/2,
         describe_source_regions/3,
         describe_valid_db_instance_modifications/2,
         describe_valid_db_instance_modifications/3,
         download_db_log_file_portion/2,
         download_db_log_file_portion/3,
         failover_db_cluster/2,
         failover_db_cluster/3,
         failover_global_cluster/2,
         failover_global_cluster/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_activity_stream/2,
         modify_activity_stream/3,
         modify_certificates/2,
         modify_certificates/3,
         modify_current_db_cluster_capacity/2,
         modify_current_db_cluster_capacity/3,
         modify_custom_db_engine_version/2,
         modify_custom_db_engine_version/3,
         modify_db_cluster/2,
         modify_db_cluster/3,
         modify_db_cluster_endpoint/2,
         modify_db_cluster_endpoint/3,
         modify_db_cluster_parameter_group/2,
         modify_db_cluster_parameter_group/3,
         modify_db_cluster_snapshot_attribute/2,
         modify_db_cluster_snapshot_attribute/3,
         modify_db_instance/2,
         modify_db_instance/3,
         modify_db_parameter_group/2,
         modify_db_parameter_group/3,
         modify_db_proxy/2,
         modify_db_proxy/3,
         modify_db_proxy_endpoint/2,
         modify_db_proxy_endpoint/3,
         modify_db_proxy_target_group/2,
         modify_db_proxy_target_group/3,
         modify_db_snapshot/2,
         modify_db_snapshot/3,
         modify_db_snapshot_attribute/2,
         modify_db_snapshot_attribute/3,
         modify_db_subnet_group/2,
         modify_db_subnet_group/3,
         modify_event_subscription/2,
         modify_event_subscription/3,
         modify_global_cluster/2,
         modify_global_cluster/3,
         modify_option_group/2,
         modify_option_group/3,
         promote_read_replica/2,
         promote_read_replica/3,
         promote_read_replica_db_cluster/2,
         promote_read_replica_db_cluster/3,
         purchase_reserved_db_instances_offering/2,
         purchase_reserved_db_instances_offering/3,
         reboot_db_cluster/2,
         reboot_db_cluster/3,
         reboot_db_instance/2,
         reboot_db_instance/3,
         register_db_proxy_targets/2,
         register_db_proxy_targets/3,
         remove_from_global_cluster/2,
         remove_from_global_cluster/3,
         remove_role_from_db_cluster/2,
         remove_role_from_db_cluster/3,
         remove_role_from_db_instance/2,
         remove_role_from_db_instance/3,
         remove_source_identifier_from_subscription/2,
         remove_source_identifier_from_subscription/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         reset_db_cluster_parameter_group/2,
         reset_db_cluster_parameter_group/3,
         reset_db_parameter_group/2,
         reset_db_parameter_group/3,
         restore_db_cluster_from_s3/2,
         restore_db_cluster_from_s3/3,
         restore_db_cluster_from_snapshot/2,
         restore_db_cluster_from_snapshot/3,
         restore_db_cluster_to_point_in_time/2,
         restore_db_cluster_to_point_in_time/3,
         restore_db_instance_from_db_snapshot/2,
         restore_db_instance_from_db_snapshot/3,
         restore_db_instance_from_s3/2,
         restore_db_instance_from_s3/3,
         restore_db_instance_to_point_in_time/2,
         restore_db_instance_to_point_in_time/3,
         revoke_db_security_group_ingress/2,
         revoke_db_security_group_ingress/3,
         start_activity_stream/2,
         start_activity_stream/3,
         start_db_cluster/2,
         start_db_cluster/3,
         start_db_instance/2,
         start_db_instance/3,
         start_db_instance_automated_backups_replication/2,
         start_db_instance_automated_backups_replication/3,
         start_export_task/2,
         start_export_task/3,
         stop_activity_stream/2,
         stop_activity_stream/3,
         stop_db_cluster/2,
         stop_db_cluster/3,
         stop_db_instance/2,
         stop_db_instance/3,
         stop_db_instance_automated_backups_replication/2,
         stop_db_instance_automated_backups_replication/3,
         switchover_blue_green_deployment/2,
         switchover_blue_green_deployment/3,
         switchover_global_cluster/2,
         switchover_global_cluster/3,
         switchover_read_replica/2,
         switchover_read_replica/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an Identity and Access Management (IAM) role with a DB
%% cluster.
add_role_to_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_role_to_db_cluster(Client, Input, []).
add_role_to_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddRoleToDBCluster">>, Input, Options).

%% @doc Associates an Amazon Web Services Identity and Access Management
%% (IAM) role with a DB instance.
%%
%% To add a role to a DB instance, the status of the DB instance must be
%% `available'.
%%
%% This command doesn't apply to RDS Custom.
add_role_to_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_role_to_db_instance(Client, Input, []).
add_role_to_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddRoleToDBInstance">>, Input, Options).

%% @doc Adds a source identifier to an existing RDS event notification
%% subscription.
add_source_identifier_to_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_source_identifier_to_subscription(Client, Input, []).
add_source_identifier_to_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddSourceIdentifierToSubscription">>, Input, Options).

%% @doc Adds metadata tags to an Amazon RDS resource.
%%
%% These tags can also be used with cost allocation reporting to track cost
%% associated with Amazon RDS resources, or used in a Condition statement in
%% an IAM policy for Amazon RDS.
%%
%% For an overview on tagging Amazon RDS resources, see Tagging Amazon RDS
%% Resources.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Applies a pending maintenance action to a resource (for example, to a
%% DB instance).
apply_pending_maintenance_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    apply_pending_maintenance_action(Client, Input, []).
apply_pending_maintenance_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApplyPendingMaintenanceAction">>, Input, Options).

%% @doc Enables ingress to a DBSecurityGroup using one of two forms of
%% authorization.
%%
%% First, EC2 or VPC security groups can be added to the DBSecurityGroup if
%% the application using the database is running on EC2 or VPC instances.
%% Second, IP ranges are available if the application accessing your database
%% is running on the internet. Required parameters for this API are one of
%% CIDR range, EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and
%% either EC2SecurityGroupName or EC2SecurityGroupId for non-VPC).
%%
%% You can't authorize ingress from an EC2 security group in one Amazon
%% Web Services Region to an Amazon RDS DB instance in another. You can't
%% authorize ingress from a VPC security group in one VPC to an Amazon RDS DB
%% instance in another.
%%
%% For an overview of CIDR ranges, go to the Wikipedia Tutorial.
%%
%% EC2-Classic was retired on August 15, 2022. If you haven't migrated
%% from EC2-Classic to a VPC, we recommend that you migrate as soon as
%% possible. For more information, see Migrate from EC2-Classic to a VPC in
%% the Amazon EC2 User Guide, the blog EC2-Classic Networking is Retiring –
%% Here’s How to Prepare, and Moving a DB instance not in a VPC into a VPC in
%% the Amazon RDS User Guide.
authorize_db_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_db_security_group_ingress(Client, Input, []).
authorize_db_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeDBSecurityGroupIngress">>, Input, Options).

%% @doc Backtracks a DB cluster to a specific time, without creating a new DB
%% cluster.
%%
%% For more information on backtracking, see Backtracking an Aurora DB
%% Cluster in the Amazon Aurora User Guide.
%%
%% This action applies only to Aurora MySQL DB clusters.
backtrack_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    backtrack_db_cluster(Client, Input, []).
backtrack_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BacktrackDBCluster">>, Input, Options).

%% @doc Cancels an export task in progress that is exporting a snapshot or
%% cluster to Amazon S3.
%%
%% Any data that has already been written to the S3 bucket isn't removed.
cancel_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_export_task(Client, Input, []).
cancel_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelExportTask">>, Input, Options).

%% @doc Copies the specified DB cluster parameter group.
copy_db_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_db_cluster_parameter_group(Client, Input, []).
copy_db_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyDBClusterParameterGroup">>, Input, Options).

%% @doc Copies a snapshot of a DB cluster.
%%
%% To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
%% `SourceDBClusterSnapshotIdentifier' must be the Amazon Resource Name
%% (ARN) of the shared DB cluster snapshot.
%%
%% You can copy an encrypted DB cluster snapshot from another Amazon Web
%% Services Region. In that case, the Amazon Web Services Region where you
%% call the `CopyDBClusterSnapshot' operation is the destination Amazon
%% Web Services Region for the encrypted DB cluster snapshot to be copied to.
%% To copy an encrypted DB cluster snapshot from another Amazon Web Services
%% Region, you must provide the following values:
%%
%% <ul> <li> `KmsKeyId' - The Amazon Web Services Key Management System
%% (Amazon Web Services KMS) key identifier for the key to use to encrypt the
%% copy of the DB cluster snapshot in the destination Amazon Web Services
%% Region.
%%
%% </li> <li> `TargetDBClusterSnapshotIdentifier' - The identifier for
%% the new copy of the DB cluster snapshot in the destination Amazon Web
%% Services Region.
%%
%% </li> <li> `SourceDBClusterSnapshotIdentifier' - The DB cluster
%% snapshot identifier for the encrypted DB cluster snapshot to be copied.
%% This identifier must be in the ARN format for the source Amazon Web
%% Services Region and is the same value as the
%% `SourceDBClusterSnapshotIdentifier' in the presigned URL.
%%
%% </li> </ul> To cancel the copy operation once it is in progress, delete
%% the target DB cluster snapshot identified by
%% `TargetDBClusterSnapshotIdentifier' while that DB cluster snapshot is
%% in &quot;copying&quot; status.
%%
%% For more information on copying encrypted Amazon Aurora DB cluster
%% snapshots from one Amazon Web Services Region to another, see Copying a
%% Snapshot in the Amazon Aurora User Guide.
%%
%% For more information on Amazon Aurora DB clusters, see What is Amazon
%% Aurora? in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
copy_db_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_db_cluster_snapshot(Client, Input, []).
copy_db_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyDBClusterSnapshot">>, Input, Options).

%% @doc Copies the specified DB parameter group.
copy_db_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_db_parameter_group(Client, Input, []).
copy_db_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyDBParameterGroup">>, Input, Options).

%% @doc Copies the specified DB snapshot.
%%
%% The source DB snapshot must be in the `available' state.
%%
%% You can copy a snapshot from one Amazon Web Services Region to another. In
%% that case, the Amazon Web Services Region where you call the
%% `CopyDBSnapshot' operation is the destination Amazon Web Services
%% Region for the DB snapshot copy.
%%
%% This command doesn't apply to RDS Custom.
%%
%% For more information about copying snapshots, see Copying a DB Snapshot in
%% the Amazon RDS User Guide.
copy_db_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_db_snapshot(Client, Input, []).
copy_db_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyDBSnapshot">>, Input, Options).

%% @doc Copies the specified option group.
copy_option_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_option_group(Client, Input, []).
copy_option_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyOptionGroup">>, Input, Options).

%% @doc Creates a blue/green deployment.
%%
%% A blue/green deployment creates a staging environment that copies the
%% production environment. In a blue/green deployment, the blue environment
%% is the current production environment. The green environment is the
%% staging environment. The staging environment stays in sync with the
%% current production environment using logical replication.
%%
%% You can make changes to the databases in the green environment without
%% affecting production workloads. For example, you can upgrade the major or
%% minor DB engine version, change database parameters, or make schema
%% changes in the staging environment. You can thoroughly test changes in the
%% green environment. When ready, you can switch over the environments to
%% promote the green environment to be the new production environment. The
%% switchover typically takes under a minute.
%%
%% For more information, see Using Amazon RDS Blue/Green Deployments for
%% database updates in the Amazon RDS User Guide and Using Amazon RDS
%% Blue/Green Deployments for database updates in the Amazon Aurora User
%% Guide.
create_blue_green_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_blue_green_deployment(Client, Input, []).
create_blue_green_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBlueGreenDeployment">>, Input, Options).

%% @doc Creates a custom DB engine version (CEV).
create_custom_db_engine_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_db_engine_version(Client, Input, []).
create_custom_db_engine_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomDBEngineVersion">>, Input, Options).

%% @doc Creates a new Amazon Aurora DB cluster or Multi-AZ DB cluster.
%%
%% If you create an Aurora DB cluster, the request creates an empty cluster.
%% You must explicitly create the writer instance for your DB cluster using
%% the CreateDBInstance operation. If you create a Multi-AZ DB cluster, the
%% request creates a writer and two reader DB instances for you, each in a
%% different Availability Zone.
%%
%% You can use the `ReplicationSourceIdentifier' parameter to create an
%% Amazon Aurora DB cluster as a read replica of another DB cluster or Amazon
%% RDS for MySQL or PostgreSQL DB instance. For more information about Amazon
%% Aurora, see What is Amazon Aurora? in the Amazon Aurora User Guide.
%%
%% You can also use the `ReplicationSourceIdentifier' parameter to create
%% a Multi-AZ DB cluster read replica with an RDS for MySQL or PostgreSQL DB
%% instance as the source. For more information about Multi-AZ DB clusters,
%% see Multi-AZ DB cluster deployments in the Amazon RDS User Guide.
create_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_cluster(Client, Input, []).
create_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBCluster">>, Input, Options).

%% @doc Creates a new custom endpoint and associates it with an Amazon Aurora
%% DB cluster.
%%
%% This action applies only to Aurora DB clusters.
create_db_cluster_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_cluster_endpoint(Client, Input, []).
create_db_cluster_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBClusterEndpoint">>, Input, Options).

%% @doc Creates a new DB cluster parameter group.
%%
%% Parameters in a DB cluster parameter group apply to all of the instances
%% in a DB cluster.
%%
%% A DB cluster parameter group is initially created with the default
%% parameters for the database engine used by instances in the DB cluster. To
%% provide custom values for any of the parameters, you must modify the group
%% after creating it using `ModifyDBClusterParameterGroup'. Once
%% you've created a DB cluster parameter group, you need to associate it
%% with your DB cluster using `ModifyDBCluster'.
%%
%% When you associate a new DB cluster parameter group with a running Aurora
%% DB cluster, reboot the DB instances in the DB cluster without failover for
%% the new DB cluster parameter group and associated settings to take effect.
%%
%% When you associate a new DB cluster parameter group with a running
%% Multi-AZ DB cluster, reboot the DB cluster without failover for the new DB
%% cluster parameter group and associated settings to take effect.
%%
%% After you create a DB cluster parameter group, you should wait at least 5
%% minutes before creating your first DB cluster that uses that DB cluster
%% parameter group as the default parameter group. This allows Amazon RDS to
%% fully complete the create action before the DB cluster parameter group is
%% used as the default for a new DB cluster. This is especially important for
%% parameters that are critical when creating the default database for a DB
%% cluster, such as the character set for the default database defined by the
%% `character_set_database' parameter. You can use the Parameter Groups
%% option of the Amazon RDS console or the `DescribeDBClusterParameters'
%% operation to verify that your DB cluster parameter group has been created
%% or modified.
%%
%% For more information on Amazon Aurora, see What is Amazon Aurora? in the
%% Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
create_db_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_cluster_parameter_group(Client, Input, []).
create_db_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBClusterParameterGroup">>, Input, Options).

%% @doc Creates a snapshot of a DB cluster.
%%
%% For more information on Amazon Aurora, see What is Amazon Aurora? in the
%% Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
create_db_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_cluster_snapshot(Client, Input, []).
create_db_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBClusterSnapshot">>, Input, Options).

%% @doc Creates a new DB instance.
%%
%% The new DB instance can be an RDS DB instance, or it can be a DB instance
%% in an Aurora DB cluster. For an Aurora DB cluster, you can call this
%% operation multiple times to add more than one DB instance to the cluster.
%%
%% For more information about creating an RDS DB instance, see Creating an
%% Amazon RDS DB instance in the Amazon RDS User Guide.
%%
%% For more information about creating a DB instance in an Aurora DB cluster,
%% see Creating an Amazon Aurora DB cluster in the Amazon Aurora User Guide.
create_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_instance(Client, Input, []).
create_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBInstance">>, Input, Options).

%% @doc Creates a new DB instance that acts as a read replica for an existing
%% source DB instance or Multi-AZ DB cluster.
%%
%% You can create a read replica for a DB instance running MySQL, MariaDB,
%% Oracle, PostgreSQL, or SQL Server. You can create a read replica for a
%% Multi-AZ DB cluster running MySQL or PostgreSQL. For more information, see
%% Working with read replicas and Migrating from a Multi-AZ DB cluster to a
%% DB instance using a read replica in the Amazon RDS User Guide.
%%
%% Amazon Aurora doesn't support this operation. Call the
%% `CreateDBInstance' operation to create a DB instance for an Aurora DB
%% cluster.
%%
%% All read replica DB instances are created with backups disabled. All other
%% attributes (including DB security groups and DB parameter groups) are
%% inherited from the source DB instance or cluster, except as specified.
%%
%% Your source DB instance or cluster must have backup retention enabled.
create_db_instance_read_replica(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_instance_read_replica(Client, Input, []).
create_db_instance_read_replica(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBInstanceReadReplica">>, Input, Options).

%% @doc Creates a new DB parameter group.
%%
%% A DB parameter group is initially created with the default parameters for
%% the database engine used by the DB instance. To provide custom values for
%% any of the parameters, you must modify the group after creating it using
%% `ModifyDBParameterGroup'. Once you've created a DB parameter
%% group, you need to associate it with your DB instance using
%% `ModifyDBInstance'. When you associate a new DB parameter group with a
%% running DB instance, you need to reboot the DB instance without failover
%% for the new DB parameter group and associated settings to take effect.
%%
%% This command doesn't apply to RDS Custom.
%%
%% After you create a DB parameter group, you should wait at least 5 minutes
%% before creating your first DB instance that uses that DB parameter group
%% as the default parameter group. This allows Amazon RDS to fully complete
%% the create action before the parameter group is used as the default for a
%% new DB instance. This is especially important for parameters that are
%% critical when creating the default database for a DB instance, such as the
%% character set for the default database defined by the
%% `character_set_database' parameter. You can use the Parameter Groups
%% option of the Amazon RDS console or the DescribeDBParameters command to
%% verify that your DB parameter group has been created or modified.
create_db_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_parameter_group(Client, Input, []).
create_db_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBParameterGroup">>, Input, Options).

%% @doc Creates a new DB proxy.
create_db_proxy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_proxy(Client, Input, []).
create_db_proxy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBProxy">>, Input, Options).

%% @doc Creates a `DBProxyEndpoint'.
%%
%% Only applies to proxies that are associated with Aurora DB clusters. You
%% can use DB proxy endpoints to specify read/write or read-only access to
%% the DB cluster. You can also use DB proxy endpoints to access a DB proxy
%% through a different VPC than the proxy's default VPC.
create_db_proxy_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_proxy_endpoint(Client, Input, []).
create_db_proxy_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBProxyEndpoint">>, Input, Options).

%% @doc Creates a new DB security group.
%%
%% DB security groups control access to a DB instance.
%%
%% A DB security group controls access to EC2-Classic DB instances that are
%% not in a VPC.
%%
%% EC2-Classic was retired on August 15, 2022. If you haven't migrated
%% from EC2-Classic to a VPC, we recommend that you migrate as soon as
%% possible. For more information, see Migrate from EC2-Classic to a VPC in
%% the Amazon EC2 User Guide, the blog EC2-Classic Networking is Retiring –
%% Here’s How to Prepare, and Moving a DB instance not in a VPC into a VPC in
%% the Amazon RDS User Guide.
create_db_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_security_group(Client, Input, []).
create_db_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBSecurityGroup">>, Input, Options).

%% @doc Creates a snapshot of a DB instance.
%%
%% The source DB instance must be in the `available' or
%% `storage-optimization' state.
create_db_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_snapshot(Client, Input, []).
create_db_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBSnapshot">>, Input, Options).

%% @doc Creates a new DB subnet group.
%%
%% DB subnet groups must contain at least one subnet in at least two AZs in
%% the Amazon Web Services Region.
create_db_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_subnet_group(Client, Input, []).
create_db_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBSubnetGroup">>, Input, Options).

%% @doc Creates an RDS event notification subscription.
%%
%% This operation requires a topic Amazon Resource Name (ARN) created by
%% either the RDS console, the SNS console, or the SNS API. To obtain an ARN
%% with SNS, you must create a topic in Amazon SNS and subscribe to the
%% topic. The ARN is displayed in the SNS console.
%%
%% You can specify the type of source (`SourceType') that you want to be
%% notified of and provide a list of RDS sources (`SourceIds') that
%% triggers the events. You can also provide a list of event categories
%% (`EventCategories') for events that you want to be notified of. For
%% example, you can specify `SourceType' = `db-instance',
%% `SourceIds' = `mydbinstance1', `mydbinstance2' and
%% `EventCategories' = `Availability', `Backup'.
%%
%% If you specify both the `SourceType' and `SourceIds', such as
%% `SourceType' = `db-instance' and `SourceIds' =
%% `myDBInstance1', you are notified of all the `db-instance' events
%% for the specified source. If you specify a `SourceType' but do not
%% specify `SourceIds', you receive notice of the events for that source
%% type for all your RDS sources. If you don't specify either the
%% SourceType or the `SourceIds', you are notified of events generated
%% from all RDS sources belonging to your customer account.
%%
%% For more information about subscribing to an event for RDS DB engines, see
%% Subscribing to Amazon RDS event notification in the Amazon RDS User Guide.
%%
%% For more information about subscribing to an event for Aurora DB engines,
%% see Subscribing to Amazon RDS event notification in the Amazon Aurora User
%% Guide.
create_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_subscription(Client, Input, []).
create_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventSubscription">>, Input, Options).

%% @doc Creates an Aurora global database spread across multiple Amazon Web
%% Services Regions.
%%
%% The global database contains a single primary cluster with read-write
%% capability, and a read-only secondary cluster that receives data from the
%% primary cluster through high-speed replication performed by the Aurora
%% storage subsystem.
%%
%% You can create a global database that is initially empty, and then create
%% the primary and secondary DB clusters in the global database. Or you can
%% specify an existing Aurora cluster during the create operation, and this
%% cluster becomes the primary cluster of the global database.
%%
%% This operation applies only to Aurora DB clusters.
create_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_global_cluster(Client, Input, []).
create_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGlobalCluster">>, Input, Options).

%% @doc Creates a new option group.
%%
%% You can create up to 20 option groups.
%%
%% This command doesn't apply to RDS Custom.
create_option_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_option_group(Client, Input, []).
create_option_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOptionGroup">>, Input, Options).

%% @doc Deletes a blue/green deployment.
%%
%% For more information, see Using Amazon RDS Blue/Green Deployments for
%% database updates in the Amazon RDS User Guide and Using Amazon RDS
%% Blue/Green Deployments for database updates in the Amazon Aurora User
%% Guide.
delete_blue_green_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_blue_green_deployment(Client, Input, []).
delete_blue_green_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBlueGreenDeployment">>, Input, Options).

%% @doc Deletes a custom engine version.
%%
%% To run this command, make sure you meet the following prerequisites:
%%
%% <ul> <li> The CEV must not be the default for RDS Custom. If it is, change
%% the default before running this command.
%%
%% </li> <li> The CEV must not be associated with an RDS Custom DB instance,
%% RDS Custom instance snapshot, or automated backup of your RDS Custom
%% instance.
%%
%% </li> </ul> Typically, deletion takes a few minutes.
%%
%% The MediaImport service that imports files from Amazon S3 to create CEVs
%% isn't integrated with Amazon Web Services CloudTrail. If you turn on
%% data logging for Amazon RDS in CloudTrail, calls to the
%% `DeleteCustomDbEngineVersion' event aren't logged. However, you
%% might see calls from the API gateway that accesses your Amazon S3 bucket.
%% These calls originate from the MediaImport service for the
%% `DeleteCustomDbEngineVersion' event.
%%
%% For more information, see Deleting a CEV in the Amazon RDS User Guide.
delete_custom_db_engine_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_db_engine_version(Client, Input, []).
delete_custom_db_engine_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomDBEngineVersion">>, Input, Options).

%% @doc The DeleteDBCluster action deletes a previously provisioned DB
%% cluster.
%%
%% When you delete a DB cluster, all automated backups for that DB cluster
%% are deleted and can't be recovered. Manual DB cluster snapshots of the
%% specified DB cluster are not deleted.
%%
%% If you're deleting a Multi-AZ DB cluster with read replicas, all
%% cluster members are terminated and read replicas are promoted to
%% standalone instances.
%%
%% For more information on Amazon Aurora, see What is Amazon Aurora? in the
%% Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
delete_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_cluster(Client, Input, []).
delete_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBCluster">>, Input, Options).

%% @doc Deletes automated backups using the `DbClusterResourceId' value
%% of the source DB cluster or the Amazon Resource Name (ARN) of the
%% automated backups.
delete_db_cluster_automated_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_cluster_automated_backup(Client, Input, []).
delete_db_cluster_automated_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterAutomatedBackup">>, Input, Options).

%% @doc Deletes a custom endpoint and removes it from an Amazon Aurora DB
%% cluster.
%%
%% This action only applies to Aurora DB clusters.
delete_db_cluster_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_cluster_endpoint(Client, Input, []).
delete_db_cluster_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterEndpoint">>, Input, Options).

%% @doc Deletes a specified DB cluster parameter group.
%%
%% The DB cluster parameter group to be deleted can't be associated with
%% any DB clusters.
%%
%% For more information on Amazon Aurora, see What is Amazon Aurora? in the
%% Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
delete_db_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_cluster_parameter_group(Client, Input, []).
delete_db_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterParameterGroup">>, Input, Options).

%% @doc Deletes a DB cluster snapshot.
%%
%% If the snapshot is being copied, the copy operation is terminated.
%%
%% The DB cluster snapshot must be in the `available' state to be
%% deleted.
%%
%% For more information on Amazon Aurora, see What is Amazon Aurora? in the
%% Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
delete_db_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_cluster_snapshot(Client, Input, []).
delete_db_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterSnapshot">>, Input, Options).

%% @doc The DeleteDBInstance action deletes a previously provisioned DB
%% instance.
%%
%% When you delete a DB instance, all automated backups for that instance are
%% deleted and can't be recovered. Manual DB snapshots of the DB instance
%% to be deleted by `DeleteDBInstance' are not deleted.
%%
%% If you request a final DB snapshot the status of the Amazon RDS DB
%% instance is `deleting' until the DB snapshot is created. The API
%% action `DescribeDBInstance' is used to monitor the status of this
%% operation. The action can't be canceled or reverted once submitted.
%%
%% When a DB instance is in a failure state and has a status of `failed',
%% `incompatible-restore', or `incompatible-network', you can only
%% delete it when you skip creation of the final snapshot with the
%% `SkipFinalSnapshot' parameter.
%%
%% If the specified DB instance is part of an Amazon Aurora DB cluster, you
%% can't delete the DB instance if both of the following conditions are
%% true:
%%
%% <ul> <li> The DB cluster is a read replica of another Amazon Aurora DB
%% cluster.
%%
%% </li> <li> The DB instance is the only instance in the DB cluster.
%%
%% </li> </ul> To delete a DB instance in this case, first call the
%% `PromoteReadReplicaDBCluster' API action to promote the DB cluster so
%% it's no longer a read replica. After the promotion completes, then
%% call the `DeleteDBInstance' API action to delete the final instance in
%% the DB cluster.
delete_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_instance(Client, Input, []).
delete_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBInstance">>, Input, Options).

%% @doc Deletes automated backups using the `DbiResourceId' value of the
%% source DB instance or the Amazon Resource Name (ARN) of the automated
%% backups.
delete_db_instance_automated_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_instance_automated_backup(Client, Input, []).
delete_db_instance_automated_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBInstanceAutomatedBackup">>, Input, Options).

%% @doc Deletes a specified DB parameter group.
%%
%% The DB parameter group to be deleted can't be associated with any DB
%% instances.
delete_db_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_parameter_group(Client, Input, []).
delete_db_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBParameterGroup">>, Input, Options).

%% @doc Deletes an existing DB proxy.
delete_db_proxy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_proxy(Client, Input, []).
delete_db_proxy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBProxy">>, Input, Options).

%% @doc Deletes a `DBProxyEndpoint'.
%%
%% Doing so removes the ability to access the DB proxy using the endpoint
%% that you defined. The endpoint that you delete might have provided
%% capabilities such as read/write or read-only operations, or using a
%% different VPC than the DB proxy's default VPC.
delete_db_proxy_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_proxy_endpoint(Client, Input, []).
delete_db_proxy_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBProxyEndpoint">>, Input, Options).

%% @doc Deletes a DB security group.
%%
%% The specified DB security group must not be associated with any DB
%% instances.
%%
%% EC2-Classic was retired on August 15, 2022. If you haven't migrated
%% from EC2-Classic to a VPC, we recommend that you migrate as soon as
%% possible. For more information, see Migrate from EC2-Classic to a VPC in
%% the Amazon EC2 User Guide, the blog EC2-Classic Networking is Retiring –
%% Here’s How to Prepare, and Moving a DB instance not in a VPC into a VPC in
%% the Amazon RDS User Guide.
delete_db_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_security_group(Client, Input, []).
delete_db_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBSecurityGroup">>, Input, Options).

%% @doc Deletes a DB snapshot.
%%
%% If the snapshot is being copied, the copy operation is terminated.
%%
%% The DB snapshot must be in the `available' state to be deleted.
delete_db_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_snapshot(Client, Input, []).
delete_db_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBSnapshot">>, Input, Options).

%% @doc Deletes a DB subnet group.
%%
%% The specified database subnet group must not be associated with any DB
%% instances.
delete_db_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_subnet_group(Client, Input, []).
delete_db_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBSubnetGroup">>, Input, Options).

%% @doc Deletes an RDS event notification subscription.
delete_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_subscription(Client, Input, []).
delete_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventSubscription">>, Input, Options).

%% @doc Deletes a global database cluster.
%%
%% The primary and secondary clusters must already be detached or destroyed
%% first.
%%
%% This action only applies to Aurora DB clusters.
delete_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_global_cluster(Client, Input, []).
delete_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGlobalCluster">>, Input, Options).

%% @doc Deletes an existing option group.
delete_option_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_option_group(Client, Input, []).
delete_option_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOptionGroup">>, Input, Options).

%% @doc Remove the association between one or more `DBProxyTarget' data
%% structures and a `DBProxyTargetGroup'.
deregister_db_proxy_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_db_proxy_targets(Client, Input, []).
deregister_db_proxy_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterDBProxyTargets">>, Input, Options).

%% @doc Lists all of the attributes for a customer account.
%%
%% The attributes include Amazon RDS quotas for the account, such as the
%% number of DB instances allowed. The description for a quota includes the
%% quota name, current usage toward that quota, and the quota's maximum
%% value.
%%
%% This command doesn't take any parameters.
describe_account_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_attributes(Client, Input, []).
describe_account_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAttributes">>, Input, Options).

%% @doc Describes one or more blue/green deployments.
%%
%% For more information, see Using Amazon RDS Blue/Green Deployments for
%% database updates in the Amazon RDS User Guide and Using Amazon RDS
%% Blue/Green Deployments for database updates in the Amazon Aurora User
%% Guide.
describe_blue_green_deployments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_blue_green_deployments(Client, Input, []).
describe_blue_green_deployments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBlueGreenDeployments">>, Input, Options).

%% @doc Lists the set of CA certificates provided by Amazon RDS for this
%% Amazon Web Services account.
%%
%% For more information, see Using SSL/TLS to encrypt a connection to a DB
%% instance in the Amazon RDS User Guide and Using SSL/TLS to encrypt a
%% connection to a DB cluster in the Amazon Aurora User Guide.
describe_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificates(Client, Input, []).
describe_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificates">>, Input, Options).

%% @doc Displays backups for both current and deleted DB clusters.
%%
%% For example, use this operation to find details about automated backups
%% for previously deleted clusters. Current clusters are returned for both
%% the `DescribeDBClusterAutomatedBackups' and `DescribeDBClusters'
%% operations.
%%
%% All parameters are optional.
describe_db_cluster_automated_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_cluster_automated_backups(Client, Input, []).
describe_db_cluster_automated_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterAutomatedBackups">>, Input, Options).

%% @doc Returns information about backtracks for a DB cluster.
%%
%% For more information on Amazon Aurora, see What is Amazon Aurora? in the
%% Amazon Aurora User Guide.
%%
%% This action only applies to Aurora MySQL DB clusters.
describe_db_cluster_backtracks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_cluster_backtracks(Client, Input, []).
describe_db_cluster_backtracks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterBacktracks">>, Input, Options).

%% @doc Returns information about endpoints for an Amazon Aurora DB cluster.
%%
%% This action only applies to Aurora DB clusters.
describe_db_cluster_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_cluster_endpoints(Client, Input, []).
describe_db_cluster_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterEndpoints">>, Input, Options).

%% @doc Returns a list of `DBClusterParameterGroup' descriptions.
%%
%% If a `DBClusterParameterGroupName' parameter is specified, the list
%% will contain only the description of the specified DB cluster parameter
%% group.
%%
%% For more information on Amazon Aurora, see What is Amazon Aurora? in the
%% Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
describe_db_cluster_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_cluster_parameter_groups(Client, Input, []).
describe_db_cluster_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterParameterGroups">>, Input, Options).

%% @doc Returns the detailed parameter list for a particular DB cluster
%% parameter group.
%%
%% For more information on Amazon Aurora, see What is Amazon Aurora? in the
%% Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
describe_db_cluster_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_cluster_parameters(Client, Input, []).
describe_db_cluster_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterParameters">>, Input, Options).

%% @doc Returns a list of DB cluster snapshot attribute names and values for
%% a manual DB cluster snapshot.
%%
%% When sharing snapshots with other Amazon Web Services accounts,
%% `DescribeDBClusterSnapshotAttributes' returns the `restore'
%% attribute and a list of IDs for the Amazon Web Services accounts that are
%% authorized to copy or restore the manual DB cluster snapshot. If `all'
%% is included in the list of values for the `restore' attribute, then
%% the manual DB cluster snapshot is public and can be copied or restored by
%% all Amazon Web Services accounts.
%%
%% To add or remove access for an Amazon Web Services account to copy or
%% restore a manual DB cluster snapshot, or to make the manual DB cluster
%% snapshot public or private, use the `ModifyDBClusterSnapshotAttribute'
%% API action.
describe_db_cluster_snapshot_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_cluster_snapshot_attributes(Client, Input, []).
describe_db_cluster_snapshot_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterSnapshotAttributes">>, Input, Options).

%% @doc Returns information about DB cluster snapshots.
%%
%% This API action supports pagination.
%%
%% For more information on Amazon Aurora DB clusters, see What is Amazon
%% Aurora? in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
describe_db_cluster_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_cluster_snapshots(Client, Input, []).
describe_db_cluster_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterSnapshots">>, Input, Options).

%% @doc Describes existing Amazon Aurora DB clusters and Multi-AZ DB
%% clusters.
%%
%% This API supports pagination.
%%
%% For more information on Amazon Aurora DB clusters, see What is Amazon
%% Aurora? in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
%%
%% This operation can also return information for Amazon Neptune DB instances
%% and Amazon DocumentDB instances.
describe_db_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_clusters(Client, Input, []).
describe_db_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusters">>, Input, Options).

%% @doc Returns a list of the available DB engines.
describe_db_engine_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_engine_versions(Client, Input, []).
describe_db_engine_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBEngineVersions">>, Input, Options).

%% @doc Displays backups for both current and deleted instances.
%%
%% For example, use this operation to find details about automated backups
%% for previously deleted instances. Current instances with retention periods
%% greater than zero (0) are returned for both the
%% `DescribeDBInstanceAutomatedBackups' and `DescribeDBInstances'
%% operations.
%%
%% All parameters are optional.
describe_db_instance_automated_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_instance_automated_backups(Client, Input, []).
describe_db_instance_automated_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBInstanceAutomatedBackups">>, Input, Options).

%% @doc Describes provisioned RDS instances.
%%
%% This API supports pagination.
%%
%% This operation can also return information for Amazon Neptune DB instances
%% and Amazon DocumentDB instances.
describe_db_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_instances(Client, Input, []).
describe_db_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBInstances">>, Input, Options).

%% @doc Returns a list of DB log files for the DB instance.
%%
%% This command doesn't apply to RDS Custom.
describe_db_log_files(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_log_files(Client, Input, []).
describe_db_log_files(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBLogFiles">>, Input, Options).

%% @doc Returns a list of `DBParameterGroup' descriptions.
%%
%% If a `DBParameterGroupName' is specified, the list will contain only
%% the description of the specified DB parameter group.
describe_db_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_parameter_groups(Client, Input, []).
describe_db_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBParameterGroups">>, Input, Options).

%% @doc Returns the detailed parameter list for a particular DB parameter
%% group.
describe_db_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_parameters(Client, Input, []).
describe_db_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBParameters">>, Input, Options).

%% @doc Returns information about DB proxies.
describe_db_proxies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_proxies(Client, Input, []).
describe_db_proxies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBProxies">>, Input, Options).

%% @doc Returns information about DB proxy endpoints.
describe_db_proxy_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_proxy_endpoints(Client, Input, []).
describe_db_proxy_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBProxyEndpoints">>, Input, Options).

%% @doc Returns information about DB proxy target groups, represented by
%% `DBProxyTargetGroup' data structures.
describe_db_proxy_target_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_proxy_target_groups(Client, Input, []).
describe_db_proxy_target_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBProxyTargetGroups">>, Input, Options).

%% @doc Returns information about `DBProxyTarget' objects.
%%
%% This API supports pagination.
describe_db_proxy_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_proxy_targets(Client, Input, []).
describe_db_proxy_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBProxyTargets">>, Input, Options).

%% @doc Returns a list of `DBSecurityGroup' descriptions.
%%
%% If a `DBSecurityGroupName' is specified, the list will contain only
%% the descriptions of the specified DB security group.
%%
%% EC2-Classic was retired on August 15, 2022. If you haven't migrated
%% from EC2-Classic to a VPC, we recommend that you migrate as soon as
%% possible. For more information, see Migrate from EC2-Classic to a VPC in
%% the Amazon EC2 User Guide, the blog EC2-Classic Networking is Retiring –
%% Here’s How to Prepare, and Moving a DB instance not in a VPC into a VPC in
%% the Amazon RDS User Guide.
describe_db_security_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_security_groups(Client, Input, []).
describe_db_security_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBSecurityGroups">>, Input, Options).

%% @doc Returns a list of DB snapshot attribute names and values for a manual
%% DB snapshot.
%%
%% When sharing snapshots with other Amazon Web Services accounts,
%% `DescribeDBSnapshotAttributes' returns the `restore' attribute and
%% a list of IDs for the Amazon Web Services accounts that are authorized to
%% copy or restore the manual DB snapshot. If `all' is included in the
%% list of values for the `restore' attribute, then the manual DB
%% snapshot is public and can be copied or restored by all Amazon Web
%% Services accounts.
%%
%% To add or remove access for an Amazon Web Services account to copy or
%% restore a manual DB snapshot, or to make the manual DB snapshot public or
%% private, use the `ModifyDBSnapshotAttribute' API action.
describe_db_snapshot_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_snapshot_attributes(Client, Input, []).
describe_db_snapshot_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBSnapshotAttributes">>, Input, Options).

%% @doc Returns information about DB snapshots.
%%
%% This API action supports pagination.
describe_db_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_snapshots(Client, Input, []).
describe_db_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBSnapshots">>, Input, Options).

%% @doc Returns a list of DBSubnetGroup descriptions.
%%
%% If a DBSubnetGroupName is specified, the list will contain only the
%% descriptions of the specified DBSubnetGroup.
%%
%% For an overview of CIDR ranges, go to the Wikipedia Tutorial.
describe_db_subnet_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_subnet_groups(Client, Input, []).
describe_db_subnet_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBSubnetGroups">>, Input, Options).

%% @doc Returns the default engine and system parameter information for the
%% cluster database engine.
%%
%% For more information on Amazon Aurora, see What is Amazon Aurora? in the
%% Amazon Aurora User Guide.
describe_engine_default_cluster_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_engine_default_cluster_parameters(Client, Input, []).
describe_engine_default_cluster_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEngineDefaultClusterParameters">>, Input, Options).

%% @doc Returns the default engine and system parameter information for the
%% specified database engine.
describe_engine_default_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_engine_default_parameters(Client, Input, []).
describe_engine_default_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEngineDefaultParameters">>, Input, Options).

%% @doc Displays a list of categories for all event source types, or, if
%% specified, for a specified source type.
%%
%% You can also see this list in the &quot;Amazon RDS event categories and
%% event messages&quot; section of the Amazon RDS User Guide or the Amazon
%% Aurora User Guide .
describe_event_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_categories(Client, Input, []).
describe_event_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventCategories">>, Input, Options).

%% @doc Lists all the subscription descriptions for a customer account.
%%
%% The description for a subscription includes `SubscriptionName',
%% `SNSTopicARN', `CustomerID', `SourceType', `SourceID',
%% `CreationTime', and `Status'.
%%
%% If you specify a `SubscriptionName', lists the description for that
%% subscription.
describe_event_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_subscriptions(Client, Input, []).
describe_event_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventSubscriptions">>, Input, Options).

%% @doc Returns events related to DB instances, DB clusters, DB parameter
%% groups, DB security groups, DB snapshots, DB cluster snapshots, and RDS
%% Proxies for the past 14 days.
%%
%% Events specific to a particular DB instance, DB cluster, DB parameter
%% group, DB security group, DB snapshot, DB cluster snapshot group, or RDS
%% Proxy can be obtained by providing the name as a parameter.
%%
%% For more information on working with events, see Monitoring Amazon RDS
%% events in the Amazon RDS User Guide and Monitoring Amazon Aurora events in
%% the Amazon Aurora User Guide.
%%
%% By default, RDS returns events that were generated in the past hour.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns information about a snapshot or cluster export to Amazon S3.
%%
%% This API operation supports pagination.
describe_export_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_export_tasks(Client, Input, []).
describe_export_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExportTasks">>, Input, Options).

%% @doc Returns information about Aurora global database clusters.
%%
%% This API supports pagination.
%%
%% For more information on Amazon Aurora, see What is Amazon Aurora? in the
%% Amazon Aurora User Guide.
%%
%% This action only applies to Aurora DB clusters.
describe_global_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_global_clusters(Client, Input, []).
describe_global_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGlobalClusters">>, Input, Options).

%% @doc Describes all available options.
describe_option_group_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_option_group_options(Client, Input, []).
describe_option_group_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOptionGroupOptions">>, Input, Options).

%% @doc Describes the available option groups.
describe_option_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_option_groups(Client, Input, []).
describe_option_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOptionGroups">>, Input, Options).

%% @doc Returns a list of orderable DB instance options for the specified DB
%% engine, DB engine version, and DB instance class.
describe_orderable_db_instance_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_orderable_db_instance_options(Client, Input, []).
describe_orderable_db_instance_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrderableDBInstanceOptions">>, Input, Options).

%% @doc Returns a list of resources (for example, DB instances) that have at
%% least one pending maintenance action.
describe_pending_maintenance_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pending_maintenance_actions(Client, Input, []).
describe_pending_maintenance_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePendingMaintenanceActions">>, Input, Options).

%% @doc Returns information about reserved DB instances for this account, or
%% about a specified reserved DB instance.
describe_reserved_db_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_db_instances(Client, Input, []).
describe_reserved_db_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedDBInstances">>, Input, Options).

%% @doc Lists available reserved DB instance offerings.
describe_reserved_db_instances_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_db_instances_offerings(Client, Input, []).
describe_reserved_db_instances_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedDBInstancesOfferings">>, Input, Options).

%% @doc Returns a list of the source Amazon Web Services Regions where the
%% current Amazon Web Services Region can create a read replica, copy a DB
%% snapshot from, or replicate automated backups from.
%%
%% Use this operation to determine whether cross-Region features are
%% supported between other Regions and your current Region. This operation
%% supports pagination.
%%
%% To return information about the Regions that are enabled for your account,
%% or all Regions, use the EC2 operation `DescribeRegions'. For more
%% information, see DescribeRegions in the Amazon EC2 API Reference.
describe_source_regions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_source_regions(Client, Input, []).
describe_source_regions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSourceRegions">>, Input, Options).

%% @doc You can call `DescribeValidDBInstanceModifications' to learn what
%% modifications you can make to your DB instance.
%%
%% You can use this information when you call `ModifyDBInstance'.
%%
%% This command doesn't apply to RDS Custom.
describe_valid_db_instance_modifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_valid_db_instance_modifications(Client, Input, []).
describe_valid_db_instance_modifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeValidDBInstanceModifications">>, Input, Options).

%% @doc Downloads all or a portion of the specified log file, up to 1 MB in
%% size.
%%
%% This command doesn't apply to RDS Custom.
download_db_log_file_portion(Client, Input)
  when is_map(Client), is_map(Input) ->
    download_db_log_file_portion(Client, Input, []).
download_db_log_file_portion(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DownloadDBLogFilePortion">>, Input, Options).

%% @doc Forces a failover for a DB cluster.
%%
%% For an Aurora DB cluster, failover for a DB cluster promotes one of the
%% Aurora Replicas (read-only instances) in the DB cluster to be the primary
%% DB instance (the cluster writer).
%%
%% For a Multi-AZ DB cluster, failover for a DB cluster promotes one of the
%% readable standby DB instances (read-only instances) in the DB cluster to
%% be the primary DB instance (the cluster writer).
%%
%% An Amazon Aurora DB cluster automatically fails over to an Aurora Replica,
%% if one exists, when the primary DB instance fails. A Multi-AZ DB cluster
%% automatically fails over to a readable standby DB instance when the
%% primary DB instance fails.
%%
%% To simulate a failure of a primary instance for testing, you can force a
%% failover. Because each instance in a DB cluster has its own endpoint
%% address, make sure to clean up and re-establish any existing connections
%% that use those endpoint addresses when the failover is complete.
%%
%% For more information on Amazon Aurora DB clusters, see What is Amazon
%% Aurora? in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
failover_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    failover_db_cluster(Client, Input, []).
failover_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FailoverDBCluster">>, Input, Options).

%% @doc Promotes the specified secondary DB cluster to be the primary DB
%% cluster in the global database cluster to fail over or switch over a
%% global database.
%%
%% Switchover operations were previously called &quot;managed planned
%% failovers.&quot;
%%
%% Although this operation can be used either to fail over or to switch over
%% a global database cluster, its intended use is for global database
%% failover. To switch over a global database cluster, we recommend that you
%% use the `SwitchoverGlobalCluster' operation instead.
%%
%% How you use this operation depends on whether you are failing over or
%% switching over your global database cluster:
%%
%% <ul> <li> Failing over - Specify the `AllowDataLoss' parameter and
%% don't specify the `Switchover' parameter.
%%
%% </li> <li> Switching over - Specify the `Switchover' parameter or omit
%% it, but don't specify the `AllowDataLoss' parameter.
%%
%% </li> </ul> About failing over and switching over
%%
%% While failing over and switching over a global database cluster both
%% change the primary DB cluster, you use these operations for different
%% reasons:
%%
%% <ul> <li> Failing over - Use this operation to respond to an unplanned
%% event, such as a Regional disaster in the primary Region. Failing over can
%% result in a loss of write transaction data that wasn't replicated to
%% the chosen secondary before the failover event occurred. However, the
%% recovery process that promotes a DB instance on the chosen seconday DB
%% cluster to be the primary writer DB instance guarantees that the data is
%% in a transactionally consistent state.
%%
%% For more information about failing over an Amazon Aurora global database,
%% see Performing managed failovers for Aurora global databases in the Amazon
%% Aurora User Guide.
%%
%% </li> <li> Switching over - Use this operation on a healthy global
%% database cluster for planned events, such as Regional rotation or to fail
%% back to the original primary DB cluster after a failover operation. With
%% this operation, there is no data loss.
%%
%% For more information about switching over an Amazon Aurora global
%% database, see Performing switchovers for Aurora global databases in the
%% Amazon Aurora User Guide.
%%
%% </li> </ul>
failover_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    failover_global_cluster(Client, Input, []).
failover_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FailoverGlobalCluster">>, Input, Options).

%% @doc Lists all tags on an Amazon RDS resource.
%%
%% For an overview on tagging an Amazon RDS resource, see Tagging Amazon RDS
%% Resources in the Amazon RDS User Guide.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Changes the audit policy state of a database activity stream to
%% either locked (default) or unlocked.
%%
%% A locked policy is read-only, whereas an unlocked policy is read/write. If
%% your activity stream is started and locked, you can unlock it, customize
%% your audit policy, and then lock your activity stream. Restarting the
%% activity stream isn't required. For more information, see Modifying a
%% database activity stream in the Amazon RDS User Guide.
%%
%% This operation is supported for RDS for Oracle and Microsoft SQL Server.
modify_activity_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_activity_stream(Client, Input, []).
modify_activity_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyActivityStream">>, Input, Options).

%% @doc Override the system-default Secure Sockets Layer/Transport Layer
%% Security (SSL/TLS) certificate for Amazon RDS for new DB instances, or
%% remove the override.
%%
%% By using this operation, you can specify an RDS-approved SSL/TLS
%% certificate for new DB instances that is different from the default
%% certificate provided by RDS. You can also use this operation to remove the
%% override, so that new DB instances use the default certificate provided by
%% RDS.
%%
%% You might need to override the default certificate in the following
%% situations:
%%
%% <ul> <li> You already migrated your applications to support the latest
%% certificate authority (CA) certificate, but the new CA certificate is not
%% yet the RDS default CA certificate for the specified Amazon Web Services
%% Region.
%%
%% </li> <li> RDS has already moved to a new default CA certificate for the
%% specified Amazon Web Services Region, but you are still in the process of
%% supporting the new CA certificate. In this case, you temporarily need
%% additional time to finish your application changes.
%%
%% </li> </ul> For more information about rotating your SSL/TLS certificate
%% for RDS DB engines, see Rotating Your SSL/TLS Certificate in the Amazon
%% RDS User Guide.
%%
%% For more information about rotating your SSL/TLS certificate for Aurora DB
%% engines, see Rotating Your SSL/TLS Certificate in the Amazon Aurora User
%% Guide.
modify_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_certificates(Client, Input, []).
modify_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCertificates">>, Input, Options).

%% @doc Set the capacity of an Aurora Serverless v1 DB cluster to a specific
%% value.
%%
%% Aurora Serverless v1 scales seamlessly based on the workload on the DB
%% cluster. In some cases, the capacity might not scale fast enough to meet a
%% sudden change in workload, such as a large number of new transactions.
%% Call `ModifyCurrentDBClusterCapacity' to set the capacity explicitly.
%%
%% After this call sets the DB cluster capacity, Aurora Serverless v1 can
%% automatically scale the DB cluster based on the cooldown period for
%% scaling up and the cooldown period for scaling down.
%%
%% For more information about Aurora Serverless v1, see Using Amazon Aurora
%% Serverless v1 in the Amazon Aurora User Guide.
%%
%% If you call `ModifyCurrentDBClusterCapacity' with the default
%% `TimeoutAction', connections that prevent Aurora Serverless v1 from
%% finding a scaling point might be dropped. For more information about
%% scaling points, see Autoscaling for Aurora Serverless v1 in the Amazon
%% Aurora User Guide.
%%
%% This action only applies to Aurora Serverless v1 DB clusters.
modify_current_db_cluster_capacity(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_current_db_cluster_capacity(Client, Input, []).
modify_current_db_cluster_capacity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCurrentDBClusterCapacity">>, Input, Options).

%% @doc Modifies the status of a custom engine version (CEV).
%%
%% You can find CEVs to modify by calling `DescribeDBEngineVersions'.
%%
%% The MediaImport service that imports files from Amazon S3 to create CEVs
%% isn't integrated with Amazon Web Services CloudTrail. If you turn on
%% data logging for Amazon RDS in CloudTrail, calls to the
%% `ModifyCustomDbEngineVersion' event aren't logged. However, you
%% might see calls from the API gateway that accesses your Amazon S3 bucket.
%% These calls originate from the MediaImport service for the
%% `ModifyCustomDbEngineVersion' event.
%%
%% For more information, see Modifying CEV status in the Amazon RDS User
%% Guide.
modify_custom_db_engine_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_custom_db_engine_version(Client, Input, []).
modify_custom_db_engine_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCustomDBEngineVersion">>, Input, Options).

%% @doc Modifies the settings of an Amazon Aurora DB cluster or a Multi-AZ DB
%% cluster.
%%
%% You can change one or more settings by specifying these parameters and the
%% new values in the request.
%%
%% For more information on Amazon Aurora DB clusters, see What is Amazon
%% Aurora? in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
modify_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_cluster(Client, Input, []).
modify_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBCluster">>, Input, Options).

%% @doc Modifies the properties of an endpoint in an Amazon Aurora DB
%% cluster.
%%
%% This action only applies to Aurora DB clusters.
modify_db_cluster_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_cluster_endpoint(Client, Input, []).
modify_db_cluster_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBClusterEndpoint">>, Input, Options).

%% @doc Modifies the parameters of a DB cluster parameter group.
%%
%% To modify more than one parameter, submit a list of the following:
%% `ParameterName', `ParameterValue', and `ApplyMethod'. A
%% maximum of 20 parameters can be modified in a single request.
%%
%% After you create a DB cluster parameter group, you should wait at least 5
%% minutes before creating your first DB cluster that uses that DB cluster
%% parameter group as the default parameter group. This allows Amazon RDS to
%% fully complete the create action before the parameter group is used as the
%% default for a new DB cluster. This is especially important for parameters
%% that are critical when creating the default database for a DB cluster,
%% such as the character set for the default database defined by the
%% `character_set_database' parameter. You can use the Parameter Groups
%% option of the Amazon RDS console or the `DescribeDBClusterParameters'
%% operation to verify that your DB cluster parameter group has been created
%% or modified.
%%
%% If the modified DB cluster parameter group is used by an Aurora Serverless
%% v1 cluster, Aurora applies the update immediately. The cluster restart
%% might interrupt your workload. In that case, your application must reopen
%% any connections and retry any transactions that were active when the
%% parameter changes took effect.
%%
%% For more information on Amazon Aurora DB clusters, see What is Amazon
%% Aurora? in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
modify_db_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_cluster_parameter_group(Client, Input, []).
modify_db_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBClusterParameterGroup">>, Input, Options).

%% @doc Adds an attribute and values to, or removes an attribute and values
%% from, a manual DB cluster snapshot.
%%
%% To share a manual DB cluster snapshot with other Amazon Web Services
%% accounts, specify `restore' as the `AttributeName' and use the
%% `ValuesToAdd' parameter to add a list of IDs of the Amazon Web
%% Services accounts that are authorized to restore the manual DB cluster
%% snapshot. Use the value `all' to make the manual DB cluster snapshot
%% public, which means that it can be copied or restored by all Amazon Web
%% Services accounts.
%%
%% Don't add the `all' value for any manual DB cluster snapshots that
%% contain private information that you don't want available to all
%% Amazon Web Services accounts.
%%
%% If a manual DB cluster snapshot is encrypted, it can be shared, but only
%% by specifying a list of authorized Amazon Web Services account IDs for the
%% `ValuesToAdd' parameter. You can't use `all' as a value for
%% that parameter in this case.
%%
%% To view which Amazon Web Services accounts have access to copy or restore
%% a manual DB cluster snapshot, or whether a manual DB cluster snapshot is
%% public or private, use the `DescribeDBClusterSnapshotAttributes' API
%% operation. The accounts are returned as values for the `restore'
%% attribute.
modify_db_cluster_snapshot_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_cluster_snapshot_attribute(Client, Input, []).
modify_db_cluster_snapshot_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBClusterSnapshotAttribute">>, Input, Options).

%% @doc Modifies settings for a DB instance.
%%
%% You can change one or more database configuration parameters by specifying
%% these parameters and the new values in the request. To learn what
%% modifications you can make to your DB instance, call
%% `DescribeValidDBInstanceModifications' before you call
%% `ModifyDBInstance'.
modify_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_instance(Client, Input, []).
modify_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBInstance">>, Input, Options).

%% @doc Modifies the parameters of a DB parameter group.
%%
%% To modify more than one parameter, submit a list of the following:
%% `ParameterName', `ParameterValue', and `ApplyMethod'. A
%% maximum of 20 parameters can be modified in a single request.
%%
%% After you modify a DB parameter group, you should wait at least 5 minutes
%% before creating your first DB instance that uses that DB parameter group
%% as the default parameter group. This allows Amazon RDS to fully complete
%% the modify action before the parameter group is used as the default for a
%% new DB instance. This is especially important for parameters that are
%% critical when creating the default database for a DB instance, such as the
%% character set for the default database defined by the
%% `character_set_database' parameter. You can use the Parameter Groups
%% option of the Amazon RDS console or the DescribeDBParameters command to
%% verify that your DB parameter group has been created or modified.
modify_db_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_parameter_group(Client, Input, []).
modify_db_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBParameterGroup">>, Input, Options).

%% @doc Changes the settings for an existing DB proxy.
modify_db_proxy(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_proxy(Client, Input, []).
modify_db_proxy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBProxy">>, Input, Options).

%% @doc Changes the settings for an existing DB proxy endpoint.
modify_db_proxy_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_proxy_endpoint(Client, Input, []).
modify_db_proxy_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBProxyEndpoint">>, Input, Options).

%% @doc Modifies the properties of a `DBProxyTargetGroup'.
modify_db_proxy_target_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_proxy_target_group(Client, Input, []).
modify_db_proxy_target_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBProxyTargetGroup">>, Input, Options).

%% @doc Updates a manual DB snapshot with a new engine version.
%%
%% The snapshot can be encrypted or unencrypted, but not shared or public.
%%
%% Amazon RDS supports upgrading DB snapshots for MySQL, PostgreSQL, and
%% Oracle. This command doesn't apply to RDS Custom.
modify_db_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_snapshot(Client, Input, []).
modify_db_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBSnapshot">>, Input, Options).

%% @doc Adds an attribute and values to, or removes an attribute and values
%% from, a manual DB snapshot.
%%
%% To share a manual DB snapshot with other Amazon Web Services accounts,
%% specify `restore' as the `AttributeName' and use the
%% `ValuesToAdd' parameter to add a list of IDs of the Amazon Web
%% Services accounts that are authorized to restore the manual DB snapshot.
%% Uses the value `all' to make the manual DB snapshot public, which
%% means it can be copied or restored by all Amazon Web Services accounts.
%%
%% Don't add the `all' value for any manual DB snapshots that contain
%% private information that you don't want available to all Amazon Web
%% Services accounts.
%%
%% If the manual DB snapshot is encrypted, it can be shared, but only by
%% specifying a list of authorized Amazon Web Services account IDs for the
%% `ValuesToAdd' parameter. You can't use `all' as a value for
%% that parameter in this case.
%%
%% To view which Amazon Web Services accounts have access to copy or restore
%% a manual DB snapshot, or whether a manual DB snapshot public or private,
%% use the `DescribeDBSnapshotAttributes' API operation. The accounts are
%% returned as values for the `restore' attribute.
modify_db_snapshot_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_snapshot_attribute(Client, Input, []).
modify_db_snapshot_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBSnapshotAttribute">>, Input, Options).

%% @doc Modifies an existing DB subnet group.
%%
%% DB subnet groups must contain at least one subnet in at least two AZs in
%% the Amazon Web Services Region.
modify_db_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_subnet_group(Client, Input, []).
modify_db_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBSubnetGroup">>, Input, Options).

%% @doc Modifies an existing RDS event notification subscription.
%%
%% You can't modify the source identifiers using this call. To change
%% source identifiers for a subscription, use the
%% `AddSourceIdentifierToSubscription' and
%% `RemoveSourceIdentifierFromSubscription' calls.
%%
%% You can see a list of the event categories for a given source type
%% (`SourceType') in Events in the Amazon RDS User Guide or by using the
%% `DescribeEventCategories' operation.
modify_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_event_subscription(Client, Input, []).
modify_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEventSubscription">>, Input, Options).

%% @doc Modifies a setting for an Amazon Aurora global database cluster.
%%
%% You can change one or more database configuration parameters by specifying
%% these parameters and the new values in the request. For more information
%% on Amazon Aurora, see What is Amazon Aurora? in the Amazon Aurora User
%% Guide.
%%
%% This operation only applies to Aurora global database clusters.
modify_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_global_cluster(Client, Input, []).
modify_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyGlobalCluster">>, Input, Options).

%% @doc Modifies an existing option group.
modify_option_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_option_group(Client, Input, []).
modify_option_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyOptionGroup">>, Input, Options).

%% @doc Promotes a read replica DB instance to a standalone DB instance.
%%
%% Backup duration is a function of the amount of changes to the database
%% since the previous backup. If you plan to promote a read replica to a
%% standalone instance, we recommend that you enable backups and complete at
%% least one backup prior to promotion. In addition, a read replica cannot be
%% promoted to a standalone instance when it is in the `backing-up'
%% status. If you have enabled backups on your read replica, configure the
%% automated backup window so that daily backups do not interfere with read
%% replica promotion.
%%
%% This command doesn't apply to Aurora MySQL, Aurora PostgreSQL, or RDS
%% Custom.
promote_read_replica(Client, Input)
  when is_map(Client), is_map(Input) ->
    promote_read_replica(Client, Input, []).
promote_read_replica(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PromoteReadReplica">>, Input, Options).

%% @doc Promotes a read replica DB cluster to a standalone DB cluster.
promote_read_replica_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    promote_read_replica_db_cluster(Client, Input, []).
promote_read_replica_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PromoteReadReplicaDBCluster">>, Input, Options).

%% @doc Purchases a reserved DB instance offering.
purchase_reserved_db_instances_offering(Client, Input)
  when is_map(Client), is_map(Input) ->
    purchase_reserved_db_instances_offering(Client, Input, []).
purchase_reserved_db_instances_offering(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurchaseReservedDBInstancesOffering">>, Input, Options).

%% @doc You might need to reboot your DB cluster, usually for maintenance
%% reasons.
%%
%% For example, if you make certain modifications, or if you change the DB
%% cluster parameter group associated with the DB cluster, reboot the DB
%% cluster for the changes to take effect.
%%
%% Rebooting a DB cluster restarts the database engine service. Rebooting a
%% DB cluster results in a momentary outage, during which the DB cluster
%% status is set to rebooting.
%%
%% Use this operation only for a non-Aurora Multi-AZ DB cluster.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
reboot_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_db_cluster(Client, Input, []).
reboot_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootDBCluster">>, Input, Options).

%% @doc You might need to reboot your DB instance, usually for maintenance
%% reasons.
%%
%% For example, if you make certain modifications, or if you change the DB
%% parameter group associated with the DB instance, you must reboot the
%% instance for the changes to take effect.
%%
%% Rebooting a DB instance restarts the database engine service. Rebooting a
%% DB instance results in a momentary outage, during which the DB instance
%% status is set to rebooting.
%%
%% For more information about rebooting, see Rebooting a DB Instance in the
%% Amazon RDS User Guide.
%%
%% This command doesn't apply to RDS Custom.
%%
%% If your DB instance is part of a Multi-AZ DB cluster, you can reboot the
%% DB cluster with the `RebootDBCluster' operation.
reboot_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_db_instance(Client, Input, []).
reboot_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootDBInstance">>, Input, Options).

%% @doc Associate one or more `DBProxyTarget' data structures with a
%% `DBProxyTargetGroup'.
register_db_proxy_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_db_proxy_targets(Client, Input, []).
register_db_proxy_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDBProxyTargets">>, Input, Options).

%% @doc Detaches an Aurora secondary cluster from an Aurora global database
%% cluster.
%%
%% The cluster becomes a standalone cluster with read-write capability
%% instead of being read-only and receiving data from a primary cluster in a
%% different Region.
%%
%% This action only applies to Aurora DB clusters.
remove_from_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_from_global_cluster(Client, Input, []).
remove_from_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveFromGlobalCluster">>, Input, Options).

%% @doc Removes the asssociation of an Amazon Web Services Identity and
%% Access Management (IAM) role from a DB cluster.
%%
%% For more information on Amazon Aurora DB clusters, see What is Amazon
%% Aurora? in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
remove_role_from_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_role_from_db_cluster(Client, Input, []).
remove_role_from_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveRoleFromDBCluster">>, Input, Options).

%% @doc Disassociates an Amazon Web Services Identity and Access Management
%% (IAM) role from a DB instance.
remove_role_from_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_role_from_db_instance(Client, Input, []).
remove_role_from_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveRoleFromDBInstance">>, Input, Options).

%% @doc Removes a source identifier from an existing RDS event notification
%% subscription.
remove_source_identifier_from_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_source_identifier_from_subscription(Client, Input, []).
remove_source_identifier_from_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveSourceIdentifierFromSubscription">>, Input, Options).

%% @doc Removes metadata tags from an Amazon RDS resource.
%%
%% For an overview on tagging an Amazon RDS resource, see Tagging Amazon RDS
%% Resources in the Amazon RDS User Guide.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc Modifies the parameters of a DB cluster parameter group to the
%% default value.
%%
%% To reset specific parameters submit a list of the following:
%% `ParameterName' and `ApplyMethod'. To reset the entire DB cluster
%% parameter group, specify the `DBClusterParameterGroupName' and
%% `ResetAllParameters' parameters.
%%
%% When resetting the entire group, dynamic parameters are updated
%% immediately and static parameters are set to `pending-reboot' to take
%% effect on the next DB instance restart or `RebootDBInstance' request.
%% You must call `RebootDBInstance' for every DB instance in your DB
%% cluster that you want the updated static parameter to apply to.
%%
%% For more information on Amazon Aurora DB clusters, see What is Amazon
%% Aurora? in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
reset_db_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_db_cluster_parameter_group(Client, Input, []).
reset_db_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetDBClusterParameterGroup">>, Input, Options).

%% @doc Modifies the parameters of a DB parameter group to the engine/system
%% default value.
%%
%% To reset specific parameters, provide a list of the following:
%% `ParameterName' and `ApplyMethod'. To reset the entire DB
%% parameter group, specify the `DBParameterGroup' name and
%% `ResetAllParameters' parameters. When resetting the entire group,
%% dynamic parameters are updated immediately and static parameters are set
%% to `pending-reboot' to take effect on the next DB instance restart or
%% `RebootDBInstance' request.
reset_db_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_db_parameter_group(Client, Input, []).
reset_db_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetDBParameterGroup">>, Input, Options).

%% @doc Creates an Amazon Aurora DB cluster from MySQL data stored in an
%% Amazon S3 bucket.
%%
%% Amazon RDS must be authorized to access the Amazon S3 bucket and the data
%% must be created using the Percona XtraBackup utility as described in
%% Migrating Data from MySQL by Using an Amazon S3 Bucket in the Amazon
%% Aurora User Guide.
%%
%% This action only restores the DB cluster, not the DB instances for that DB
%% cluster. You must invoke the `CreateDBInstance' action to create DB
%% instances for the restored DB cluster, specifying the identifier of the
%% restored DB cluster in `DBClusterIdentifier'. You can create DB
%% instances only after the `RestoreDBClusterFromS3' action has completed
%% and the DB cluster is available.
%%
%% For more information on Amazon Aurora, see What is Amazon Aurora? in the
%% Amazon Aurora User Guide.
%%
%% This action only applies to Aurora DB clusters. The source DB engine must
%% be MySQL.
restore_db_cluster_from_s3(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_db_cluster_from_s3(Client, Input, []).
restore_db_cluster_from_s3(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBClusterFromS3">>, Input, Options).

%% @doc Creates a new DB cluster from a DB snapshot or DB cluster snapshot.
%%
%% The target DB cluster is created from the source snapshot with a default
%% configuration. If you don't specify a security group, the new DB
%% cluster is associated with the default security group.
%%
%% This action only restores the DB cluster, not the DB instances for that DB
%% cluster. You must invoke the `CreateDBInstance' action to create DB
%% instances for the restored DB cluster, specifying the identifier of the
%% restored DB cluster in `DBClusterIdentifier'. You can create DB
%% instances only after the `RestoreDBClusterFromSnapshot' action has
%% completed and the DB cluster is available.
%%
%% For more information on Amazon Aurora DB clusters, see What is Amazon
%% Aurora? in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
restore_db_cluster_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_db_cluster_from_snapshot(Client, Input, []).
restore_db_cluster_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBClusterFromSnapshot">>, Input, Options).

%% @doc Restores a DB cluster to an arbitrary point in time.
%%
%% Users can restore to any point in time before `LatestRestorableTime'
%% for up to `BackupRetentionPeriod' days. The target DB cluster is
%% created from the source DB cluster with the same configuration as the
%% original DB cluster, except that the new DB cluster is created with the
%% default DB security group.
%%
%% For Aurora, this action only restores the DB cluster, not the DB instances
%% for that DB cluster. You must invoke the `CreateDBInstance' action to
%% create DB instances for the restored DB cluster, specifying the identifier
%% of the restored DB cluster in `DBClusterIdentifier'. You can create DB
%% instances only after the `RestoreDBClusterToPointInTime' action has
%% completed and the DB cluster is available.
%%
%% For more information on Amazon Aurora DB clusters, see What is Amazon
%% Aurora? in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB cluster
%% deployments in the Amazon RDS User Guide.
restore_db_cluster_to_point_in_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_db_cluster_to_point_in_time(Client, Input, []).
restore_db_cluster_to_point_in_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBClusterToPointInTime">>, Input, Options).

%% @doc Creates a new DB instance from a DB snapshot.
%%
%% The target database is created from the source database restore point with
%% most of the source's original configuration, including the default
%% security group and DB parameter group. By default, the new DB instance is
%% created as a Single-AZ deployment, except when the instance is a SQL
%% Server instance that has an option group associated with mirroring. In
%% this case, the instance becomes a Multi-AZ deployment, not a Single-AZ
%% deployment.
%%
%% If you want to replace your original DB instance with the new, restored DB
%% instance, then rename your original DB instance before you call the
%% RestoreDBInstanceFromDBSnapshot action. RDS doesn't allow two DB
%% instances with the same name. After you have renamed your original DB
%% instance with a different identifier, then you can pass the original name
%% of the DB instance as the DBInstanceIdentifier in the call to the
%% RestoreDBInstanceFromDBSnapshot action. The result is that you replace the
%% original DB instance with the DB instance created from the snapshot.
%%
%% If you are restoring from a shared manual DB snapshot, the
%% `DBSnapshotIdentifier' must be the ARN of the shared DB snapshot.
%%
%% This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For
%% Aurora, use `RestoreDBClusterFromSnapshot'.
restore_db_instance_from_db_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_db_instance_from_db_snapshot(Client, Input, []).
restore_db_instance_from_db_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBInstanceFromDBSnapshot">>, Input, Options).

%% @doc Amazon Relational Database Service (Amazon RDS) supports importing
%% MySQL databases by using backup files.
%%
%% You can create a backup of your on-premises database, store it on Amazon
%% Simple Storage Service (Amazon S3), and then restore the backup file onto
%% a new Amazon RDS DB instance running MySQL. For more information, see
%% Importing Data into an Amazon RDS MySQL DB Instance in the Amazon RDS User
%% Guide.
%%
%% This command doesn't apply to RDS Custom.
restore_db_instance_from_s3(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_db_instance_from_s3(Client, Input, []).
restore_db_instance_from_s3(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBInstanceFromS3">>, Input, Options).

%% @doc Restores a DB instance to an arbitrary point in time.
%%
%% You can restore to any point in time before the time identified by the
%% LatestRestorableTime property. You can restore to a point up to the number
%% of days specified by the BackupRetentionPeriod property.
%%
%% The target database is created with most of the original configuration,
%% but in a system-selected Availability Zone, with the default security
%% group, the default subnet group, and the default DB parameter group. By
%% default, the new DB instance is created as a single-AZ deployment except
%% when the instance is a SQL Server instance that has an option group that
%% is associated with mirroring; in this case, the instance becomes a
%% mirrored deployment and not a single-AZ deployment.
%%
%% This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For
%% Aurora, use `RestoreDBClusterToPointInTime'.
restore_db_instance_to_point_in_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_db_instance_to_point_in_time(Client, Input, []).
restore_db_instance_to_point_in_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBInstanceToPointInTime">>, Input, Options).

%% @doc Revokes ingress from a DBSecurityGroup for previously authorized IP
%% ranges or EC2 or VPC security groups.
%%
%% Required parameters for this API are one of CIDRIP, EC2SecurityGroupId for
%% VPC, or (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
%% EC2SecurityGroupId).
%%
%% EC2-Classic was retired on August 15, 2022. If you haven't migrated
%% from EC2-Classic to a VPC, we recommend that you migrate as soon as
%% possible. For more information, see Migrate from EC2-Classic to a VPC in
%% the Amazon EC2 User Guide, the blog EC2-Classic Networking is Retiring –
%% Here’s How to Prepare, and Moving a DB instance not in a VPC into a VPC in
%% the Amazon RDS User Guide.
revoke_db_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_db_security_group_ingress(Client, Input, []).
revoke_db_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeDBSecurityGroupIngress">>, Input, Options).

%% @doc Starts a database activity stream to monitor activity on the
%% database.
%%
%% For more information, see Monitoring Amazon Aurora with Database Activity
%% Streams in the Amazon Aurora User Guide or Monitoring Amazon RDS with
%% Database Activity Streams in the Amazon RDS User Guide.
start_activity_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_activity_stream(Client, Input, []).
start_activity_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartActivityStream">>, Input, Options).

%% @doc Starts an Amazon Aurora DB cluster that was stopped using the Amazon
%% Web Services console, the stop-db-cluster CLI command, or the
%% StopDBCluster action.
%%
%% For more information, see Stopping and Starting an Aurora Cluster in the
%% Amazon Aurora User Guide.
%%
%% This action only applies to Aurora DB clusters.
start_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_db_cluster(Client, Input, []).
start_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDBCluster">>, Input, Options).

%% @doc Starts an Amazon RDS DB instance that was stopped using the Amazon
%% Web Services console, the stop-db-instance CLI command, or the
%% StopDBInstance action.
%%
%% For more information, see Starting an Amazon RDS DB instance That Was
%% Previously Stopped in the Amazon RDS User Guide.
%%
%% This command doesn't apply to RDS Custom, Aurora MySQL, and Aurora
%% PostgreSQL. For Aurora DB clusters, use `StartDBCluster' instead.
start_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_db_instance(Client, Input, []).
start_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDBInstance">>, Input, Options).

%% @doc Enables replication of automated backups to a different Amazon Web
%% Services Region.
%%
%% This command doesn't apply to RDS Custom.
%%
%% For more information, see Replicating Automated Backups to Another Amazon
%% Web Services Region in the Amazon RDS User Guide.
start_db_instance_automated_backups_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_db_instance_automated_backups_replication(Client, Input, []).
start_db_instance_automated_backups_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDBInstanceAutomatedBackupsReplication">>, Input, Options).

%% @doc Starts an export of DB snapshot or DB cluster data to Amazon S3.
%%
%% The provided IAM role must have access to the S3 bucket.
%%
%% You can't export snapshot data from RDS Custom DB instances.
%%
%% You can't export cluster data from Multi-AZ DB clusters.
%%
%% For more information on exporting DB snapshot data, see Exporting DB
%% snapshot data to Amazon S3 in the Amazon RDS User Guide or Exporting DB
%% cluster snapshot data to Amazon S3 in the Amazon Aurora User Guide.
%%
%% For more information on exporting DB cluster data, see Exporting DB
%% cluster data to Amazon S3 in the Amazon Aurora User Guide.
start_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_export_task(Client, Input, []).
start_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExportTask">>, Input, Options).

%% @doc Stops a database activity stream that was started using the Amazon
%% Web Services console, the `start-activity-stream' CLI command, or the
%% `StartActivityStream' action.
%%
%% For more information, see Monitoring Amazon Aurora with Database Activity
%% Streams in the Amazon Aurora User Guide or Monitoring Amazon RDS with
%% Database Activity Streams in the Amazon RDS User Guide.
stop_activity_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_activity_stream(Client, Input, []).
stop_activity_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopActivityStream">>, Input, Options).

%% @doc Stops an Amazon Aurora DB cluster.
%%
%% When you stop a DB cluster, Aurora retains the DB cluster's metadata,
%% including its endpoints and DB parameter groups. Aurora also retains the
%% transaction logs so you can do a point-in-time restore if necessary.
%%
%% For more information, see Stopping and Starting an Aurora Cluster in the
%% Amazon Aurora User Guide.
%%
%% This action only applies to Aurora DB clusters.
stop_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_db_cluster(Client, Input, []).
stop_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDBCluster">>, Input, Options).

%% @doc Stops an Amazon RDS DB instance.
%%
%% When you stop a DB instance, Amazon RDS retains the DB instance's
%% metadata, including its endpoint, DB parameter group, and option group
%% membership. Amazon RDS also retains the transaction logs so you can do a
%% point-in-time restore if necessary.
%%
%% For more information, see Stopping an Amazon RDS DB Instance Temporarily
%% in the Amazon RDS User Guide.
%%
%% This command doesn't apply to RDS Custom, Aurora MySQL, and Aurora
%% PostgreSQL. For Aurora clusters, use `StopDBCluster' instead.
stop_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_db_instance(Client, Input, []).
stop_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDBInstance">>, Input, Options).

%% @doc Stops automated backup replication for a DB instance.
%%
%% This command doesn't apply to RDS Custom, Aurora MySQL, and Aurora
%% PostgreSQL.
%%
%% For more information, see Replicating Automated Backups to Another Amazon
%% Web Services Region in the Amazon RDS User Guide.
stop_db_instance_automated_backups_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_db_instance_automated_backups_replication(Client, Input, []).
stop_db_instance_automated_backups_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDBInstanceAutomatedBackupsReplication">>, Input, Options).

%% @doc Switches over a blue/green deployment.
%%
%% Before you switch over, production traffic is routed to the databases in
%% the blue environment. After you switch over, production traffic is routed
%% to the databases in the green environment.
%%
%% For more information, see Using Amazon RDS Blue/Green Deployments for
%% database updates in the Amazon RDS User Guide and Using Amazon RDS
%% Blue/Green Deployments for database updates in the Amazon Aurora User
%% Guide.
switchover_blue_green_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    switchover_blue_green_deployment(Client, Input, []).
switchover_blue_green_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SwitchoverBlueGreenDeployment">>, Input, Options).

%% @doc Switches over the specified secondary DB cluster to be the new
%% primary DB cluster in the global database cluster.
%%
%% Switchover operations were previously called &quot;managed planned
%% failovers.&quot;
%%
%% Aurora promotes the specified secondary cluster to assume full read/write
%% capabilities and demotes the current primary cluster to a secondary
%% (read-only) cluster, maintaining the orginal replication topology. All
%% secondary clusters are synchronized with the primary at the beginning of
%% the process so the new primary continues operations for the Aurora global
%% database without losing any data. Your database is unavailable for a short
%% time while the primary and selected secondary clusters are assuming their
%% new roles. For more information about switching over an Aurora global
%% database, see Performing switchovers for Amazon Aurora global databases in
%% the Amazon Aurora User Guide.
%%
%% This operation is intended for controlled environments, for operations
%% such as &quot;regional rotation&quot; or to fall back to the original
%% primary after a global database failover.
switchover_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    switchover_global_cluster(Client, Input, []).
switchover_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SwitchoverGlobalCluster">>, Input, Options).

%% @doc Switches over an Oracle standby database in an Oracle Data Guard
%% environment, making it the new primary database.
%%
%% Issue this command in the Region that hosts the current standby database.
switchover_read_replica(Client, Input)
  when is_map(Client), is_map(Input) ->
    switchover_read_replica(Client, Input, []).
switchover_read_replica(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SwitchoverReadReplica">>, Input, Options).

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
    Client1 = Client#{service => <<"rds">>},
    Host = build_host(<<"rds">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2014-10-31">>
                   },

    Payload = aws_util:encode_query(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
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
