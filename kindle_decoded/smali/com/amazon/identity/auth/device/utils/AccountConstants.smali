.class public final Lcom/amazon/identity/auth/device/utils/AccountConstants;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;
    }
.end annotation


# static fields
.field public static final ACCOUNT_USERDATA_KEY_PREFIX:Ljava/lang/String; = "com.amazon.dcp.sso.property.account"

.field public static final ACTION_ACCOUNT_ADD_INTENT:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccount"

.field public static final ACTION_AMAZON_ACCOUNT_ADDED_INTENT:Ljava/lang/String; = "com.amazon.dcp.sso.action.account.added"

.field public static final ACTION_AMAZON_ACCOUNT_ADDED_ON_DEVICE_INTENT:Ljava/lang/String; = "com.amazon.identity.auth.account.added.on.device"

.field public static final ACTION_AMAZON_ACCOUNT_CACHE_UPDATE_REQUIRED:Ljava/lang/String; = "com.amazon.dcp.sso.action.cache.update.required"

.field public static final ACTION_AMAZON_ACCOUNT_PROPERTY_CHANGED_INTENT:Ljava/lang/String; = "com.amazon.dcp.sso.action.AmazonAccountPropertyService.property.changed"

.field public static final ACTION_AMAZON_ACCOUNT_REMOVED_INTENT:Ljava/lang/String; = "com.amazon.dcp.sso.action.account.removed"

.field public static final ACTION_AMAZON_ACCOUNT_REMOVED_ON_DEVICE_INTENT:Ljava/lang/String; = "com.amazon.identity.auth.account.removed.on.device"

.field public static final ACTION_AMAZON_CALL_ACCOUNT_REGISTRAR:Ljava/lang/String; = "com.amazon.dcp.sso.action.AmazonAccountRegistrar"

.field public static final ACTION_AMAZON_SECONDARY_ACCOUNT_ADDED_INTENT:Ljava/lang/String; = "com.amazon.dcp.sso.action.secondary.account.added"

.field public static final ACTION_AMAZON_SECONDARY_ACCOUNT_REMOVED_INTENT:Ljava/lang/String; = "com.amazon.dcp.sso.action.secondary.account.removed"

.field public static final ACTION_AMAZON_SSO_INFORMATION:Ljava/lang/String; = "com.amazon.dcp.sso.action.SSO_POST_SPLIT_INFORMATION"

.field public static final ACTION_CONFIRM_CREDENTIAL_INTENT:Ljava/lang/String; = "com.amazon.dcp.sso.ConfirmCredential"

.field public static final ACTION_SUB_AUTHENTICATOR_INTENT:Ljava/lang/String; = "com.amazon.dcp.sso.AccountSubAuthenticator"

.field public static final ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field public static final ADD_ACCOUNT_FROM_UPDATE_CREDENTIALS:Ljava/lang/String; = "com.amazon.dcp.sso.RegisterViaUpdateCreds"

.field public static final ADD_ACCOUNT_PARAMETERS:Ljava/lang/String; = "com.amazon.dcp.sso.addAccountParameters"

.field public static final ADD_ACCOUNT_USING_DEVICE_SECRET:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccountUsingDeviceSecret"

.field public static final AMAZON_ACCOUNT_TYPE:Ljava/lang/String; = "com.amazon.account"

.field public static final AP_OPTION_KEY_ASSOC_HANDLE:Ljava/lang/String; = "com.amazon.dcp.sso.ap.assoc_handle"

.field public static final AP_OPTION_KEY_PAGEID:Ljava/lang/String; = "com.amazon.dcp.sso.ap.pageid"

.field public static final AP_OPTION_KEY_PREFIX:Ljava/lang/String; = "com.amazon.dcp.sso.ap"

.field public static final AP_OPTION_KEY_SESSIONID:Ljava/lang/String; = "com.amazon.dcp.sso.ap.sessionid"

.field public static final AP_OPTION_KEY_UBID:Ljava/lang/String; = "com.amazon.dcp.sso.ap.ubid"

.field public static final CLIENT_DOMAIN_DEVICE_LEGACY:Ljava/lang/String; = "DeviceLegacy"

.field public static final COOKIE_TOKEN_TYPE_PREFIX:Ljava/lang/String; = "com.amazon.dcp.sso.token.cookie"

