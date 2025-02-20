%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Organizations is a web service that enables you to consolidate your
%% multiple Amazon Web Services accounts into an organization and centrally
%% manage your accounts and their resources.
%%
%% This guide provides descriptions of the Organizations operations. For more
%% information about using this service, see the Organizations User Guide.
%%
%% Support and feedback for Organizations
%%
%% We welcome your feedback. Send your comments to
%% feedback-awsorganizations@amazon.com or post your feedback and questions
%% in the Organizations support forum. For more information about the Amazon
%% Web Services support forums, see Forums Help.
%%
%% Endpoint to call When using the CLI or the Amazon Web Services SDK
%%
%% For the current release of Organizations, specify the `us-east-1'
%% region for all Amazon Web Services API and CLI calls made from the
%% commercial Amazon Web Services Regions outside of China. If calling from
%% one of the Amazon Web Services Regions in China, then specify
%% `cn-northwest-1'. You can do this in the CLI by using these parameters
%% and commands:
%%
%% <ul> <li> Use the following parameter with each command to specify both
%% the endpoint and its region:
%%
%% `--endpoint-url https://organizations.us-east-1.amazonaws.com' (from
%% commercial Amazon Web Services Regions outside of China)
%%
%% or
%%
%% `--endpoint-url https://organizations.cn-northwest-1.amazonaws.com.cn'
%% (from Amazon Web Services Regions in China)
%%
%% </li> <li> Use the default endpoint, but configure your default region
%% with this command:
%%
%% `aws configure set default.region us-east-1' (from commercial Amazon
%% Web Services Regions outside of China)
%%
%% or
%%
%% `aws configure set default.region cn-northwest-1' (from Amazon Web
%% Services Regions in China)
%%
%% </li> <li> Use the following parameter with each command to specify the
%% endpoint:
%%
%% `--region us-east-1' (from commercial Amazon Web Services Regions
%% outside of China)
%%
%% or
%%
%% `--region cn-northwest-1' (from Amazon Web Services Regions in China)
%%
%% </li> </ul> Recording API Requests
%%
%% Organizations supports CloudTrail, a service that records Amazon Web
%% Services API calls for your Amazon Web Services account and delivers log
%% files to an Amazon S3 bucket. By using information collected by
%% CloudTrail, you can determine which requests the Organizations service
%% received, who made the request and when, and so on. For more about
%% Organizations and its support for CloudTrail, see Logging Organizations
%% API calls with CloudTrail in the Organizations User Guide. To learn more
%% about CloudTrail, including how to turn it on and find your log files, see
%% the CloudTrail User Guide.
-module(aws_organizations).

