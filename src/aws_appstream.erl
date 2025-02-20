%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon AppStream 2.0
%%
%% This is the Amazon AppStream 2.0 API Reference.
%%
%% This documentation provides descriptions and syntax for each of the
%% actions and data types in AppStream 2.0. AppStream 2.0 is a fully managed,
%% secure application streaming service that lets you stream desktop
%% applications to users without rewriting applications. AppStream 2.0
%% manages the AWS resources that are required to host and run your
%% applications, scales automatically, and provides access to your users on
%% demand.
%%
%% You can call the AppStream 2.0 API operations by using an interface VPC
%% endpoint (interface endpoint). For more information, see Access AppStream
%% 2.0 API Operations and CLI Commands Through an Interface VPC Endpoint in
%% the Amazon AppStream 2.0 Administration Guide.
%%
%% To learn more about AppStream 2.0, see the following resources:
%%
%% <ul> <li> Amazon AppStream 2.0 product page
%%
%% </li> <li> Amazon AppStream 2.0 documentation
%%
%% </li> </ul>
-module(aws_appstream).

-export([associate_app_block_builder_app_block/2,
         associate_app_block_builder_app_block/3,
         associate_application_fleet/2,
         associate_application_fleet/3,
         associate_application_to_entitlement/2,
         associate_application_to_entitlement/3,
         associate_fleet/2,
         associate_fleet/3,
         batch_associate_user_stack/2,
         batch_associate_user_stack/3,
         batch_disassociate_user_stack/2,
         batch_disassociate_user_stack/3,
         copy_image/2,
         copy_image/3,
         create_app_block/2,
         create_app_block/3,
         create_app_block_builder/2,
         create_app_block_builder/3,
         create_app_block_builder_streaming_url/2,
         create_app_block_builder_streaming_url/3,
         create_application/2,
         create_application/3,
         create_directory_config/2,
         create_directory_config/3,
         create_entitlement/2,
         create_entitlement/3,
         create_fleet/2,
         create_fleet/3,
         create_image_builder/2,
         create_image_builder/3,
         create_image_builder_streaming_url/2,
         create_image_builder_streaming_url/3,
         create_stack/2,
         create_stack/3,
         create_streaming_url/2,
         create_streaming_url/3,
         create_updated_image/2,
         create_updated_image/3,
         create_usage_report_subscription/2,
         create_usage_report_subscription/3,
         create_user/2,
         create_user/3,
         delete_app_block/2,
         delete_app_block/3,
         delete_app_block_builder/2,
         delete_app_block_builder/3,
         delete_application/2,
         delete_application/3,
         delete_directory_config/2,
         delete_directory_config/3,
         delete_entitlement/2,
         delete_entitlement/3,
         delete_fleet/2,
         delete_fleet/3,
         delete_image/2,
         delete_image/3,
         delete_image_builder/2,
         delete_image_builder/3,
         delete_image_permissions/2,
         delete_image_permissions/3,
         delete_stack/2,
         delete_stack/3,
         delete_usage_report_subscription/2,
         delete_usage_report_subscription/3,
         delete_user/2,
         delete_user/3,
         describe_app_block_builder_app_block_associations/2,
         describe_app_block_builder_app_block_associations/3,
         describe_app_block_builders/2,
         describe_app_block_builders/3,
         describe_app_blocks/2,
         describe_app_blocks/3,
         describe_application_fleet_associations/2,
         describe_application_fleet_associations/3,
         describe_applications/2,
         describe_applications/3,
         describe_directory_configs/2,
         describe_directory_configs/3,
         describe_entitlements/2,
         describe_entitlements/3,
         describe_fleets/2,
         describe_fleets/3,
         describe_image_builders/2,
         describe_image_builders/3,
         describe_image_permissions/2,
         describe_image_permissions/3,
         describe_images/2,
         describe_images/3,
         describe_sessions/2,
         describe_sessions/3,
         describe_stacks/2,
         describe_stacks/3,
         describe_usage_report_subscriptions/2,
         describe_usage_report_subscriptions/3,
         describe_user_stack_associations/2,
         describe_user_stack_associations/3,
         describe_users/2,
         describe_users/3,
         disable_user/2,
         disable_user/3,
         disassociate_app_block_builder_app_block/2,
         disassociate_app_block_builder_app_block/3,
         disassociate_application_fleet/2,
         disassociate_application_fleet/3,
         disassociate_application_from_entitlement/2,
         disassociate_application_from_entitlement/3,
         disassociate_fleet/2,
         disassociate_fleet/3,
         enable_user/2,
         enable_user/3,
         expire_session/2,
         expire_session/3,
         list_associated_fleets/2,
         list_associated_fleets/3,
         list_associated_stacks/2,
         list_associated_stacks/3,
         list_entitled_applications/2,
         list_entitled_applications/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         start_app_block_builder/2,
         start_app_block_builder/3,
         start_fleet/2,
         start_fleet/3,
         start_image_builder/2,
         start_image_builder/3,
         stop_app_block_builder/2,
         stop_app_block_builder/3,
         stop_fleet/2,
         stop_fleet/3,
         stop_image_builder/2,
         stop_image_builder/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_app_block_builder/2,
         update_app_block_builder/3,
         update_application/2,
         update_application/3,
         update_directory_config/2,
         update_directory_config/3,
         update_entitlement/2,
         update_entitlement/3,
         update_fleet/2,
         update_fleet/3,
         update_image_permissions/2,
         update_image_permissions/3,
         update_stack/2,
         update_stack/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates the specified app block builder with the specified app
%% block.
associate_app_block_builder_app_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_app_block_builder_app_block(Client, Input, []).
associate_app_block_builder_app_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateAppBlockBuilderAppBlock">>, Input, Options).

%% @doc Associates the specified application with the specified fleet.
%%
%% This is only supported for Elastic fleets.
associate_application_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_application_fleet(Client, Input, []).
associate_application_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateApplicationFleet">>, Input, Options).

%% @doc Associates an application to entitle.
associate_application_to_entitlement(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_application_to_entitlement(Client, Input, []).
associate_application_to_entitlement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateApplicationToEntitlement">>, Input, Options).

%% @doc Associates the specified fleet with the specified stack.
associate_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_fleet(Client, Input, []).
associate_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateFleet">>, Input, Options).

%% @doc Associates the specified users with the specified stacks.
%%
%% Users in a user pool cannot be assigned to stacks with fleets that are
%% joined to an Active Directory domain.
batch_associate_user_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_associate_user_stack(Client, Input, []).
batch_associate_user_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchAssociateUserStack">>, Input, Options).

%% @doc Disassociates the specified users from the specified stacks.
batch_disassociate_user_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_disassociate_user_stack(Client, Input, []).
batch_disassociate_user_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDisassociateUserStack">>, Input, Options).

%% @doc Copies the image within the same region or to a new region within the
%% same AWS account.
%%
%% Note that any tags you added to the image will not be copied.
copy_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_image(Client, Input, []).
copy_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyImage">>, Input, Options).

%% @doc Creates an app block.
%%
%% App blocks are an Amazon AppStream 2.0 resource that stores the details
%% about the virtual hard disk in an S3 bucket. It also stores the setup
%% script with details about how to mount the virtual hard disk. The virtual
%% hard disk includes the application binaries and other files necessary to
%% launch your applications. Multiple applications can be assigned to a
%% single app block.
%%
%% This is only supported for Elastic fleets.
create_app_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app_block(Client, Input, []).
create_app_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAppBlock">>, Input, Options).

%% @doc Creates an app block builder.
create_app_block_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app_block_builder(Client, Input, []).
create_app_block_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAppBlockBuilder">>, Input, Options).

%% @doc Creates a URL to start a create app block builder streaming session.
create_app_block_builder_streaming_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app_block_builder_streaming_url(Client, Input, []).
create_app_block_builder_streaming_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAppBlockBuilderStreamingURL">>, Input, Options).

%% @doc Creates an application.
%%
%% Applications are an Amazon AppStream 2.0 resource that stores the details
%% about how to launch applications on Elastic fleet streaming instances. An
%% application consists of the launch details, icon, and display name.
%% Applications are associated with an app block that contains the
%% application binaries and other files. The applications assigned to an
%% Elastic fleet are the applications users can launch.
%%
%% This is only supported for Elastic fleets.
create_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application(Client, Input, []).
create_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplication">>, Input, Options).

%% @doc Creates a Directory Config object in AppStream 2.0.
%%
%% This object includes the configuration information required to join fleets
%% and image builders to Microsoft Active Directory domains.
create_directory_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_directory_config(Client, Input, []).
create_directory_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDirectoryConfig">>, Input, Options).

%% @doc Creates a new entitlement.
%%
%% Entitlements control access to specific applications within a stack, based
%% on user attributes. Entitlements apply to SAML 2.0 federated user
%% identities. Amazon AppStream 2.0 user pool and streaming URL users are
%% entitled to all applications in a stack. Entitlements don't apply to
%% the desktop stream view application, or to applications managed by a
%% dynamic app provider using the Dynamic Application Framework.
create_entitlement(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_entitlement(Client, Input, []).
create_entitlement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEntitlement">>, Input, Options).

%% @doc Creates a fleet.
%%
%% A fleet consists of streaming instances that your users access for their
%% applications and desktops.
create_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_fleet(Client, Input, []).
create_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFleet">>, Input, Options).

%% @doc Creates an image builder.
%%
%% An image builder is a virtual machine that is used to create an image.
%%
%% The initial state of the builder is `PENDING'. When it is ready, the
%% state is `RUNNING'.
create_image_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_image_builder(Client, Input, []).
create_image_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateImageBuilder">>, Input, Options).

%% @doc Creates a URL to start an image builder streaming session.
create_image_builder_streaming_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_image_builder_streaming_url(Client, Input, []).
create_image_builder_streaming_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateImageBuilderStreamingURL">>, Input, Options).

%% @doc Creates a stack to start streaming applications to users.
%%
%% A stack consists of an associated fleet, user access policies, and storage
%% configurations.
create_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stack(Client, Input, []).
create_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStack">>, Input, Options).

%% @doc Creates a temporary URL to start an AppStream 2.0 streaming session
%% for the specified user.
%%
%% A streaming URL enables application streaming to be tested without user
%% setup.
create_streaming_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_streaming_url(Client, Input, []).
create_streaming_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStreamingURL">>, Input, Options).

%% @doc Creates a new image with the latest Windows operating system updates,
%% driver updates, and AppStream 2.0 agent software.
%%
%% For more information, see the &quot;Update an Image by Using Managed
%% AppStream 2.0 Image Updates&quot; section in Administer Your AppStream 2.0
%% Images, in the Amazon AppStream 2.0 Administration Guide.
create_updated_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_updated_image(Client, Input, []).
create_updated_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUpdatedImage">>, Input, Options).

%% @doc Creates a usage report subscription.
%%
%% Usage reports are generated daily.
create_usage_report_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_usage_report_subscription(Client, Input, []).
create_usage_report_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUsageReportSubscription">>, Input, Options).

%% @doc Creates a new user in the user pool.
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc Deletes an app block.
delete_app_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app_block(Client, Input, []).
delete_app_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAppBlock">>, Input, Options).

%% @doc Deletes an app block builder.
%%
%% An app block builder can only be deleted when it has no association with
%% an app block.
delete_app_block_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app_block_builder(Client, Input, []).
delete_app_block_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAppBlockBuilder">>, Input, Options).

%% @doc Deletes an application.
delete_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application(Client, Input, []).
delete_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplication">>, Input, Options).

%% @doc Deletes the specified Directory Config object from AppStream 2.0.
%%
%% This object includes the information required to join streaming instances
%% to an Active Directory domain.
delete_directory_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_directory_config(Client, Input, []).
delete_directory_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDirectoryConfig">>, Input, Options).

%% @doc Deletes the specified entitlement.
delete_entitlement(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_entitlement(Client, Input, []).
delete_entitlement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEntitlement">>, Input, Options).

%% @doc Deletes the specified fleet.
delete_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fleet(Client, Input, []).
delete_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFleet">>, Input, Options).

%% @doc Deletes the specified image.
%%
%% You cannot delete an image when it is in use. After you delete an image,
%% you cannot provision new capacity using the image.
delete_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_image(Client, Input, []).
delete_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteImage">>, Input, Options).

%% @doc Deletes the specified image builder and releases the capacity.
delete_image_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_image_builder(Client, Input, []).
delete_image_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteImageBuilder">>, Input, Options).

%% @doc Deletes permissions for the specified private image.
%%
%% After you delete permissions for an image, AWS accounts to which you
%% previously granted these permissions can no longer use the image.
delete_image_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_image_permissions(Client, Input, []).
delete_image_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteImagePermissions">>, Input, Options).

%% @doc Deletes the specified stack.
%%
%% After the stack is deleted, the application streaming environment provided
%% by the stack is no longer available to users. Also, any reservations made
%% for application streaming sessions for the stack are released.
delete_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stack(Client, Input, []).
delete_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStack">>, Input, Options).

%% @doc Disables usage report generation.
delete_usage_report_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_usage_report_subscription(Client, Input, []).
delete_usage_report_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUsageReportSubscription">>, Input, Options).

%% @doc Deletes a user from the user pool.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Retrieves a list that describes one or more app block builder
%% associations.
describe_app_block_builder_app_block_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_app_block_builder_app_block_associations(Client, Input, []).
describe_app_block_builder_app_block_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAppBlockBuilderAppBlockAssociations">>, Input, Options).

%% @doc Retrieves a list that describes one or more app block builders.
describe_app_block_builders(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_app_block_builders(Client, Input, []).
describe_app_block_builders(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAppBlockBuilders">>, Input, Options).

%% @doc Retrieves a list that describes one or more app blocks.
describe_app_blocks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_app_blocks(Client, Input, []).
describe_app_blocks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAppBlocks">>, Input, Options).

%% @doc Retrieves a list that describes one or more application fleet
%% associations.
%%
%% Either ApplicationArn or FleetName must be specified.
describe_application_fleet_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application_fleet_associations(Client, Input, []).
describe_application_fleet_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicationFleetAssociations">>, Input, Options).

%% @doc Retrieves a list that describes one or more applications.
describe_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_applications(Client, Input, []).
describe_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplications">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified Directory
%% Config objects for AppStream 2.0, if the names for these objects are
%% provided.
%%
%% Otherwise, all Directory Config objects in the account are described.
%% These objects include the configuration information required to join
%% fleets and image builders to Microsoft Active Directory domains.
%%
%% Although the response syntax in this topic includes the account password,
%% this password is not returned in the actual response.
describe_directory_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_directory_configs(Client, Input, []).
describe_directory_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectoryConfigs">>, Input, Options).

%% @doc Retrieves a list that describes one of more entitlements.
describe_entitlements(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_entitlements(Client, Input, []).
describe_entitlements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEntitlements">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified fleets, if the
%% fleet names are provided.
%%
%% Otherwise, all fleets in the account are described.
describe_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleets(Client, Input, []).
describe_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleets">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified image builders,
%% if the image builder names are provided.
%%
%% Otherwise, all image builders in the account are described.
describe_image_builders(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_image_builders(Client, Input, []).
describe_image_builders(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImageBuilders">>, Input, Options).

%% @doc Retrieves a list that describes the permissions for shared AWS
%% account IDs on a private image that you own.
describe_image_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_image_permissions(Client, Input, []).
describe_image_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImagePermissions">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified images, if the
%% image names or image ARNs are provided.
%%
%% Otherwise, all images in the account are described.
describe_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_images(Client, Input, []).
describe_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImages">>, Input, Options).

%% @doc Retrieves a list that describes the streaming sessions for a
%% specified stack and fleet.
%%
%% If a UserId is provided for the stack and fleet, only streaming sessions
%% for that user are described. If an authentication type is not provided,
%% the default is to authenticate users using a streaming URL.
describe_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_sessions(Client, Input, []).
describe_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSessions">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified stacks, if the
%% stack names are provided.
%%
%% Otherwise, all stacks in the account are described.
describe_stacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stacks(Client, Input, []).
describe_stacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStacks">>, Input, Options).

%% @doc Retrieves a list that describes one or more usage report
%% subscriptions.
describe_usage_report_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_usage_report_subscriptions(Client, Input, []).
describe_usage_report_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUsageReportSubscriptions">>, Input, Options).

%% @doc Retrieves a list that describes the UserStackAssociation objects.
%%
%% You must specify either or both of the following:
%%
%% <ul> <li> The stack name
%%
%% </li> <li> The user name (email address of the user associated with the
%% stack) and the authentication type for the user
%%
%% </li> </ul>
describe_user_stack_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_stack_associations(Client, Input, []).
describe_user_stack_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserStackAssociations">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified users in the
%% user pool.
describe_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_users(Client, Input, []).
describe_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUsers">>, Input, Options).

%% @doc Disables the specified user in the user pool.
%%
%% Users can't sign in to AppStream 2.0 until they are re-enabled. This
%% action does not delete the user.
disable_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_user(Client, Input, []).
disable_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableUser">>, Input, Options).

%% @doc Disassociates a specified app block builder from a specified app
%% block.
disassociate_app_block_builder_app_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_app_block_builder_app_block(Client, Input, []).
disassociate_app_block_builder_app_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateAppBlockBuilderAppBlock">>, Input, Options).

%% @doc Disassociates the specified application from the fleet.
disassociate_application_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_application_fleet(Client, Input, []).
disassociate_application_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateApplicationFleet">>, Input, Options).

%% @doc Deletes the specified application from the specified entitlement.
disassociate_application_from_entitlement(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_application_from_entitlement(Client, Input, []).
disassociate_application_from_entitlement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateApplicationFromEntitlement">>, Input, Options).

%% @doc Disassociates the specified fleet from the specified stack.
disassociate_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_fleet(Client, Input, []).
disassociate_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateFleet">>, Input, Options).

%% @doc Enables a user in the user pool.
%%
%% After being enabled, users can sign in to AppStream 2.0 and open
%% applications from the stacks to which they are assigned.
enable_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_user(Client, Input, []).
enable_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableUser">>, Input, Options).

%% @doc Immediately stops the specified streaming session.
expire_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    expire_session(Client, Input, []).
expire_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExpireSession">>, Input, Options).

%% @doc Retrieves the name of the fleet that is associated with the specified
%% stack.
list_associated_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_associated_fleets(Client, Input, []).
list_associated_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociatedFleets">>, Input, Options).

%% @doc Retrieves the name of the stack with which the specified fleet is
%% associated.
list_associated_stacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_associated_stacks(Client, Input, []).
list_associated_stacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociatedStacks">>, Input, Options).

%% @doc Retrieves a list of entitled applications.
list_entitled_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_entitled_applications(Client, Input, []).
list_entitled_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEntitledApplications">>, Input, Options).

%% @doc Retrieves a list of all tags for the specified AppStream 2.0
%% resource.
%%
%% You can tag AppStream 2.0 image builders, images, fleets, and stacks.
%%
%% For more information about tags, see Tagging Your Resources in the Amazon
%% AppStream 2.0 Administration Guide.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Starts an app block builder.
%%
%% An app block builder can only be started when it's associated with an
%% app block.
%%
%% Starting an app block builder starts a new instance, which is equivalent
%% to an elastic fleet instance with application builder assistance
%% functionality.
start_app_block_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_app_block_builder(Client, Input, []).
start_app_block_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAppBlockBuilder">>, Input, Options).

%% @doc Starts the specified fleet.
start_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_fleet(Client, Input, []).
start_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFleet">>, Input, Options).

%% @doc Starts the specified image builder.
start_image_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_image_builder(Client, Input, []).
start_image_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartImageBuilder">>, Input, Options).

%% @doc Stops an app block builder.
%%
%% Stopping an app block builder terminates the instance, and the instance
%% state is not persisted.
stop_app_block_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_app_block_builder(Client, Input, []).
stop_app_block_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopAppBlockBuilder">>, Input, Options).

%% @doc Stops the specified fleet.
stop_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_fleet(Client, Input, []).
stop_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopFleet">>, Input, Options).

%% @doc Stops the specified image builder.
stop_image_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_image_builder(Client, Input, []).
stop_image_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopImageBuilder">>, Input, Options).

%% @doc Adds or overwrites one or more tags for the specified AppStream 2.0
%% resource.
%%
%% You can tag AppStream 2.0 image builders, images, fleets, and stacks.
%%
%% Each tag consists of a key and an optional value. If a resource already
%% has a tag with the same key, this operation updates its value.
%%
%% To list the current tags for your resources, use
%% `ListTagsForResource'. To disassociate tags from your resources, use
%% `UntagResource'.
%%
%% For more information about tags, see Tagging Your Resources in the Amazon
%% AppStream 2.0 Administration Guide.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Disassociates one or more specified tags from the specified AppStream
%% 2.0 resource.
%%
%% To list the current tags for your resources, use
%% `ListTagsForResource'.
%%
%% For more information about tags, see Tagging Your Resources in the Amazon
%% AppStream 2.0 Administration Guide.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an app block builder.
%%
%% If the app block builder is in the `STARTING' or `STOPPING' state,
%% you can't update it. If the app block builder is in the `RUNNING'
%% state, you can only update the DisplayName and Description. If the app
%% block builder is in the `STOPPED' state, you can update any attribute
%% except the Name.
update_app_block_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_app_block_builder(Client, Input, []).
update_app_block_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAppBlockBuilder">>, Input, Options).

%% @doc Updates the specified application.
update_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application(Client, Input, []).
update_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplication">>, Input, Options).

%% @doc Updates the specified Directory Config object in AppStream 2.0.
%%
%% This object includes the configuration information required to join fleets
%% and image builders to Microsoft Active Directory domains.
update_directory_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_directory_config(Client, Input, []).
update_directory_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDirectoryConfig">>, Input, Options).

%% @doc Updates the specified entitlement.
update_entitlement(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_entitlement(Client, Input, []).
update_entitlement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEntitlement">>, Input, Options).

%% @doc Updates the specified fleet.
%%
%% If the fleet is in the `STOPPED' state, you can update any attribute
%% except the fleet name.
%%
%% If the fleet is in the `RUNNING' state, you can update the following
%% based on the fleet type:
%%
%% <ul> <li> Always-On and On-Demand fleet types
%%
%% You can update the `DisplayName', `ComputeCapacity',
%% `ImageARN', `ImageName', `IdleDisconnectTimeoutInSeconds', and
%% `DisconnectTimeoutInSeconds' attributes.
%%
%% </li> <li> Elastic fleet type
%%
%% You can update the `DisplayName',
%% `IdleDisconnectTimeoutInSeconds', `DisconnectTimeoutInSeconds',
%% `MaxConcurrentSessions', `SessionScriptS3Location' and
%% `UsbDeviceFilterStrings' attributes.
%%
%% </li> </ul> If the fleet is in the `STARTING' or `STOPPED' state,
%% you can't update it.
update_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_fleet(Client, Input, []).
update_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFleet">>, Input, Options).

%% @doc Adds or updates permissions for the specified private image.
update_image_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_image_permissions(Client, Input, []).
update_image_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateImagePermissions">>, Input, Options).

%% @doc Updates the specified fields for the specified stack.
update_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stack(Client, Input, []).
update_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStack">>, Input, Options).

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
    Client1 = Client#{service => <<"appstream">>},
    Host = build_host(<<"appstream2">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"PhotonAdminProxyService.", Action/binary>>}
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