.field public static final DEREGISTER_SUB_AUTH_ERROR_GET_AUTH_TOKEN_CALLED:I = 0x69

.field public static final DEVICE_TOKEN_TYPE_PREFIX:Ljava/lang/String; = "com.amazon.dcp.sso.token.device"

.field public static final DMS_EXCHANGE_ERROR_AUTHENTICATION_FAILED:I = 0x67

.field public static final DMS_EXCHANGE_ERROR_CUSTOMER_NOT_FOUND:I = 0x64

.field public static final DMS_EXCHANGE_ERROR_DEVICE_ALREADY_REGISTERED:I = 0x65

.field public static final DMS_EXCHANGE_ERROR_DUPLICATE_DEVICE_NAME:I = 0x66

.field public static final DMS_EXCHANGE_ERROR_UNKNOWN_FAILURE:I = 0x68

.field public static final DMS_SUB_AUTHENTICATOR_XML_FILE_NAME:Ljava/lang/String; = "dms_sub_authenticator"

.field public static final EXTRA_AMAZON_ACCOUNT_CHANGED_NAME:Ljava/lang/String; = "com.amazon.dcp.sso.extra.account.name"

.field public static final EXTRA_AMAZON_ACCOUNT_CHANGED_TYPE:Ljava/lang/String; = "com.amazon.dcp.sso.extra.account.type"

.field public static final EXTRA_TOKENS_KEY_PREFIX:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.extratokens"

.field public static final INTENT_ACTION_GET_DEVICE_CREDENTIALS:Ljava/lang/String; = "com.amazon.dcp.sso.action.GET_DEVICE_CREDENTIALS"

.field public static final INTENT_ACTION_SESSION_USER_ADD_SERVICE:Ljava/lang/String; = "com.amazon.dcp.sso.action.central.session.user.add"

.field public static final INTENT_ACTION_SESSION_USER_CHANGE_SERVICE:Ljava/lang/String; = "com.amazon.dcp.sso.action.central.session.user.change"

.field public static final INTENT_ACTION_SESSION_USER_REMOVE_SERVICE:Ljava/lang/String; = "com.amazon.dcp.sso.action.central.session.user.remove"

.field public static final INTENT_ACTION_SET_COR_PFM:Ljava/lang/String; = "com.amazon.dcp.sso.action.SET_COR_PFM"

.field public static final INTENT_EXTRA_SESSION_USER_ACCOUNTS:Ljava/lang/String; = "new.session.user.accounts"

.field public static final INTENT_EXTRA_SESSION_USER_ACCOUNTS_OLD:Ljava/lang/String; = "session.user.accounts"

.field public static final KEY_ACCOUNT_IDENTIFIER:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.acctId"

.field public static final KEY_ACCOUNT_STATUS:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.ACCOUNT_STATUS"

.field public static final KEY_ACCOUNT_UUID:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.UUID"

.field public static final KEY_ACTOR_CONVERTEDTYPE:Ljava/lang/String; = "actor.converted.type"

.field public static final KEY_ACTOR_ENTITYTYPE:Ljava/lang/String; = "actor.entity.type"

.field public static final KEY_ACTOR_SUBTYPE:Ljava/lang/String; = "actor.sub.type"

.field public static final KEY_ADD_ACCOUNT_ACCESS_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccount.options.AccessToken"

.field public static final KEY_ADD_ACCOUNT_ATMAIN:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccount.options.ATMain"

.field public static final KEY_ADD_ACCOUNT_AUTHTOKENTYPE:Ljava/lang/String; = "com.amazon.dcp.sso.addAccountParameters.authTokenType"

.field public static final KEY_ADD_ACCOUNT_AUTH_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccount.options.AuthToken"

.field public static final KEY_ADD_ACCOUNT_AUTH_TOKEN_CONTEXT:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccount.options.AuthTokenClientContext"

.field public static final KEY_ADD_ACCOUNT_CALLER_INFORMATION:Ljava/lang/String; = "com.amazon.dcp.sso.addAccountParameters.caller"

.field public static final KEY_ADD_ACCOUNT_OPTIONS:Ljava/lang/String; = "com.amazon.dcp.sso.addAccountParameters.options"