-export([accept_handshake/2,
         accept_handshake/3,
         attach_policy/2,
         attach_policy/3,
         cancel_handshake/2,
         cancel_handshake/3,
         close_account/2,
         close_account/3,
         create_account/2,
         create_account/3,
         create_gov_cloud_account/2,
         create_gov_cloud_account/3,
         create_organization/2,
         create_organization/3,
         create_organizational_unit/2,
         create_organizational_unit/3,
         create_policy/2,
         create_policy/3,
         decline_handshake/2,
         decline_handshake/3,
         delete_organization/2,
         delete_organization/3,
         delete_organizational_unit/2,
         delete_organizational_unit/3,
         delete_policy/2,
         delete_policy/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         deregister_delegated_administrator/2,
         deregister_delegated_administrator/3,
         describe_account/2,
         describe_account/3,
         describe_create_account_status/2,
         describe_create_account_status/3,
         describe_effective_policy/2,
         describe_effective_policy/3,
         describe_handshake/2,
         describe_handshake/3,
         describe_organization/2,
         describe_organization/3,
         describe_organizational_unit/2,
         describe_organizational_unit/3,
         describe_policy/2,
         describe_policy/3,
         describe_resource_policy/2,
         describe_resource_policy/3,
         detach_policy/2,
         detach_policy/3,
         disable_aws_service_access/2,
         disable_aws_service_access/3,
         disable_policy_type/2,
         disable_policy_type/3,
         enable_all_features/2,
         enable_all_features/3,
         enable_aws_service_access/2,
         enable_aws_service_access/3,
         enable_policy_type/2,
         enable_policy_type/3,
         invite_account_to_organization/2,
         invite_account_to_organization/3,
         leave_organization/2,
         leave_organization/3,
         list_accounts/2,
         list_accounts/3,
         list_accounts_for_parent/2,
         list_accounts_for_parent/3,
         list_aws_service_access_for_organization/2,
         list_aws_service_access_for_organization/3,
         list_children/2,
         list_children/3,
         list_create_account_status/2,
         list_create_account_status/3,
         list_delegated_administrators/2,
         list_delegated_administrators/3,
         list_delegated_services_for_account/2,
         list_delegated_services_for_account/3,
         list_handshakes_for_account/2,
         list_handshakes_for_account/3,
         list_handshakes_for_organization/2,
         list_handshakes_for_organization/3,
         list_organizational_units_for_parent/2,
         list_organizational_units_for_parent/3,
         list_parents/2,
         list_parents/3,
         list_policies/2,
         list_policies/3,
         list_policies_for_target/2,
         list_policies_for_target/3,
         list_roots/2,
         list_roots/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_targets_for_policy/2,
         list_targets_for_policy/3,
         move_account/2,
         move_account/3,
         put_resource_policy/2,
         put_resource_policy/3,
         register_delegated_administrator/2,
         register_delegated_administrator/3,
         remove_account_from_organization/2,
         remove_account_from_organization/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_organizational_unit/2,
         update_organizational_unit/3,
         update_policy/2,
         update_policy/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Sends a response to the originator of a handshake agreeing to the
%% action proposed by the handshake request.
%%
%% You can only call this operation by the following principals when they
%% also have the relevant IAM permissions:
%%
%% <ul> <li> Invitation to join or Approve all features request handshakes:
%% only a principal from the member account.
%%
%% The user who calls the API for an invitation to join must have the
%% `organizations:AcceptHandshake' permission. If you enabled all
%% features in the organization, the user must also have the
%% `iam:CreateServiceLinkedRole' permission so that Organizations can
%% create the required service-linked role named
%% `AWSServiceRoleForOrganizations'. For more information, see
%% Organizations and service-linked roles in the Organizations User Guide.
%%
%% </li> <li> Enable all features final confirmation handshake: only a
%% principal from the management account.
%%
%% For more information about invitations, see Inviting an Amazon Web
%% Services account to join your organization in the Organizations User
%% Guide. For more information about requests to enable all features in the
%% organization, see Enabling all features in your organization in the
%% Organizations User Guide.
%%
%% </li> </ul> After you accept a handshake, it continues to appear in the
%% results of relevant APIs for only 30 days. After that, it's deleted.
accept_handshake(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_handshake(Client, Input, []).
accept_handshake(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptHandshake">>, Input, Options).

%% @doc Attaches a policy to a root, an organizational unit (OU), or an
%% individual account.
%%
%% How the policy affects accounts depends on the type of policy. Refer to
%% the Organizations User Guide for information about each policy type:
%%
%% <ul> <li> AISERVICES_OPT_OUT_POLICY
%%
%% </li> <li> BACKUP_POLICY
%%
%% </li> <li> SERVICE_CONTROL_POLICY
%%
%% </li> <li> TAG_POLICY
%%
%% </li> </ul> This operation can be called only from the organization's
%% management account or by a member account that is a delegated
%% administrator for an Amazon Web Services service.
attach_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_policy(Client, Input, []).
attach_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachPolicy">>, Input, Options).

%% @doc Cancels a handshake.
%%
%% Canceling a handshake sets the handshake state to `CANCELED'.
%%
%% This operation can be called only from the account that originated the
%% handshake. The recipient of the handshake can't cancel it, but can use
%% `DeclineHandshake' instead. After a handshake is canceled, the
%% recipient can no longer respond to that handshake.
%%
%% After you cancel a handshake, it continues to appear in the results of
%% relevant APIs for only 30 days. After that, it's deleted.
cancel_handshake(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_handshake(Client, Input, []).
cancel_handshake(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelHandshake">>, Input, Options).

%% @doc Closes an Amazon Web Services member account within an organization.
%%
%% You can close an account when all features are enabled . You can't
%% close the management account with this API. This is an asynchronous
%% request that Amazon Web Services performs in the background. Because
%% `CloseAccount' operates asynchronously, it can return a successful
%% completion message even though account closure might still be in progress.
%% You need to wait a few minutes before the account is fully closed. To
%% check the status of the request, do one of the following:
%%
%% <ul> <li> Use the `AccountId' that you sent in the `CloseAccount'
%% request to provide as a parameter to the `DescribeAccount' operation.
%%
%% While the close account request is in progress, Account status will
%% indicate PENDING_CLOSURE. When the close account request completes, the
%% status will change to SUSPENDED.
%%
%% </li> <li> Check the CloudTrail log for the `CloseAccountResult' event
%% that gets published after the account closes successfully. For information
%% on using CloudTrail with Organizations, see Logging and monitoring in
%% Organizations in the Organizations User Guide.
%%
%% </li> </ul> You can close only 10% of member accounts, between 10 and 200,
%% within a rolling 30 day period. This quota is not bound by a calendar
%% month, but starts when you close an account. After you reach this limit,
%% you can close additional accounts. For more information, see Closing a
%% member account in your organization in the Organizations User Guide.
%%
%% To reinstate a closed account, contact Amazon Web Services Support within
%% the 90-day grace period while the account is in SUSPENDED status.
%%
%% If the Amazon Web Services account you attempt to close is linked to an
%% Amazon Web Services GovCloud (US) account, the `CloseAccount' request
%% will close both accounts. To learn important pre-closure details, see
%% Closing an Amazon Web Services GovCloud (US) account in the Amazon Web
%% Services GovCloud User Guide.
close_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    close_account(Client, Input, []).
close_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CloseAccount">>, Input, Options).

%% @doc Creates an Amazon Web Services account that is automatically a member
%% of the organization whose credentials made the request.
%%
%% This is an asynchronous request that Amazon Web Services performs in the
%% background. Because `CreateAccount' operates asynchronously, it can
%% return a successful completion message even though account initialization
%% might still be in progress. You might need to wait a few minutes before
%% you can successfully access the account. To check the status of the
%% request, do one of the following:
%%
%% <ul> <li> Use the `Id' value of the `CreateAccountStatus' response
%% element from this operation to provide as a parameter to the
%% `DescribeCreateAccountStatus' operation.
%%
%% </li> <li> Check the CloudTrail log for the `CreateAccountResult'
%% event. For information on using CloudTrail with Organizations, see Logging
%% and monitoring in Organizations in the Organizations User Guide.
%%
%% </li> </ul> The user who calls the API to create an account must have the
%% `organizations:CreateAccount' permission. If you enabled all features
%% in the organization, Organizations creates the required service-linked
%% role named `AWSServiceRoleForOrganizations'. For more information, see
%% Organizations and service-linked roles in the Organizations User Guide.
%%
%% If the request includes tags, then the requester must have the
%% `organizations:TagResource' permission.
%%
%% Organizations preconfigures the new member account with a role (named
%% `OrganizationAccountAccessRole' by default) that grants users in the
%% management account administrator permissions in the new member account.
%% Principals in the management account can assume the role. Organizations
%% clones the company name and address information for the new account from
%% the organization's management account.
%%
%% This operation can be called only from the organization's management
%% account.
%%
%% For more information about creating accounts, see Creating a member
%% account in your organization in the Organizations User Guide.
%%
%% When you create an account in an organization using the Organizations
%% console, API, or CLI commands, the information required for the account to
%% operate as a standalone account, such as a payment method and signing the
%% end user license agreement (EULA) is not automatically collected. If you
%% must remove an account from your organization later, you can do so only
%% after you provide the missing information. For more information, see
%% Considerations before removing an account from an organization in the
%% Organizations User Guide.
%%
%% If you get an exception that indicates that you exceeded your account
%% limits for the organization, contact Amazon Web Services Support.
%%
%% If you get an exception that indicates that the operation failed because
%% your organization is still initializing, wait one hour and then try again.
%% If the error persists, contact Amazon Web Services Support.
%%
%% Using `CreateAccount' to create multiple temporary accounts isn't
%% recommended. You can only close an account from the Billing and Cost
%% Management console, and you must be signed in as the root user. For
%% information on the requirements and process for closing an account, see
%% Closing a member account in your organization in the Organizations User
%% Guide.
%%
%% When you create a member account with this operation, you can choose
%% whether to create the account with the IAM User and Role Access to Billing
%% Information switch enabled. If you enable it, IAM users and roles that
%% have appropriate permissions can view billing information for the account.
%% If you disable it, only the account root user can access billing
%% information. For information about how to disable this switch for an
%% account, see Granting access to your billing information and tools.
create_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_account(Client, Input, []).
create_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccount">>, Input, Options).

%% @doc This action is available if all of the following are true:
%%
%% <ul> <li> You're authorized to create accounts in the Amazon Web
%% Services GovCloud (US) Region.
%%
%% For more information on the Amazon Web Services GovCloud (US) Region, see
%% the Amazon Web Services GovCloud User Guide.
%%
%% </li> <li> You already have an account in the Amazon Web Services GovCloud
%% (US) Region that is paired with a management account of an organization in
%% the commercial Region.
%%
%% </li> <li> You call this action from the management account of your
%% organization in the commercial Region.
%%
%% </li> <li> You have the `organizations:CreateGovCloudAccount'
%% permission.
%%
%% </li> </ul> Organizations automatically creates the required
%% service-linked role named `AWSServiceRoleForOrganizations'. For more
%% information, see Organizations and service-linked roles in the
%% Organizations User Guide.
%%
%% Amazon Web Services automatically enables CloudTrail for Amazon Web
%% Services GovCloud (US) accounts, but you should also do the following:
%%
%% <ul> <li> Verify that CloudTrail is enabled to store logs.
%%
%% </li> <li> Create an Amazon S3 bucket for CloudTrail log storage.
%%
%% For more information, see Verifying CloudTrail Is Enabled in the Amazon
%% Web Services GovCloud User Guide.
%%
%% </li> </ul> If the request includes tags, then the requester must have the
%% `organizations:TagResource' permission. The tags are attached to the
%% commercial account associated with the GovCloud account, rather than the
%% GovCloud account itself. To add tags to the GovCloud account, call the
%% `TagResource' operation in the GovCloud Region after the new GovCloud
%% account exists.
%%
%% You call this action from the management account of your organization in
%% the commercial Region to create a standalone Amazon Web Services account
%% in the Amazon Web Services GovCloud (US) Region. After the account is
%% created, the management account of an organization in the Amazon Web
%% Services GovCloud (US) Region can invite it to that organization. For more
%% information on inviting standalone accounts in the Amazon Web Services
%% GovCloud (US) to join an organization, see Organizations in the Amazon Web
%% Services GovCloud User Guide.
%%
%% Calling `CreateGovCloudAccount' is an asynchronous request that Amazon
%% Web Services performs in the background. Because
%% `CreateGovCloudAccount' operates asynchronously, it can return a
%% successful completion message even though account initialization might
%% still be in progress. You might need to wait a few minutes before you can
%% successfully access the account. To check the status of the request, do
%% one of the following:
%%
%% <ul> <li> Use the `OperationId' response element from this operation
%% to provide as a parameter to the `DescribeCreateAccountStatus'
%% operation.
%%
%% </li> <li> Check the CloudTrail log for the `CreateAccountResult'
%% event. For information on using CloudTrail with Organizations, see Logging
%% and monitoring in Organizations in the Organizations User Guide.
%%
%% </li> </ul>
%%
%% When you call the `CreateGovCloudAccount' action, you create two
%% accounts: a standalone account in the Amazon Web Services GovCloud (US)
%% Region and an associated account in the commercial Region for billing and
%% support purposes. The account in the commercial Region is automatically a
%% member of the organization whose credentials made the request. Both
%% accounts are associated with the same email address.
%%
%% A role is created in the new account in the commercial Region that allows
%% the management account in the organization in the commercial Region to
%% assume it. An Amazon Web Services GovCloud (US) account is then created
%% and associated with the commercial account that you just created. A role
%% is also created in the new Amazon Web Services GovCloud (US) account that
%% can be assumed by the Amazon Web Services GovCloud (US) account that is
%% associated with the management account of the commercial organization. For
%% more information and to view a diagram that explains how account access
%% works, see Organizations in the Amazon Web Services GovCloud User Guide.
%%
%% For more information about creating accounts, see Creating a member
%% account in your organization in the Organizations User Guide.
%%
%% When you create an account in an organization using the Organizations
%% console, API, or CLI commands, the information required for the account to
%% operate as a standalone account is not automatically collected. This
%% includes a payment method and signing the end user license agreement
%% (EULA). If you must remove an account from your organization later, you
%% can do so only after you provide the missing information. For more
%% information, see Considerations before removing an account from an
%% organization in the Organizations User Guide.
%%
%% If you get an exception that indicates that you exceeded your account
%% limits for the organization, contact Amazon Web Services Support.
%%
%% If you get an exception that indicates that the operation failed because
%% your organization is still initializing, wait one hour and then try again.
%% If the error persists, contact Amazon Web Services Support.
%%
%% Using `CreateGovCloudAccount' to create multiple temporary accounts
%% isn't recommended. You can only close an account from the Amazon Web
%% Services Billing and Cost Management console, and you must be signed in as
%% the root user. For information on the requirements and process for closing
%% an account, see Closing a member account in your organization in the
%% Organizations User Guide.
%%
%% When you create a member account with this operation, you can choose
%% whether to create the account with the IAM User and Role Access to Billing
%% Information switch enabled. If you enable it, IAM users and roles that
%% have appropriate permissions can view billing information for the account.
%% If you disable it, only the account root user can access billing
%% information. For information about how to disable this switch for an
%% account, see Granting access to your billing information and tools.
create_gov_cloud_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_gov_cloud_account(Client, Input, []).
create_gov_cloud_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGovCloudAccount">>, Input, Options).

%% @doc Creates an Amazon Web Services organization.
%%
%% The account whose user is calling the `CreateOrganization' operation
%% automatically becomes the management account of the new organization.
%%
%% This operation must be called using credentials from the account that is
%% to become the new organization's management account. The principal
%% must also have the relevant IAM permissions.
%%
%% By default (or if you set the `FeatureSet' parameter to `ALL'),
%% the new organization is created with all features enabled and service
%% control policies automatically enabled in the root. If you instead choose
%% to create the organization supporting only the consolidated billing
%% features by setting the `FeatureSet' parameter to
%% `CONSOLIDATED_BILLING', no policy types are enabled by default and you
%% can't use organization policies.
create_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_organization(Client, Input, []).
create_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOrganization">>, Input, Options).

%% @doc Creates an organizational unit (OU) within a root or parent OU.
%%
%% An OU is a container for accounts that enables you to organize your
%% accounts to apply policies according to your business requirements. The
%% number of levels deep that you can nest OUs is dependent upon the policy
%% types enabled for that root. For service control policies, the limit is
%% five.
%%
%% For more information about OUs, see Managing organizational units (OUs) in
%% the Organizations User Guide.
%%
%% If the request includes tags, then the requester must have the
%% `organizations:TagResource' permission.
%%
%% This operation can be called only from the organization's management
%% account.
create_organizational_unit(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_organizational_unit(Client, Input, []).
create_organizational_unit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOrganizationalUnit">>, Input, Options).

%% @doc Creates a policy of a specified type that you can attach to a root,
%% an organizational unit (OU), or an individual Amazon Web Services account.
%%
%% For more information about policies and their use, see Managing
%% Organizations policies.
%%
%% If the request includes tags, then the requester must have the
%% `organizations:TagResource' permission.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
create_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_policy(Client, Input, []).
create_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePolicy">>, Input, Options).

%% @doc Declines a handshake request.
%%
%% This sets the handshake state to `DECLINED' and effectively
%% deactivates the request.
%%
%% This operation can be called only from the account that received the
%% handshake. The originator of the handshake can use `CancelHandshake'
%% instead. The originator can't reactivate a declined request, but can
%% reinitiate the process with a new handshake request.
%%
%% After you decline a handshake, it continues to appear in the results of
%% relevant APIs for only 30 days. After that, it's deleted.
decline_handshake(Client, Input)
  when is_map(Client), is_map(Input) ->
    decline_handshake(Client, Input, []).
decline_handshake(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeclineHandshake">>, Input, Options).

%% @doc Deletes the organization.
%%
%% You can delete an organization only by using credentials from the
%% management account. The organization must be empty of member accounts.
delete_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_organization(Client, Input, []).
delete_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOrganization">>, Input, Options).

%% @doc Deletes an organizational unit (OU) from a root or another OU.
%%
%% You must first remove all accounts and child OUs from the OU that you want
%% to delete.
%%
%% This operation can be called only from the organization's management
%% account.
delete_organizational_unit(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_organizational_unit(Client, Input, []).
delete_organizational_unit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOrganizationalUnit">>, Input, Options).

%% @doc Deletes the specified policy from your organization.
%%
%% Before you perform this operation, you must first detach the policy from
%% all organizational units (OUs), roots, and accounts.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
delete_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy(Client, Input, []).
delete_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicy">>, Input, Options).

%% @doc Deletes the resource policy from your organization.
%%
%% You can only call this operation from the organization's management
%% account.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Removes the specified member Amazon Web Services account as a
%% delegated administrator for the specified Amazon Web Services service.
%%
%% Deregistering a delegated administrator can have unintended impacts on the
%% functionality of the enabled Amazon Web Services service. See the
%% documentation for the enabled service before you deregister a delegated
%% administrator so that you understand any potential impacts.
%%
%% You can run this action only for Amazon Web Services services that support
%% this feature. For a current list of services that support it, see the
%% column Supports Delegated Administrator in the table at Amazon Web
%% Services Services that you can use with Organizations in the Organizations
%% User Guide.
%%
%% This operation can be called only from the organization's management
%% account.
deregister_delegated_administrator(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_delegated_administrator(Client, Input, []).
deregister_delegated_administrator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterDelegatedAdministrator">>, Input, Options).

%% @doc Retrieves Organizations-related information about the specified
%% account.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
describe_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account(Client, Input, []).
describe_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccount">>, Input, Options).

%% @doc Retrieves the current status of an asynchronous request to create an
%% account.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
describe_create_account_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_create_account_status(Client, Input, []).
describe_create_account_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCreateAccountStatus">>, Input, Options).

%% @doc Returns the contents of the effective policy for specified policy
%% type and account.
%%
%% The effective policy is the aggregation of any policies of the specified
%% type that the account inherits, plus any policy of that type that is
%% directly attached to the account.
%%
%% This operation applies only to policy types other than service control
%% policies (SCPs).
%%
%% For more information about policy inheritance, see Understanding
%% management policy inheritance in the Organizations User Guide.
%%
%% This operation can be called from any account in the organization.
describe_effective_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_effective_policy(Client, Input, []).
describe_effective_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEffectivePolicy">>, Input, Options).

%% @doc Retrieves information about a previously requested handshake.
%%
%% The handshake ID comes from the response to the original
%% `InviteAccountToOrganization' operation that generated the handshake.
%%
%% You can access handshakes that are `ACCEPTED', `DECLINED', or
%% `CANCELED' for only 30 days after they change to that state.
%% They're then deleted and no longer accessible.
%%
%% This operation can be called from any account in the organization.
describe_handshake(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_handshake(Client, Input, []).
describe_handshake(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHandshake">>, Input, Options).

%% @doc Retrieves information about the organization that the user's
%% account belongs to.
%%
%% This operation can be called from any account in the organization.
%%
%% Even if a policy type is shown as available in the organization, you can
%% disable it separately at the root level with `DisablePolicyType'. Use
%% `ListRoots' to see the status of policy types for a specified root.
describe_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organization(Client, Input, []).
describe_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganization">>, Input, Options).

%% @doc Retrieves information about an organizational unit (OU).
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
describe_organizational_unit(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organizational_unit(Client, Input, []).
describe_organizational_unit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganizationalUnit">>, Input, Options).

%% @doc Retrieves information about a policy.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
describe_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_policy(Client, Input, []).
describe_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePolicy">>, Input, Options).

%% @doc Retrieves information about a resource policy.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
describe_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource_policy(Client, Input, []).
describe_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResourcePolicy">>, Input, Options).

%% @doc Detaches a policy from a target root, organizational unit (OU), or
%% account.
%%
%% If the policy being detached is a service control policy (SCP), the
%% changes to permissions for Identity and Access Management (IAM) users and
%% roles in affected accounts are immediate.
%%
%% Every root, OU, and account must have at least one SCP attached. If you
%% want to replace the default `FullAWSAccess' policy with an SCP that
%% limits the permissions that can be delegated, you must attach the
%% replacement SCP before you can remove the default SCP. This is the
%% authorization strategy of an &quot;allow list&quot;. If you instead attach
%% a second SCP and leave the `FullAWSAccess' SCP still attached, and
%% specify `&quot;Effect&quot;: &quot;Deny&quot;' in the second SCP to
%% override the `&quot;Effect&quot;: &quot;Allow&quot;' in the
%% `FullAWSAccess' policy (or any other attached SCP), you're using
%% the authorization strategy of a &quot;deny list&quot;.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
detach_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_policy(Client, Input, []).
detach_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachPolicy">>, Input, Options).

%% @doc Disables the integration of an Amazon Web Services service (the
%% service that is specified by `ServicePrincipal') with Organizations.
%%
%% When you disable integration, the specified service no longer can create a
%% service-linked role in new accounts in your organization. This means the
%% service can't perform operations on your behalf on any new accounts in
%% your organization. The service can still perform operations in older
%% accounts until the service completes its clean-up from Organizations.
%%
%% We strongly recommend that you don't use this command to disable
%% integration between Organizations and the specified Amazon Web Services
%% service. Instead, use the console or commands that are provided by the
%% specified service. This lets the trusted service perform any required
%% initialization when enabling trusted access, such as creating any required
%% resources and any required clean up of resources when disabling trusted
%% access.
%%
%% For information about how to disable trusted service access to your
%% organization using the trusted service, see the Learn more link under the
%% Supports Trusted Access column at Amazon Web Services services that you
%% can use with Organizations. on this page.
%%
%% If you disable access by using this command, it causes the following
%% actions to occur:
%%
%% The service can no longer create a service-linked role in the accounts in
%% your organization. This means that the service can't perform
%% operations on your behalf on any new accounts in your organization. The
%% service can still perform operations in older accounts until the service
%% completes its clean-up from Organizations.
%%
%% The service can no longer perform tasks in the member accounts in the
%% organization, unless those operations are explicitly permitted by the IAM
%% policies that are attached to your roles. This includes any data
%% aggregation from the member accounts to the management account, or to a
%% delegated administrator account, where relevant.
%%
%% Some services detect this and clean up any remaining data or resources
%% related to the integration, while other services stop accessing the
%% organization but leave any historical data and configuration in place to
%% support a possible re-enabling of the integration.
%%
%% Using the other service's console or commands to disable the
%% integration ensures that the other service is aware that it can clean up
%% any resources that are required only for the integration. How the service
%% cleans up its resources in the organization's accounts depends on that
%% service. For more information, see the documentation for the other Amazon
%% Web Services service.
%%
%% After you perform the `DisableAWSServiceAccess' operation, the
%% specified service can no longer perform operations in your
%% organization's accounts
%%
%% For more information about integrating other services with Organizations,
%% including the list of services that work with Organizations, see Using
%% Organizations with other Amazon Web Services services in the Organizations
%% User Guide.
%%
%% This operation can be called only from the organization's management
%% account.
disable_aws_service_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_aws_service_access(Client, Input, []).
disable_aws_service_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableAWSServiceAccess">>, Input, Options).

%% @doc Disables an organizational policy type in a root.
%%
%% A policy of a certain type can be attached to entities in a root only if
%% that type is enabled in the root. After you perform this operation, you no
%% longer can attach policies of the specified type to that root or to any
%% organizational unit (OU) or account in that root. You can undo this by
%% using the `EnablePolicyType' operation.
%%
%% This is an asynchronous request that Amazon Web Services performs in the
%% background. If you disable a policy type for a root, it still appears
%% enabled for the organization if all features are enabled for the
%% organization. Amazon Web Services recommends that you first use
%% `ListRoots' to see the status of policy types for a specified root,
%% and then use this operation.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
%%
%% To view the status of available policy types in the organization, use
%% `DescribeOrganization'.
disable_policy_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_policy_type(Client, Input, []).
disable_policy_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisablePolicyType">>, Input, Options).

%% @doc Enables all features in an organization.
%%
%% This enables the use of organization policies that can restrict the
%% services and actions that can be called in each account. Until you enable
%% all features, you have access only to consolidated billing, and you
%% can't use any of the advanced account administration features that
%% Organizations supports. For more information, see Enabling all features in
%% your organization in the Organizations User Guide.
%%
%% This operation is required only for organizations that were created
%% explicitly with only the consolidated billing features enabled. Calling
%% this operation sends a handshake to every invited account in the
%% organization. The feature set change can be finalized and the additional
%% features enabled only after all administrators in the invited accounts
%% approve the change by accepting the handshake.
%%
%% After you enable all features, you can separately enable or disable
%% individual policy types in a root using `EnablePolicyType' and
%% `DisablePolicyType'. To see the status of policy types in a root, use
%% `ListRoots'.
%%
%% After all invited member accounts accept the handshake, you finalize the
%% feature set change by accepting the handshake that contains
%% `&quot;Action&quot;: &quot;ENABLE_ALL_FEATURES&quot;'. This completes
%% the change.
%%
%% After you enable all features in your organization, the management account
%% in the organization can apply policies on all member accounts. These
%% policies can restrict what users and even administrators in those accounts
%% can do. The management account can apply policies that prevent accounts
%% from leaving the organization. Ensure that your account administrators are
%% aware of this.
%%
%% This operation can be called only from the organization's management
%% account.
enable_all_features(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_all_features(Client, Input, []).
enable_all_features(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableAllFeatures">>, Input, Options).

%% @doc Enables the integration of an Amazon Web Services service (the
%% service that is specified by `ServicePrincipal') with Organizations.
%%
%% When you enable integration, you allow the specified service to create a
%% service-linked role in all the accounts in your organization. This allows
%% the service to perform operations on your behalf in your organization and
%% its accounts.
%%
%% We recommend that you enable integration between Organizations and the
%% specified Amazon Web Services service by using the console or commands
%% that are provided by the specified service. Doing so ensures that the
%% service is aware that it can create the resources that are required for
%% the integration. How the service creates those resources in the
%% organization's accounts depends on that service. For more information,
%% see the documentation for the other Amazon Web Services service.
%%
%% For more information about enabling services to integrate with
%% Organizations, see Using Organizations with other Amazon Web Services
%% services in the Organizations User Guide.
%%
%% You can only call this operation from the organization's management
%% account and only if the organization has enabled all features.
enable_aws_service_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_aws_service_access(Client, Input, []).
enable_aws_service_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableAWSServiceAccess">>, Input, Options).

%% @doc Enables a policy type in a root.
%%
%% After you enable a policy type in a root, you can attach policies of that
%% type to the root, any organizational unit (OU), or account in that root.
%% You can undo this by using the `DisablePolicyType' operation.
%%
%% This is an asynchronous request that Amazon Web Services performs in the
%% background. Amazon Web Services recommends that you first use
%% `ListRoots' to see the status of policy types for a specified root,
%% and then use this operation.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
%%
%% You can enable a policy type in a root only if that policy type is
%% available in the organization. To view the status of available policy
%% types in the organization, use `DescribeOrganization'.
enable_policy_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_policy_type(Client, Input, []).
enable_policy_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnablePolicyType">>, Input, Options).

%% @doc Sends an invitation to another account to join your organization as a
%% member account.
%%
%% Organizations sends email on your behalf to the email address that is
%% associated with the other account's owner. The invitation is
%% implemented as a `Handshake' whose details are in the response.
%%
%% You can invite Amazon Web Services accounts only from the same seller as
%% the management account. For example, if your organization's management
%% account was created by Amazon Internet Services Pvt. Ltd (AISPL), an
%% Amazon Web Services seller in India, you can invite only other AISPL
%% accounts to your organization. You can't combine accounts from AISPL
%% and Amazon Web Services or from any other Amazon Web Services seller. For
%% more information, see Consolidated billing in India.
%%
%% If you receive an exception that indicates that you exceeded your account
%% limits for the organization or that the operation failed because your
%% organization is still initializing, wait one hour and then try again. If
%% the error persists after an hour, contact Amazon Web Services Support.
%%
%% If the request includes tags, then the requester must have the
%% `organizations:TagResource' permission.
%%
%% This operation can be called only from the organization's management
%% account.
invite_account_to_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    invite_account_to_organization(Client, Input, []).
invite_account_to_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InviteAccountToOrganization">>, Input, Options).

%% @doc Removes a member account from its parent organization.
%%
%% This version of the operation is performed by the account that wants to
%% leave. To remove a member account as a user in the management account, use
%% `RemoveAccountFromOrganization' instead.
%%
%% This operation can be called only from a member account in the
%% organization.
%%
%% The management account in an organization with all features enabled can
%% set service control policies (SCPs) that can restrict what administrators
%% of member accounts can do. This includes preventing them from successfully
%% calling `LeaveOrganization' and leaving the organization.
%%
%% You can leave an organization as a member account only if the account is
%% configured with the information required to operate as a standalone
%% account. When you create an account in an organization using the
%% Organizations console, API, or CLI commands, the information required of
%% standalone accounts is not automatically collected. For each account that
%% you want to make standalone, you must perform the following steps. If any
%% of the steps are already completed for this account, that step doesn't
%% appear.
%%
%% Choose a support plan
%%
%% Provide and verify the required contact information
%%
%% Provide a current payment method
%%
%% Amazon Web Services uses the payment method to charge for any billable
%% (not free tier) Amazon Web Services activity that occurs while the account
%% isn't attached to an organization. For more information, see
%% Considerations before removing an account from an organization in the
%% Organizations User Guide.
%%
%% The account that you want to leave must not be a delegated administrator
%% account for any Amazon Web Services service enabled for your organization.
%% If the account is a delegated administrator, you must first change the
%% delegated administrator account to another account that is remaining in
%% the organization.
%%
%% You can leave an organization only after you enable IAM user access to
%% billing in your account. For more information, see About IAM access to the
%% Billing and Cost Management console in the Amazon Web Services Billing and
%% Cost Management User Guide.
%%
%% After the account leaves the organization, all tags that were attached to
%% the account object in the organization are deleted. Amazon Web Services
%% accounts outside of an organization do not support tags.
%%
%% A newly created account has a waiting period before it can be removed from
%% its organization. If you get an error that indicates that a wait period is
%% required, then try again in a few days.
%%
%% If you are using an organization principal to call `LeaveOrganization'
%% across multiple accounts, you can only do this up to 5 accounts per second
%% in a single organization.
leave_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    leave_organization(Client, Input, []).
leave_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"LeaveOrganization">>, Input, Options).

%% @doc Lists all the accounts in the organization.
%%
%% To request only the accounts in a specified root or organizational unit
%% (OU), use the `ListAccountsForParent' operation instead.
%%
%% Always check the `NextToken' response parameter for a `null' value
%% when calling a `List*' operation. These operations can occasionally
%% return an empty set of results even when there are more results available.
%% The `NextToken' response parameter value is `null' only when there
%% are no more results to display.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
list_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_accounts(Client, Input, []).
list_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccounts">>, Input, Options).

%% @doc Lists the accounts in an organization that are contained by the
%% specified target root or organizational unit (OU).
%%
%% If you specify the root, you get a list of all the accounts that
%% aren't in any OU. If you specify an OU, you get a list of all the
%% accounts in only that OU and not in any child OUs. To get a list of all
%% accounts in the organization, use the `ListAccounts' operation.
%%
%% Always check the `NextToken' response parameter for a `null' value
%% when calling a `List*' operation. These operations can occasionally
%% return an empty set of results even when there are more results available.
%% The `NextToken' response parameter value is `null' only when there
%% are no more results to display.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
list_accounts_for_parent(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_accounts_for_parent(Client, Input, []).
list_accounts_for_parent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountsForParent">>, Input, Options).

%% @doc Returns a list of the Amazon Web Services services that you enabled
%% to integrate with your organization.
%%
%% After a service on this list creates the resources that it requires for
%% the integration, it can perform operations on your organization and its
%% accounts.
%%
%% For more information about integrating other services with Organizations,
%% including the list of services that currently work with Organizations, see
%% Using Organizations with other Amazon Web Services services in the
%% Organizations User Guide.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
list_aws_service_access_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aws_service_access_for_organization(Client, Input, []).
list_aws_service_access_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAWSServiceAccessForOrganization">>, Input, Options).

%% @doc Lists all of the organizational units (OUs) or accounts that are
%% contained in the specified parent OU or root.
%%
%% This operation, along with `ListParents' enables you to traverse the
%% tree structure that makes up this root.
%%
%% Always check the `NextToken' response parameter for a `null' value
%% when calling a `List*' operation. These operations can occasionally
%% return an empty set of results even when there are more results available.
%% The `NextToken' response parameter value is `null' only when there
%% are no more results to display.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
list_children(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_children(Client, Input, []).
list_children(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListChildren">>, Input, Options).

%% @doc Lists the account creation requests that match the specified status
%% that is currently being tracked for the organization.
%%
%% Always check the `NextToken' response parameter for a `null' value
%% when calling a `List*' operation. These operations can occasionally
%% return an empty set of results even when there are more results available.
%% The `NextToken' response parameter value is `null' only when there
%% are no more results to display.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
list_create_account_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_create_account_status(Client, Input, []).
list_create_account_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCreateAccountStatus">>, Input, Options).

%% @doc Lists the Amazon Web Services accounts that are designated as
%% delegated administrators in this organization.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
list_delegated_administrators(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_delegated_administrators(Client, Input, []).
list_delegated_administrators(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDelegatedAdministrators">>, Input, Options).

%% @doc List the Amazon Web Services services for which the specified account
%% is a delegated administrator.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
list_delegated_services_for_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_delegated_services_for_account(Client, Input, []).
list_delegated_services_for_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDelegatedServicesForAccount">>, Input, Options).

%% @doc Lists the current handshakes that are associated with the account of
%% the requesting user.
%%
%% Handshakes that are `ACCEPTED', `DECLINED', `CANCELED', or
%% `EXPIRED' appear in the results of this API for only 30 days after
%% changing to that state. After that, they're deleted and no longer
%% accessible.
%%
%% Always check the `NextToken' response parameter for a `null' value
%% when calling a `List*' operation. These operations can occasionally
%% return an empty set of results even when there are more results available.
%% The `NextToken' response parameter value is `null' only when there
%% are no more results to display.
%%
%% This operation can be called from any account in the organization.
list_handshakes_for_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_handshakes_for_account(Client, Input, []).
list_handshakes_for_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHandshakesForAccount">>, Input, Options).

%% @doc Lists the handshakes that are associated with the organization that
%% the requesting user is part of.
%%
%% The `ListHandshakesForOrganization' operation returns a list of
%% handshake structures. Each structure contains details and status about a
%% handshake.
%%
%% Handshakes that are `ACCEPTED', `DECLINED', `CANCELED', or
%% `EXPIRED' appear in the results of this API for only 30 days after
%% changing to that state. After that, they're deleted and no longer
%% accessible.
%%
%% Always check the `NextToken' response parameter for a `null' value
%% when calling a `List*' operation. These operations can occasionally
%% return an empty set of results even when there are more results available.
%% The `NextToken' response parameter value is `null' only when there
%% are no more results to display.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
list_handshakes_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_handshakes_for_organization(Client, Input, []).
list_handshakes_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHandshakesForOrganization">>, Input, Options).

%% @doc Lists the organizational units (OUs) in a parent organizational unit
%% or root.
%%
%% Always check the `NextToken' response parameter for a `null' value
%% when calling a `List*' operation. These operations can occasionally
%% return an empty set of results even when there are more results available.
%% The `NextToken' response parameter value is `null' only when there
%% are no more results to display.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
list_organizational_units_for_parent(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_organizational_units_for_parent(Client, Input, []).
list_organizational_units_for_parent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOrganizationalUnitsForParent">>, Input, Options).

%% @doc Lists the root or organizational units (OUs) that serve as the
%% immediate parent of the specified child OU or account.
%%
%% This operation, along with `ListChildren' enables you to traverse the
%% tree structure that makes up this root.
%%
%% Always check the `NextToken' response parameter for a `null' value
%% when calling a `List*' operation. These operations can occasionally
%% return an empty set of results even when there are more results available.
%% The `NextToken' response parameter value is `null' only when there
%% are no more results to display.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
%%
%% In the current release, a child can have only a single parent.
list_parents(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_parents(Client, Input, []).
list_parents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListParents">>, Input, Options).

%% @doc Retrieves the list of all policies in an organization of a specified
%% type.
%%
%% Always check the `NextToken' response parameter for a `null' value
%% when calling a `List*' operation. These operations can occasionally
%% return an empty set of results even when there are more results available.
%% The `NextToken' response parameter value is `null' only when there
%% are no more results to display.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
list_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policies(Client, Input, []).
list_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicies">>, Input, Options).

%% @doc Lists the policies that are directly attached to the specified target
%% root, organizational unit (OU), or account.
%%
%% You must specify the policy type that you want included in the returned
%% list.
%%
%% Always check the `NextToken' response parameter for a `null' value
%% when calling a `List*' operation. These operations can occasionally
%% return an empty set of results even when there are more results available.
%% The `NextToken' response parameter value is `null' only when there
%% are no more results to display.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
list_policies_for_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policies_for_target(Client, Input, []).
list_policies_for_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPoliciesForTarget">>, Input, Options).

%% @doc Lists the roots that are defined in the current organization.
%%
%% Always check the `NextToken' response parameter for a `null' value
%% when calling a `List*' operation. These operations can occasionally
%% return an empty set of results even when there are more results available.
%% The `NextToken' response parameter value is `null' only when there
%% are no more results to display.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
%%
%% Policy types can be enabled and disabled in roots. This is distinct from
%% whether they're available in the organization. When you enable all
%% features, you make policy types available for use in that organization.
%% Individual policy types can then be enabled and disabled in a root. To see
%% the availability of a policy type in an organization, use
%% `DescribeOrganization'.
list_roots(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_roots(Client, Input, []).
list_roots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRoots">>, Input, Options).

%% @doc Lists tags that are attached to the specified resource.
%%
%% You can attach tags to the following resources in Organizations.
%%
%% <ul> <li> Amazon Web Services account
%%
%% </li> <li> Organization root
%%
%% </li> <li> Organizational unit (OU)
%%
%% </li> <li> Policy (any type)
%%
%% </li> </ul> This operation can be called only from the organization's
%% management account or by a member account that is a delegated
%% administrator for an Amazon Web Services service.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists all the roots, organizational units (OUs), and accounts that
%% the specified policy is attached to.
%%
%% Always check the `NextToken' response parameter for a `null' value
%% when calling a `List*' operation. These operations can occasionally
%% return an empty set of results even when there are more results available.
%% The `NextToken' response parameter value is `null' only when there
%% are no more results to display.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
list_targets_for_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_targets_for_policy(Client, Input, []).
list_targets_for_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTargetsForPolicy">>, Input, Options).

%% @doc Moves an account from its current source parent root or
%% organizational unit (OU) to the specified destination parent root or OU.
%%
%% This operation can be called only from the organization's management
%% account.
move_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    move_account(Client, Input, []).
move_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MoveAccount">>, Input, Options).

%% @doc Creates or updates a resource policy.
%%
%% You can only call this operation from the organization's management
%% account.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Enables the specified member account to administer the Organizations
%% features of the specified Amazon Web Services service.
%%
%% It grants read-only access to Organizations service data. The account
%% still requires IAM permissions to access and administer the Amazon Web
%% Services service.
%%
%% You can run this action only for Amazon Web Services services that support
%% this feature. For a current list of services that support it, see the
%% column Supports Delegated Administrator in the table at Amazon Web
%% Services Services that you can use with Organizations in the Organizations
%% User Guide.
%%
%% This operation can be called only from the organization's management
%% account.
register_delegated_administrator(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_delegated_administrator(Client, Input, []).
register_delegated_administrator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDelegatedAdministrator">>, Input, Options).

%% @doc Removes the specified account from the organization.
%%
%% The removed account becomes a standalone account that isn't a member
%% of any organization. It's no longer subject to any policies and is
%% responsible for its own bill payments. The organization's management
%% account is no longer charged for any expenses accrued by the member
%% account after it's removed from the organization.
%%
%% This operation can be called only from the organization's management
%% account. Member accounts can remove themselves with
%% `LeaveOrganization' instead.
%%
%% You can remove an account from your organization only if the account is
%% configured with the information required to operate as a standalone
%% account. When you create an account in an organization using the
%% Organizations console, API, or CLI commands, the information required of
%% standalone accounts is not automatically collected. For more information,
%% see Considerations before removing an account from an organization in the
%% Organizations User Guide.
%%
%% The account that you want to leave must not be a delegated administrator
%% account for any Amazon Web Services service enabled for your organization.
%% If the account is a delegated administrator, you must first change the
%% delegated administrator account to another account that is remaining in
%% the organization.
%%
%% After the account leaves the organization, all tags that were attached to
%% the account object in the organization are deleted. Amazon Web Services
%% accounts outside of an organization do not support tags.
remove_account_from_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_account_from_organization(Client, Input, []).
remove_account_from_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveAccountFromOrganization">>, Input, Options).

%% @doc Adds one or more tags to the specified resource.
%%
%% Currently, you can attach tags to the following resources in
%% Organizations.
%%
%% <ul> <li> Amazon Web Services account
%%
%% </li> <li> Organization root
%%
%% </li> <li> Organizational unit (OU)
%%
%% </li> <li> Policy (any type)
%%
%% </li> </ul> This operation can be called only from the organization's
%% management account or by a member account that is a delegated
%% administrator for an Amazon Web Services service.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes any tags with the specified keys from the specified resource.
%%
%% You can attach tags to the following resources in Organizations.
%%
%% <ul> <li> Amazon Web Services account
%%
%% </li> <li> Organization root
%%
%% </li> <li> Organizational unit (OU)
%%
%% </li> <li> Policy (any type)
%%
%% </li> </ul> This operation can be called only from the organization's
%% management account or by a member account that is a delegated
%% administrator for an Amazon Web Services service.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Renames the specified organizational unit (OU).
%%
%% The ID and ARN don't change. The child OUs and accounts remain in
%% place, and any attached policies of the OU remain attached.
%%
%% This operation can be called only from the organization's management
%% account.
update_organizational_unit(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_organizational_unit(Client, Input, []).
update_organizational_unit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateOrganizationalUnit">>, Input, Options).

%% @doc Updates an existing policy with a new name, description, or content.
%%
%% If you don't supply any parameter, that value remains unchanged. You
%% can't change a policy's type.
%%
%% This operation can be called only from the organization's management
%% account or by a member account that is a delegated administrator for an
%% Amazon Web Services service.
update_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_policy(Client, Input, []).
update_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePolicy">>, Input, Options).

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
    Client1 = Client#{service => <<"organizations">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"organizations">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSOrganizationsV20161128.", Action/binary>>}
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
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