.field public static final KEY_ADD_ACCOUNT_REQUIREDFEATURES:Ljava/lang/String; = "com.amazon.dcp.sso.addAccountParameters.requiredFeatures"

.field public static final KEY_ADD_ACCOUNT_URL:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccount.options.URL"

.field public static final KEY_ADD_AS_PRIMARY_ACCOUNT:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccount.options.AddAsPrimary"

.field public static final KEY_ADD_AS_SECONDARY_ACCOUNT:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccount.options.AddAsSecondary"

.field public static final KEY_ADP_PRIVATE_KEY:Ljava/lang/String; = "adp_private_key"

.field public static final KEY_ADP_TOKEN:Ljava/lang/String; = "adp_token"

.field public static final KEY_AUTHORIZATION_CODE:Ljava/lang/String; = "authorization_code"

.field public static final KEY_AUTHORIZATION_CODE_TO_ACCESS_TOKEN_EXCHANGE:Ljava/lang/String; = "authorizationCode"

.field public static final KEY_CBL_PRIVATE_CODE:Ljava/lang/String; = "cbl_private_code"

.field public static final KEY_CBL_PUBLIC_CODE:Ljava/lang/String; = "cbl_public_code"

.field public static final KEY_CLIENT_DOMAIN:Ljava/lang/String; = "client_domain"

.field public static final KEY_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final KEY_CODE_CHALLENGE:Ljava/lang/String; = "code_challenge"

.field public static final KEY_CODE_CHALLENGE_METHOD:Ljava/lang/String; = "code_challenge_method"

.field public static final KEY_CODE_VERIFIER:Ljava/lang/String; = "code_verifier"

.field public static final KEY_COR:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.cor"

.field public static final KEY_COR_PFM_ACCOUNT:Ljava/lang/String; = "cor.pfm.account"

.field public static final KEY_COR_PFM_DIRECTED_ID:Ljava/lang/String; = "cor.pfm.directedid"

.field public static final KEY_COR_SOURCE:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.sourceofcor"

.field public static final KEY_CUSTOMER_REGION:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.customer_region"

.field public static final KEY_DELEGATEE_ACCOUNT:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.delegateeaccount"

.field public static final KEY_DELEGATION_DOMAIN:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.delegationDomain"

.field public static final KEY_DEVICE_ACCOUNT_ROLE:Ljava/lang/String; = "com.amazon.dcp.sso.property.deviceaccountrole"

.field public static final KEY_DEVICE_CREDENTIALS:Ljava/lang/String; = "com.amazon.dcp.sso.token.device.credentialsmap"

.field public static final KEY_DEVICE_DEVICE_EMAIL:Ljava/lang/String; = "com.amazon.dcp.sso.property.deviceemail"

.field public static final KEY_DEVICE_DEVICE_NAME:Ljava/lang/String; = "com.amazon.dcp.sso.property.devicename"

.field public static final KEY_DEVICE_FIRST_NAME:Ljava/lang/String; = "com.amazon.dcp.sso.property.firstname"

.field public static final KEY_DEVICE_USER_NAME:Ljava/lang/String; = "com.amazon.dcp.sso.property.username"

.field public static final KEY_DMS_ERROR_CODE:Ljava/lang/String; = "com.amazon.dcp.sso.dms.ErrorCode"

.field public static final KEY_DMS_ERROR_MESSAGE:Ljava/lang/String; = "com.amazon.dcp.sso.dms.ErrorMessage"

.field public static final KEY_PFM:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.pfm"

.field public static final KEY_PRIMARY_ACCOUNT_IDENTIFIER:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.primary.acctId"

.field public static final KEY_PROCESS_ID:Ljava/lang/String; = "key_process_id"

.field public static final KEY_RECOVERY_ATTEMPT:Ljava/lang/String; = "account_recover_attempt"

.field public static final KEY_REGISTRATION_TYPE:Ljava/lang/String; = "registration_type"

.field public static final KEY_SECONDARY_AMAZON_ACCOUNT:Ljava/lang/String; = "com.amazon.dcp.sso.property.secondary"

.field public static final KEY_SESSION_USER_AMAZON_ACCOUNT:Ljava/lang/String; = "com.amazon.dcp.sso.property.sessionuser"

.field public static final KEY_SET_COOKIE_FOR_AUTHENTICATE_ACCOUNT_WITH_UI:Ljava/lang/String; = "set_cookie_for_authenticate_account_with_ui"

.field public static final KEY_SID_COOKIE_VALUE:Ljava/lang/String; = "sid_cookie_value"

.field public static final KEY_TOKEN_ENCRYPT_KEY:Ljava/lang/String; = "com.amazon.dcp.sso.property.encryptKey"

.field public static final KEY_TOKEN_UPGRADE_TYPE_AUTHORIZATION_CODE:Ljava/lang/String; = "authorizationCode"

.field public static final KEY_USER_EMAIL:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.useremail"

.field public static final KEY_WEBSITE_COOKIES_JSON_ARRAY:Ljava/lang/String; = "website_cookies_json_array"

.field public static final PERMISSION_AMAZON_ACCOUNT_CHANGED:Ljava/lang/String; = "com.amazon.dcp.sso.permission.account.changed"

.field public static final PERMISSION_AMAZON_ACCOUNT_PROPERTY_CHANGED:Ljava/lang/String; = "com.amazon.dcp.sso.permission.AmazonAccountPropertyService.property.changed"

.field public static final PERMISSION_AMAZON_MULTIPLE_PROFILE_AWARE:Ljava/lang/String; = "com.amazon.identity.permission.MULTIPLE_PROFILE_AWARE"

.field public static final PERMISSION_APPLICATION_ACCOUNT_FOR_APPLICATION_CHANGED:Ljava/lang/String; = "com.amazon.dcp.sso.permission.applicationforaccount.changed"

.field public static final PERMISSION_MANAGE_COR_PFM:Ljava/lang/String; = "com.amazon.dcp.sso.permission.MANAGE_COR_PFM"

.field public static final SUB_AUTHENTICATOR_ACCOUNT_TYPE_ATTRIBUTE:Ljava/lang/String; = "accountType"

.field public static final SUB_AUTHENTICATOR_ATTRIBUTES_NAME:Ljava/lang/String; = "account-sub-authenticator"

.field public static final SUB_AUTHENTICATOR_DEVICE_TYPE_NAME:Ljava/lang/String; = "device-type"

.field public static final SUB_AUTHENTICATOR_DEVICE_TYPE_NAME_ATTRIBUTE:Ljava/lang/String; = "name"

.field public static final SUB_AUTHENTICATOR_METADATA_NAME:Ljava/lang/String; = "com.amazon.dcp.sso.AccountSubAuthenticator"

.field public static final SUB_AUTHENTICATOR_MULTIPLE_ACCOUNT_AWARE:Ljava/lang/String; = "multiple-account-aware"

.field public static final SUB_AUTHENTICATOR_SUB_AUTH_NAME:Ljava/lang/String; = "subAuth"

.field public static final SUB_AUTHENTICATOR_SUB_AUTH_NAME_ATTRIBUTE:Ljava/lang/String; = "name"

.field public static final SUB_AUTHENTICATOR_TOKEN_TYPES_NAME:Ljava/lang/String; = "token-types"

.field public static final SUB_AUTHENTICATOR_TOKEN_TYPE_NAME:Ljava/lang/String; = "token-type"

.field public static final SUB_AUTHENTICATOR_TOKEN_TYPE_NAME_ATTRIBUTE:Ljava/lang/String; = "name"

.field public static final SUB_AUTHENTICATOR_TYPE_ATTRIBUTE:Ljava/lang/String; = "type"

.field public static final TOKEN_TYPE_ACCOUNT_POOL:Ljava/lang/String; = "com.amazon.dcp.sso.token.device.accountpool"

.field public static final TOKEN_TYPE_ACTOR_COOKIES:Ljava/lang/String; = "com.amazon.dcp.sso.token.amazon.actor.cookies"

.field public static final TOKEN_TYPE_AMAZON_COM_COOKIES_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.token.cookie.amazonComCookies"

.field public static final TOKEN_TYPE_AMAZON_MOBILE_AUTH_ENCRYPTION_KEY:Ljava/lang/String; = "com.amazon.mobile.auth.encryption_key"

.field public static final TOKEN_TYPE_AMAZON_MOBILE_AUTH_ENCRYPTION_KEY_CREATION_TIME:Ljava/lang/String; = "com.amazon.mobile.auth.encryption_key.creation_time"

.field public static final TOKEN_TYPE_AMAZON_MOBILE_AUTH_ENCRYPTION_KEY_IDENTIFIER:Ljava/lang/String; = "com.amazon.mobile.auth.encryption_key.identifier"

.field public static final TOKEN_TYPE_AMAZON_MOBILE_AUTH_ENCRYPTION_KEY_VERSION:Ljava/lang/String; = "com.amazon.mobile.auth.encryption_key.version"

.field public static final TOKEN_TYPE_COOKIES:Ljava/lang/String; = "com.amazon.dcp.sso.token.amazon.cookies"

.field public static final TOKEN_TYPE_COOKIE_ATMAIN_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.token.cookie.atmain"

.field public static final TOKEN_TYPE_COOKIE_MFA_SID_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.token.cookie.sid"

.field public static final TOKEN_TYPE_COOKIE_XFSN:Ljava/lang/String; = "com.amazon.identity.cookies.xfsn"

.field public static final TOKEN_TYPE_COOKIE_XMAIN_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.token.cookie.xmain"

.field public static final TOKEN_TYPE_DEVICE_ADP_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.token.device.adptoken"

.field public static final TOKEN_TYPE_DEVICE_ADP_TOKEN_AND_PRIVATE_KEY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOKEN_TYPE_DEVICE_AMAZON_ACTOR_ACCESS_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.token.oauth.amazon.actor.access_token"

.field public static final TOKEN_TYPE_DEVICE_AMAZON_ACTOR_REFRESH_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.token.oauth.amazon.actor.refresh_token"

.field public static final TOKEN_TYPE_DEVICE_AMAZON_ATZ_ACCESS_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.token.oauth.atz.access_token"

.field public static final TOKEN_TYPE_DEVICE_AMAZON_OAUTH_ACCESS_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.token.oauth.amazon.access_token"

.field public static final TOKEN_TYPE_DEVICE_AMAZON_OAUTH_ACCESS_TOKEN_EXPIRES_AT:Ljava/lang/String; = "com.amazon.dcp.sso.token.oauth.amazon.access_token.expires_at"

.field public static final TOKEN_TYPE_DEVICE_AMAZON_OAUTH_ACCESS_TOKEN_REFRESHED_AT:Ljava/lang/String; = "com.amazon.dcp.sso.token.oauth.amazon.access_token.refreshed_at"

.field public static final TOKEN_TYPE_DEVICE_AMAZON_OAUTH_ATZ_TOKEN_EXPIRES_AT:Ljava/lang/String; = "com.amazon.dcp.sso.token.oauth.amazon.atz_token.expires_at"

.field public static final TOKEN_TYPE_DEVICE_AMAZON_OAUTH_ATZ_TOKEN_REFRESHED_AT:Ljava/lang/String; = "com.amazon.dcp.sso.token.oauth.amazon.atz_token.refreshed_at"

.field public static final TOKEN_TYPE_DEVICE_AMAZON_OAUTH_REFRESH_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

.field public static final TOKEN_TYPE_DEVICE_NAME:Ljava/lang/String; = "com.amazon.dcp.sso.token.device.devicename"

.field public static final TOKEN_TYPE_DEVICE_PRIVATE_KEY:Ljava/lang/String; = "com.amazon.dcp.sso.token.device.privatekey"

.field public static final TOKEN_TYPE_DEVICE_SERIAL_NUMBER:Ljava/lang/String; = "com.amazon.dcp.sso.token.device.deviceserialname"

.field public static final TOKEN_TYPE_DEVICE_TYPE:Ljava/lang/String; = "com.amazon.dcp.sso.token.devicedevicetype"

.field public static final TOKEN_TYPE_PREFIX:Ljava/lang/String; = "com.amazon.dcp.sso.token"

.field public static final TOKEN_TYPE_XMAIN_AND_XACB_COOKIES_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.token.cookie.xmainAndXabcCookies"

.field public static final USERDATA_KEY_PREFIX:Ljava/lang/String; = "com.amazon.dcp.sso.property"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.amazon.dcp.sso.token.device.adptoken"

    const-string v1, "com.amazon.dcp.sso.token.device.privatekey"

    .line 782
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 783
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/utils/AccountConstants;->TOKEN_TYPE_DEVICE_ADP_TOKEN_AND_PRIVATE_KEY_LIST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
