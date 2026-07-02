.class public Lcom/amazon/identity/auth/device/api/MAPAccountManager;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/MAPAccountManager$MAPAccountChangeObserver;,
        Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions;,
        Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalOptions;,
        Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;,
        Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ADDED_ON_DEVICE_INTENT_ACTION:Ljava/lang/String; = "com.amazon.identity.auth.account.added.on.device"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ACCOUNT_CHANGED_ON_DEVICE_INTENT_ACTION:Ljava/lang/String; = "com.amazon.identity.action.ACCOUNT_CHANGED_ON_DEVICE"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ACCOUNT_FOR_KEY_HAS_CHANGED_INTENT_ACTION:Ljava/lang/String; = "com.amazon.identity.action.ACCOUNT_FOR_KEY"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ACCOUNT_FOR_PACKAGE_HAS_CHANGED_INTENT_ACTION:Ljava/lang/String; = "com.amazon.identity.action.ACCOUNT_FOR_PACKAGE_CHANGED"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ACCOUNT_REMOVED_ON_DEVICE_INTENT_ACTION:Ljava/lang/String; = "com.amazon.identity.auth.account.removed.on.device"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_3P_CALLBACK_QUERY_PARAM:Ljava/lang/String; = "3pCallbackQuery"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_3P_LOGIN_URL_STRING:Ljava/lang/String; = "thirdPartyLoginUrl"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccount.options.AccessToken"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ACCOUNT_COR:Ljava/lang/String; = "account_cor"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ACCOUNT_MISSING_ATTRIBUTES:Ljava/lang/String; = "AccountMissingAttributes"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ACCOUNT_RECOVERY_BY_USING_NEW_ACCOUNT:Ljava/lang/String; = "account_recovery_by_using_new_account"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ACCOUNT_RECOVER_CONTEXT_BUNDLE:Ljava/lang/String; = "com.amazon.identity.mobi.account.recover.context"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ACCOUNT_STATUS_POLICY:Ljava/lang/String; = "account_status_policy"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ACTOR_ID_FOR_PREAUTHORIZED_LINK_CODE:Ljava/lang/String; = "actor_id_for_preauthorized_link_code"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ADDITIONAL_RETURN_TO_URL_PARAMETERS:Ljava/lang/String; = "additionalReturnToUrlParams"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ADDITIONAL_SIGNIN_DOMAINS:Ljava/lang/String; = "signin_domains"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ADD_ACCOUNT_AMAZON_DOMAIN:Ljava/lang/String; = "com.amazon.identity.ap.domain"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ADP_TOKEN:Ljava/lang/String; = "adp_token"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ALLOW_ADDING_MULTIPLE_ACCOUNT:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccount.options.AddAsSecondary"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ALLOW_ADDING_MULTIPLE_PRIMARY_ACCOUNT:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccount.options.AddAsPrimary"

.field public static final KEY_ALLOW_ALL_SIGNIN_PATHS:Ljava/lang/String; = "allow_all_signin_paths"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_AMAZON_ACCOUNT_LOGIN_NAME:Ljava/lang/String; = "authAccount"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_AMAZON_ACCOUNT_PASSWORD:Ljava/lang/String; = "password"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_AMAZON_DOMAIN:Ljava/lang/String; = "com.amazon.identity.ap.domain"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_AP_ASSOC_HANDLE:Ljava/lang/String; = "com.amazon.identity.ap.assoc_handle"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_AP_PAGEID:Ljava/lang/String; = "com.amazon.identity.ap.pageid"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_AT_MAIN:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccount.options.ATMain"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_AUTHENTICATION_CHALLENGE:Ljava/lang/String; = "com.amazon.identity.auth.ChallengeException"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_AUTH_DATA_ADDITIONAL_INFO:Ljava/lang/String; = "auth_data_additional_info"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_AUTH_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccount.options.AuthToken"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_AUTH_TOKEN_CONTEXT:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccount.options.AuthTokenClientContext"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_CLAIM_TYPE:Ljava/lang/String; = "claim_type"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_CLIENT_EVENT_CONTEXT:Ljava/lang/String; = "com.amazon.dcp.sso.extra.client_event_context"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_CLIENT_EVENT_CONTEXT_NAMESPACE:Ljava/lang/String; = "com.amazon.dcp.sso.extra.client_event_context.namespace"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_CLIENT_EVENT_CONTEXT_PROPERTIES:Ljava/lang/String; = "com.amazon.dcp.sso.extra.client_event_context.properties"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_COLOR_CODE_FOR_FEDERATED_CUSTOM_TAB:Ljava/lang/String; = "color_code"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DEREGISTERALL_AND_REGISTER_THIS_AS_PRIMARY_ACCOUNT:Ljava/lang/String; = "deregisterall_register_this_as_primary"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DEREGISTRATION_METADATA:Ljava/lang/String; = "deregistration_metadata"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DEVICE_NAME:Ljava/lang/String; = "device_name"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DIRECTED_ID:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.acctId"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DIRECTED_ID_CONFIRM:Ljava/lang/String; = "directed_id_confirm"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DIRECTED_ID_DELEGATEE:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.delegateeaccount"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DIRECTED_ID_POST_ACCOUNT_CHANGE:Ljava/lang/String; = "key_directed_id_post_account_change"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DISABLE_GLOBAL_SIGNIN:Ljava/lang/String; = "disable_global_signin"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DISABLE_REGISTER_WITHUI_PRE_POPULATION:Ljava/lang/String; = "disable_user_name_pre_population"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DISABLE_USERNAME_AUTO_SUGGESTION:Ljava/lang/String; = "disable_user_name_auto_suggestion"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DMS_GET_CREDENTIALS_URL:Ljava/lang/String; = "com.amazon.dcp.sso.AddAccount.options.URL"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ENSURE_ACCOUNT_STATE_ATTRIBUTES:Ljava/lang/String; = "EnsureAccountStateAttributes"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "com.amazon.dcp.sso.ErrorCode"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ERROR_CODE_WEBVIEW_SSL_ERROR:Ljava/lang/String; = "com.amazon.identity.WebViewSSLErrorCode"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ERROR_DOMAIN_PATH_WEBVIEW_SSL_ERROR:Ljava/lang/String; = "com.amazon.identity.WebViewSSLErrorDomainPath"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "com.amazon.dcp.sso.ErrorMessage"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_EXTRA_DIRECTED_ID:Ljava/lang/String; = "com.amazon.dcp.sso.extra.account.directed_id"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_EXTRA_KEY:Ljava/lang/String; = "account_key"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_EXTRA_PROFILES_ACCOUNT_ADDED_OR_REMOVED_BELONG_TO:Ljava/lang/String; = "com.amazon.identity.auth.extra.account.profiles"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_FEDERATED_AUTH_CONFIG:Ljava/lang/String; = "federated_auth_config"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_GET_LINK_CODE_WITH_LENGTH:Ljava/lang/String; = "get_link_code_with_length"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_IGNORE_NAME_FOR_ISOLATED_APP:Ljava/lang/String; = "ignore_name_for_isolated_app"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_INTENT:Ljava/lang/String; = "intent"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_IS_CALLBACK_FROM_3P_PARAM:Ljava/lang/String; = "isCallbackFrom3pLogin"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_IS_NEW_ACCOUNT:Ljava/lang/String; = "com.amazon.identity.auth.device.accountManager.newaccount"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_LINK_CODE:Ljava/lang/String; = "link_code"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_LINK_CODE_DOMAIN:Ljava/lang/String; = "link_code_domain"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_LINK_CODE_POLLING_INTERVAL:Ljava/lang/String; = "link_code_polling_interval"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_LINK_CODE_TIME_TO_LIVE:Ljava/lang/String; = "link_code_expiry"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_MARKETPLACE_BUNDLE:Ljava/lang/String; = "marketplace_bundle"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_MARKETPLACE_DOMAIN:Ljava/lang/String; = "marketplace_domain"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_OVERRIDE_RETURN_TO_DOMAIN:Ljava/lang/String; = "return_to_domain"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PRE_AUTHORIZED_LINK_CODE:Ljava/lang/String; = "pre_authorized_link_code"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PRIMARY_DIRECTED_ID:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.primary.acctId"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PRIVATE_KEY:Ljava/lang/String; = "adp_private_key"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PROFILE_MAPPING:Ljava/lang/String; = "profile_mapping"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_REGISTRATION_COOKIE_DOMAIN:Ljava/lang/String; = "key_registration_cookie_domain"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_REGISTRATION_DOMAIN:Ljava/lang/String; = "registration_domain"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_RESULT_CODE:Ljava/lang/String; = "result code"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_RESUME_AUTHENTICATION_URL:Ljava/lang/String; = "resume_authentication_url"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_SERVER_SIDE_DEREGISTRATION_RESULT:Ljava/lang/String; = "server_side_deregistration_result"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_SIGN_IN_ENDPOINT:Ljava/lang/String; = "key_sign_in_full_endpoint"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_SSO_ACCOUNTS_LIST:Ljava/lang/String; = "ssoAccountsList"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_SSO_ACCOUNT_CUSTOMER_NAME:Ljava/lang/String; = "accountCustomerName"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_SSO_ACCOUNT_DIRECTED_ID:Ljava/lang/String; = "accountDirectedId"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_SSO_ACCOUNT_LOGIN:Ljava/lang/String; = "accountLoginName"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_SSO_BOOTSTRAPPED_FROM_DEVICE_SERIAL:Ljava/lang/String; = "bootstrapHostDSN"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_SSO_BOOTSTRAPPED_FROM_DEVICE_TYPE:Ljava/lang/String; = "bootstrapHostDeviceType"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_SSO_CODE:Ljava/lang/String; = "ssoCode"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_SSO_CODE_TIME_TO_LIVE:Ljava/lang/String; = "ssoCodeExpiresIn"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final PRIMARY_AMAZON_ACCOUNT_ADDED_INTENT_ACTION:Ljava/lang/String; = "com.amazon.dcp.sso.action.account.added"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final PRIMARY_AMAZON_ACCOUNT_REMOVED_INTENT_ACTION:Ljava/lang/String; = "com.amazon.dcp.sso.action.account.removed"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final SECONDARY_AMAZON_ACCOUNT_ADDED_INTENT_ACTION:Ljava/lang/String; = "com.amazon.dcp.sso.action.secondary.account.added"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final SECONDARY_AMAZON_ACCOUNT_REMOVED_INTENT_ACTION:Ljava/lang/String; = "com.amazon.dcp.sso.action.secondary.account.removed"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final fJ:Ljava/lang/String;

.field private static final gd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fB:[Ljava/lang/Object;

.field private ge:Lcom/amazon/identity/auth/device/f;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1815
    const-class v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    new-instance v1, Ljava/util/HashSet;

    const-string v2, "com.amazon.map.sample.one"

    const-string v3, "com.amazon.map.sample.two"

    const-string v4, "com.amazon.map.sample"

    const-string v5, "com.amazon.map.client.sample.three"

    const-string v6, "com.amazon.kindle.otter.oobe"

    const-string v7, "com.amazon.kindle.otter.settings"

    const-string v8, "com.amazon.avod"

    const-string v9, "com.amazon.alta.h2debug"

    const-string v10, "com.amazon.venezia"

    const-string v11, "com.amazon.kor.demo"

    const-string v12, "com.amazon.h2settingsfortablet"

    const-string v13, "com.amazon.tv.oobe"

    const-string v14, "com.googlecode.android_scripting"

    const-string v15, "com.amazon.aiv.us"

    const-string v16, "com.amazon.aiv.eu"

    const-string v17, "com.amazon.aiv.fe"

    const-string v18, "com.amazon.aiv.blast"

    const-string v19, "com.amazon.asxr"

    const-string v20, "com.android.settings"

    const-string v21, "com.amazon.alexa.multimodal.tv"

    const-string v22, "com.amazon.demoman.app.android"

    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->gd:Ljava/util/Set;

    .line 1837
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->TAG:Ljava/lang/String;

    .line 1839
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->fJ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 1849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1841
    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->fB:[Ljava/lang/Object;

    .line 1850
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    .line 1851
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 3419
    new-instance v2, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v2, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    const-string v4, "RecoverAccount"

    .line 3421
    invoke-static {v4}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v5

    .line 3423
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->b(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3427
    invoke-static {p2}, Lcom/amazon/identity/auth/device/fl;->B(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v6

    .line 3428
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/fl;->getDirectedId()Ljava/lang/String;

    move-result-object v6

    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    .line 3430
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3431
    :goto_0
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ht;->K(Landroid/os/Bundle;)V

    .line 3433
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "com.amazon.dcp.sso.property.account.acctId"

    .line 3434
    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    const-string v9, "account_recover_attempt"

    .line 3435
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3436
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v0, "link_code"

    .line 3438
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "pre_authorized_link_code"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3441
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3446
    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 3449
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v6

    const/4 v8, 0x0

    const-string v5, "Recovering account using CBL only supports primary account"

    const-string v7, "Recovering account using CBL only supports primary account"

    move-object v3, p4

    .line 3446
    invoke-static/range {v3 .. v8}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-object v2

    .line 3457
    :cond_2
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3459
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3461
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3464
    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/bn;->q(Landroid/content/Context;)Lcom/amazon/identity/auth/device/bn$a;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v0, "The link code that MAP had has expired or it has not been generated yet. Please call MAPAccountManager#generateLinkCode to generate the link code."

    .line 3468
    invoke-direct {p0, v2, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v0

    return-object v0

    .line 3473
    :cond_3
    iget-object v6, v3, Lcom/amazon/identity/auth/device/bn$a;->hq:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "The link code does not match the one that MAP has. Please call MAPAccountManager#generateLinkCode to get the link code."

    .line 3476
    invoke-direct {p0, v2, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v0

    return-object v0

    .line 3479
    :cond_4
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/bn;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/bl;)Lcom/amazon/identity/auth/device/bl;

    move-result-object v0

    .line 3482
    iget-object v2, v3, Lcom/amazon/identity/auth/device/bn$a;->hq:Ljava/lang/String;

    const-string v6, "cbl_public_code"

    invoke-virtual {v7, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3483
    iget-object v2, v3, Lcom/amazon/identity/auth/device/bn$a;->hr:Ljava/lang/String;

    const-string v3, "cbl_private_code"

    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_1

    :cond_5
    move-object v6, v2

    .line 3486
    :goto_1
    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 3487
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v5, v0, v6, v2, v8}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;Z)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v8

    if-eqz p1, :cond_6

    .line 3490
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Recover account called by: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 3492
    :cond_6
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    move-object v4, v8

    invoke-interface/range {v0 .. v5}, Lcom/amazon/identity/auth/device/f;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    move-object v2, v6

    :cond_7
    return-object v2
.end method

.method private a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/bl;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2615
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2616
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const-string v2, "com.amazon.dcp.sso.ErrorCode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.amazon.dcp.sso.ErrorMessage"

    .line 2617
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result v1

    const-string v2, "com.amazon.map.error.errorCode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.amazon.map.error.errorMessage"

    .line 2620
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.amazon.map.error.errorType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-object p1
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "com.amazon.identity.auth.ChallengeException"

    .line 3730
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3732
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "com.amazon.identity.auth.ChallengeException.Reason"

    .line 3736
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3737
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Challenge"

    .line 3741
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.identity.auth.ChallengeException.requiredAuthenticationMethod"

    .line 3743
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3745
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3753
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private aF(Ljava/lang/String;)V
    .locals 1

    .line 3721
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3760
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->p(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3762
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":ResumeUrl"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private b(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 3505
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 3507
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p2

    const-string p3, "Cannot recover an account with a null recovery context."

    .line 3505
    invoke-static {p1, p3, p2, p3}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return v0

    :cond_0
    const-string v1, "com.amazon.dcp.sso.property.account.acctId"

    .line 3512
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3513
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Trying to recover account for directed-id : "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 3515
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3520
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 3522
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p2

    const-string p3, "Cannot recover account for an empty directedId."

    .line 3520
    invoke-static {p1, p3, p2, p3}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return v0

    .line 3526
    :cond_1
    invoke-virtual {p0, p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->isAccountRegistered(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p2, p1, v0

    const-string p2, "Customer %s is not registered. Unable to recover account."

    .line 3529
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3531
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 3533
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p3

    .line 3531
    invoke-static {p2, p1, p3, p1}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return v0

    :cond_2
    if-nez p1, :cond_4

    if-eqz p3, :cond_3

    const-string p1, "link_code"

    .line 3542
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string/jumbo p1, "pre_authorized_link_code"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 3547
    :cond_3
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string p3, "Null context reference passed. Cannot trigger a recover account confirm credential flow."

    invoke-static {p1, p3, p2, p3}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return v0

    :cond_4
    return v2
.end method

.method private bh()Lcom/amazon/identity/auth/device/f;
    .locals 2

    .line 4257
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->fB:[Ljava/lang/Object;

    monitor-enter v0

    .line 4259
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->ge:Lcom/amazon/identity/auth/device/f;

    if-nez v1, :cond_0

    .line 4261
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/g;->a(Landroid/content/Context;)Lcom/amazon/identity/auth/device/f;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->ge:Lcom/amazon/identity/auth/device/f;

    .line 4264
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->ge:Lcom/amazon/identity/auth/device/f;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4265
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic c(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5

    .line 7557
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->u(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    .line 7558
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->bd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "www.amazon.com"

    .line 7559
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "development.amazon.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "pre-prod.amazon.com"

    .line 7560
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    const-string p0, "com.amazon.identity.ap.request.parameters"

    .line 7565
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7568
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string/jumbo v2, "openid.assoc_handle"

    .line 7570
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "com.amazon.identity.ap.assoc_handle"

    .line 7573
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7577
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7576
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7585
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "amzn_device_android"

    .line 7586
    :cond_3
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    const-string/jumbo v0, "pageId"

    .line 7590
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "com.amazon.identity.ap.pageid"

    .line 7593
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 7596
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "amzn_device_common_dark"

    .line 7601
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7606
    :cond_6
    :goto_1
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private p(Landroid/os/Bundle;)Z
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "resume_authentication_url"

    .line 3769
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3771
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private q(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 4244
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ht;->H(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 4246
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "calling_package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4247
    invoke-static {}, Lcom/amazon/identity/auth/device/da;->cy()I

    move-result v0

    const-string v1, "calling_profile"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method private r(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "com.amazon.dcp.sso.extra.client_event_context.namespace"

    .line 4272
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "No namespace provided in the client event context"

    return-object p1

    :cond_0
    const-string v0, "com.amazon.dcp.sso.extra.client_event_context.properties"

    .line 4277
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "No properties provided in the client event context"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public authenticateAccount(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 14
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/amazon/identity/auth/device/api/SigninOption;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    .line 3084
    new-instance v8, Lcom/amazon/identity/auth/device/bl;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    const-string v0, "AuthenticateAccount"

    .line 3087
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v9

    if-nez p1, :cond_0

    const-string v0, "Activity passed should not be null. Please pass non null activity"

    .line 3092
    invoke-direct {p0, v8, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v4, p3

    .line 3096
    invoke-direct {p0, v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->q(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 3098
    invoke-virtual {v9}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v11

    .line 3100
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v12

    new-instance v13, Lcom/amazon/identity/auth/device/api/MAPAccountManager$2;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v8

    move-object/from16 v3, p4

    move-object v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$2;-><init>(Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/identity/auth/device/bl;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;)V

    iget-object v0, v7, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 3101
    invoke-static {v9, v11, v13, v0}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v0

    .line 3100
    invoke-interface {v12, v10, v0, v9}, Lcom/amazon/identity/auth/device/f;->a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-object v8
.end method

.method public authenticateAccount(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2973
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p2}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    const-string p2, "AuthenticateAccountWithoutActivity"

    .line 2976
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object p2

    .line 2978
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->q(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 2980
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->gd:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2982
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 2984
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 2985
    invoke-static {p2, v1, v0, v3}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v1

    .line 2984
    invoke-interface {v2, p1, v1, p2}, Lcom/amazon/identity/auth/device/f;->a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-object v0

    :cond_0
    const-string p1, "This API has been deprecated. Please use our new API MAPAccountManager.authenticateAccount(Activity, SigninOptions, Bundle, Bundle, Callback). Please refer to the authenticateAccount API Java doc for more details."

    .line 2991
    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public authenticateAccountWithUI(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 8
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/amazon/identity/auth/device/api/SigninOption;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 3265
    invoke-static {p4}, Lcom/amazon/identity/auth/device/bl;->e(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/bl;

    move-result-object v0

    .line 3266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AuthenticateAccountWithUI:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3267
    invoke-direct {p0, p3, v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3268
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v7

    .line 3269
    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 3270
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 5782
    invoke-direct {p0, p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->p(Landroid/os/Bundle;)Z

    move-result v4

    .line 3273
    invoke-static {v7, v1, p4, v3, v4}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;Z)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 3270
    invoke-interface/range {v2 .. v7}, Lcom/amazon/identity/auth/device/f;->b(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-object v0
.end method

.method public authorizeLinkCode(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 4
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "AuthorizeLinkCode"

    .line 4121
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 4122
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    if-nez p1, :cond_0

    .line 4124
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4125
    :cond_0
    invoke-static {p2}, Lcom/amazon/identity/auth/device/bl;->e(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/bl;

    move-result-object p2

    .line 4126
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0, v1, p2, v2}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v1

    .line 4128
    new-instance v2, Lcom/amazon/identity/auth/device/bn;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v3}, Lcom/amazon/identity/auth/device/bn;-><init>(Landroid/content/Context;)V

    .line 4129
    invoke-virtual {v2, p1, v1, v0}, Lcom/amazon/identity/auth/device/bn;->f(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-object p2
.end method

.method public bootStrapSSO(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 4
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "bootstrapSSO"

    .line 4033
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 4034
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 4035
    invoke-static {p1}, Lcom/amazon/identity/auth/device/bl;->e(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/bl;

    move-result-object p1

    .line 4036
    new-instance v2, Lcom/amazon/identity/auth/device/bi;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/amazon/identity/auth/device/bi;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 4037
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/bi;->bq()V

    return-object p1
.end method

.method public confirmCredential(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2883
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    const-string p4, "DeregisterDevice"

    .line 2884
    invoke-static {p4}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v6

    .line 2885
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object p4

    .line 2886
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 2889
    invoke-static {v6, p4, v0, v2}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 2886
    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/f;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-object v0
.end method

.method public deregisterAccount(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2698
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->deregisterAccount(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public deregisterAccount(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 4
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2739
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "deregisterAccount called by %s"

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    const-string v0, "com.amazon.dcp.sso.extra.client_event_context"

    .line 2743
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->r(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2747
    invoke-static {p2}, Lcom/amazon/identity/auth/device/bl;->e(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/bl;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "DeregisterAccount"

    .line 2751
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 2752
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 2753
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 2754
    invoke-static {v0, v1, p2, v3}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p2

    .line 2753
    invoke-interface {v2, p1, p2, v0, p3}, Lcom/amazon/identity/auth/device/f;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public deregisterAccountChangeObserver(Lcom/amazon/identity/auth/device/api/MAPAccountManager$MAPAccountChangeObserver;)V
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "UnregisterAccountChangeObserver"

    .line 4188
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 4189
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 4190
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/fk;->b(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/MAPAccountManager$MAPAccountChangeObserver;)V

    .line 4191
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 4192
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    return-void
.end method

.method public deregisterDevice(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2802
    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->deregisterDevice(Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public deregisterDevice(Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 4
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2849
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "deregisterDevice called by %s"

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const-string v0, "com.amazon.dcp.sso.extra.client_event_context"

    .line 2853
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->r(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2857
    invoke-static {p1}, Lcom/amazon/identity/auth/device/bl;->e(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/bl;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "DeregisterDevice"

    .line 2861
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 2862
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 2863
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0, v1, p1, v3}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p1

    invoke-interface {v2, p1, v0, p2}, Lcom/amazon/identity/auth/device/f;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public ensureAccountState(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 8
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 3638
    invoke-static {p4}, Lcom/amazon/identity/auth/device/bl;->e(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/bl;

    move-result-object v0

    const-string v1, "EnsureAccountState"

    .line 3640
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v7

    .line 3641
    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    if-nez p1, :cond_0

    const-string v2, "For ensureAccountState activity can not be null"

    .line 6673
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->aF(Ljava/lang/String;)V

    goto :goto_1

    .line 6677
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "For ensureAccountState directedId can not be null"

    .line 6679
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->aF(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    const-string v2, "For ensureAccountState options can not be null"

    .line 6686
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->aF(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v2, "com.amazon.identity.ap.domain"

    .line 6690
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.identity.ap.request.parameters"

    .line 6691
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 6692
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "openid.assoc_handle"

    .line 6697
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EnsureAccountStateAttributes"

    .line 6699
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 6701
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "For ensureAccountState domain can not be null"

    .line 6703
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->aF(Ljava/lang/String;)V

    goto :goto_1

    .line 6707
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "For ensureAccountState associationHandle can not be null"

    .line 6709
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->aF(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    .line 6713
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    const-string v2, "For ensureAccountState assertExistingAttributes can not be null"

    .line 6715
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->aF(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    :goto_0
    const-string v2, "For ensureAccountState requestParameters which contains associationHandle can not be null"

    .line 6694
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->aF(Ljava/lang/String;)V

    .line 3644
    :cond_8
    :goto_1
    invoke-virtual {p0, p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->isAccountRegistered(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_9

    .line 3647
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->TAG:Ljava/lang/String;

    const-string p3, "The given account is not registered"

    invoke-static {p1, p3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v3, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "Given directedId %s is not registered."

    .line 3648
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3650
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 3652
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p3

    .line 3650
    invoke-static {p2, p1, p3, p1}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    .line 3654
    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/ej;->ea()V

    goto :goto_2

    .line 3658
    :cond_9
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v2

    iget-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 3661
    invoke-static {v7, v1, v0, p4, v3}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;Z)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 3658
    invoke-interface/range {v2 .. v7}, Lcom/amazon/identity/auth/device/f;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    :goto_2
    return-object v0
.end method

.method public ensureAmazonAccount(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3904
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->fB:[Ljava/lang/Object;

    monitor-enter v0

    .line 3906
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->isDeviceRegistered()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3908
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->TAG:Ljava/lang/String;

    const-string v2, "No amazon account found. Try to create one."

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 3909
    invoke-static {}, Lcom/amazon/identity/auth/device/jf;->gR()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3915
    sget-object v1, Lcom/amazon/identity/auth/device/api/SigninOption;->WebviewSignin:Lcom/amazon/identity/auth/device/api/SigninOption;

    const/4 v2, 0x0

    .line 3916
    invoke-virtual {p0, p1, v1, v2, v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->registerAccountWithUI(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3920
    :try_start_1
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    .line 3921
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    .line 3925
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->TAG:Ljava/lang/String;

    const-string v3, "Got exception when creating amazon account."

    invoke-static {v1, v3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3926
    monitor-exit v0

    return-object v2

    .line 3911
    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->TAG:Ljava/lang/String;

    const-string v1, "Invoked on main thread."

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 3912
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Do not run on main thread."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3931
    :cond_1
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->TAG:Ljava/lang/String;

    const-string v1, "Already have an amazon account."

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 3932
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3934
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public generateCNEPUrl(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 4204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAPGenerateCNEPUrl:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4205
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mw;->bm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4206
    sget-object v1, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->CentralDeviceType:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/it;->c(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/String;

    move-result-object p1

    .line 4207
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "directed_id_confirm"

    .line 4208
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4210
    new-instance v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CNEP:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-direct {v1, p1, v2, p2}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;Landroid/os/Bundle;)V

    .line 4212
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bR()Ljava/lang/String;

    move-result-object p1

    .line 4216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4218
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/ap/id/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4222
    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aR(Ljava/lang/String;)V

    .line 4223
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bR()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public generateForgotPasswordUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 4147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAPGenerateForgotPasswordUrl:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "generateForgotPasswordUrl"

    .line 4148
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 4149
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 4153
    :try_start_0
    new-instance v2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

    const/4 v3, 0x0

    sget-object v4, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->FORGOT_PASSWORD:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-direct {v2, v3, v4, p1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;Landroid/os/Bundle;)V

    .line 4156
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bR()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4160
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 4161
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 4160
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 4161
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    .line 4162
    throw p1
.end method

.method public generateLinkCode(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 4
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "GenerateLinkCode"

    .line 3978
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 3979
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    if-nez p1, :cond_0

    .line 3981
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3982
    :cond_0
    invoke-static {p2}, Lcom/amazon/identity/auth/device/bl;->e(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/bl;

    move-result-object p2

    .line 3983
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0, v1, p2, v2}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v1

    .line 3984
    new-instance v2, Lcom/amazon/identity/auth/device/bn;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v3}, Lcom/amazon/identity/auth/device/bn;-><init>(Landroid/content/Context;)V

    .line 3985
    invoke-virtual {v2, p1, v1, v0}, Lcom/amazon/identity/auth/device/bn;->d(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-object p2
.end method

.method public generatePreAuthorizedLinkCode(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 4
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "GeneratePreAuthorizedLinkCode"

    .line 4081
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 4082
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    if-nez p1, :cond_0

    .line 4084
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4085
    :cond_0
    invoke-static {p2}, Lcom/amazon/identity/auth/device/bl;->e(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/bl;

    move-result-object p2

    .line 4086
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0, v1, p2, v2}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v1

    .line 4087
    new-instance v2, Lcom/amazon/identity/auth/device/bn;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v3}, Lcom/amazon/identity/auth/device/bn;-><init>(Landroid/content/Context;)V

    .line 4088
    invoke-virtual {v2, p1, v1, v0}, Lcom/amazon/identity/auth/device/bn;->e(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-object p2
.end method

.method public getAccount()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 3864
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->fJ:Ljava/lang/String;

    const-string v1, "getAccount"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 3867
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/identity/auth/device/f;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3871
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 3872
    throw v1
.end method

.method public getAccounts()Ljava/util/Set;
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3882
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->fJ:Ljava/lang/String;

    const-string v1, "getAccounts"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 3885
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/identity/auth/device/f;->getAccounts()Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3889
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 3890
    throw v1
.end method

.method public getPrimaryAccount()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3846
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->fJ:Ljava/lang/String;

    const-string v1, "getPrimaryAccount"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 3849
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/identity/auth/device/f;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3853
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 3854
    throw v1
.end method

.method public isAccountRegistered(Ljava/lang/String;)Z
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 3818
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->fJ:Ljava/lang/String;

    const-string v1, "isAccountRegistered"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 3821
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/identity/auth/device/f;->isAccountRegistered(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3825
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 3826
    throw p1
.end method

.method public isDeviceRegistered()Z
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3799
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->fJ:Ljava/lang/String;

    const-string v1, "isDeviceRegistered"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 3802
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/identity/auth/device/f;->isDeviceRegistered()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3806
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 3807
    throw v1
.end method

.method public recoverAccount(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3411
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public recoverAccount(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 3397
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public registerAccount(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 15
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v3, p2

    .line 2377
    invoke-static/range {p4 .. p4}, Lcom/amazon/identity/auth/device/bl;->e(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/bl;

    move-result-object v8

    if-nez p1, :cond_0

    const-string v0, "Activity passed should not be null. Please pass non null activity"

    .line 2382
    invoke-direct {p0, v8, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v3, :cond_1

    const-string v0, "com.amazon.dcp.sso.extra.client_event_context"

    .line 2387
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->r(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2391
    invoke-direct {p0, v8, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    .line 2395
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_LOGIN_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    const-string v1, "com.amazon.dcp.sso.property.account.primary.acctId"

    const-string v2, "com.amazon.dcp.sso.property.account.acctId"

    if-eqz v3, :cond_2

    .line 2397
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2398
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "You pass account direct id for both secondary and primary registration: MAPAccountManager.KEY_DIRECTED_ID and MAPAccountManager.KEY_PRIMARY_DIRECTED_ID.\nPlease pass either of it."

    .line 2400
    invoke-direct {p0, v8, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v3, :cond_3

    .line 2404
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2406
    sget-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_PRIMARY_DIRECTEDID_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    :cond_3
    if-eqz v3, :cond_4

    .line 2408
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2410
    sget-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_DIRECTEDID_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    :cond_4
    move-object v9, v0

    .line 2413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RegisterAccount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v10

    .line 2414
    invoke-virtual {v10}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v11

    .line 2416
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->q(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    .line 2417
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v13

    new-instance v14, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object v4, v8

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;-><init>(Lcom/amazon/identity/auth/device/api/MAPAccountManager;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/bl;Lcom/amazon/identity/auth/device/ej;Landroid/app/Activity;)V

    iget-object v0, v7, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 2419
    invoke-static {v10, v11, v14, v0}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v0

    .line 2417
    invoke-interface {v13, v9, v12, v0, v10}, Lcom/amazon/identity/auth/device/f;->a(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-object v8
.end method

.method public registerAccount(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 4
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/api/RegistrationType;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2164
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mn;->b(Lcom/amazon/identity/auth/device/api/RegistrationType;)Ljava/lang/String;

    move-result-object v0

    .line 2165
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterAccountWithoutActivity:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 2166
    invoke-static {p3}, Lcom/amazon/identity/auth/device/bl;->e(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/bl;

    move-result-object p3

    .line 2171
    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_LOGIN_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    if-eq v1, p1, :cond_0

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_DIRECTEDID_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    if-eq v1, p1, :cond_0

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_PRIMARY_DIRECTEDID_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    if-ne v1, p1, :cond_1

    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->gd:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 2174
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2177
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid RegistrationType. RegisterAccount API with RegistrationType:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/RegistrationType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has been removed. Please use our new API MAPAccountManager.registerAccount(Activity, Bundle, Bundle, Callback). Please refer to the registerAccount API Java doc for more details."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2177
    invoke-direct {p0, p3, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1

    .line 2185
    :cond_1
    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_LINK_CODE:Lcom/amazon/identity/auth/device/api/RegistrationType;

    if-ne v1, p1, :cond_6

    const-string v1, "link_code"

    .line 2187
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pre_authorized_link_code"

    .line 2188
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2192
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->TAG:Ljava/lang/String;

    const-string p2, "No link code passed in the registerAccount API WITH_LINK_CODE"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "A required parameter link code was not passed in the API. Call MAPAccountManager#generateLinkCode() or MAPAccountManager#generatePreAuthorizedLinkCode() to get a link code based on your use-case and pass them in the key MAPAccountManager#KEY_LINK_CODE or MAPAccountManager#KEY_PRE_AUTHORIZED_LINK_CODE respectively."

    .line 2194
    invoke-direct {p0, p3, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1

    .line 2197
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2199
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->TAG:Ljava/lang/String;

    const-string p2, "Multiple link code keys set"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "You cannot set both the keys MAPAccountManager#KEY_LINK_CODE and MAPAccountManager#KEY_PRE_AUTHORIZED_LINK_CODE. Based on the type of link code you have, set the appropriate key as specified in the javadoc of RegistrationType#WITH_LINK_CODE."

    .line 2201
    invoke-direct {p0, p3, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1

    .line 2204
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2207
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/bn;->q(Landroid/content/Context;)Lcom/amazon/identity/auth/device/bn$a;

    move-result-object v2

    if-nez v2, :cond_4

    const-string p1, "The link code that MAP had has expired or it has not been generated yet. Please call MAPAccountManager#generateLinkCode to generate the link code."

    .line 2211
    invoke-direct {p0, p3, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1

    .line 2216
    :cond_4
    iget-object v3, v2, Lcom/amazon/identity/auth/device/bn$a;->hq:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string p1, "The link code does not match the one that MAP has. Please call MAPAccountManager#generateLinkCode to get the link code."

    .line 2219
    invoke-direct {p0, p3, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1

    .line 2222
    :cond_5
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1, p3}, Lcom/amazon/identity/auth/device/bn;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/bl;)Lcom/amazon/identity/auth/device/bl;

    move-result-object p3

    .line 2225
    iget-object v1, v2, Lcom/amazon/identity/auth/device/bn$a;->hq:Ljava/lang/String;

    const-string v3, "cbl_public_code"

    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    iget-object v1, v2, Lcom/amazon/identity/auth/device/bn$a;->hr:Ljava/lang/String;

    const-string v2, "cbl_private_code"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    :cond_6
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 2232
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->q(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 2233
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 2235
    invoke-static {v0, v1, p3, v3}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v1

    .line 2233
    invoke-interface {v2, p1, p2, v1, v0}, Lcom/amazon/identity/auth/device/f;->a(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-object p3
.end method

.method public registerAccountChangeObserver(Lcom/amazon/identity/auth/device/api/MAPAccountManager$MAPAccountChangeObserver;)V
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "RegisterAccountChangeObserver"

    .line 4173
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 4174
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 4175
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/fk;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/MAPAccountManager$MAPAccountChangeObserver;)V

    .line 4176
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 4177
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    return-void
.end method

.method public registerAccountWithUI(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/amazon/identity/auth/device/api/SigninOption;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "option"

    .line 2017
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2018
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RegisterAccountWithUI:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2019
    invoke-direct {p0, p3, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2020
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v6

    .line 2021
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 2022
    invoke-static {p4}, Lcom/amazon/identity/auth/device/bl;->e(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/bl;

    move-result-object p4

    .line 2023
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 4782
    invoke-direct {p0, p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->p(Landroid/os/Bundle;)Z

    move-result v3

    .line 2026
    invoke-static {v6, v0, p4, v2, v3}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;Z)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 2023
    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/f;->a(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-object p4
.end method

.method public registerDelegatedAccount(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2646
    invoke-static {p4}, Lcom/amazon/identity/auth/device/bl;->e(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/bl;

    move-result-object p4

    const-string/jumbo v0, "registerDelegatedAccount"

    .line 2647
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    const-string/jumbo v1, "registerDelegatedAccount_totalTime"

    .line 2648
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    const-string/jumbo v2, "registerDelegatedAccount_count"

    .line 2649
    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 2651
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerDelegatedAccount() is deprecated. Please use registerAccount()."

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2652
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v2, "com.amazon.dcp.sso.property.account.acctId"

    .line 2653
    invoke-virtual {p3, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.amazon.dcp.sso.property.account.delegateeaccount"

    .line 2654
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const-string p2, "com.amazon.dcp.sso.AddAccount.options.AddAsSecondary"

    .line 2655
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2657
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->bh()Lcom/amazon/identity/auth/device/f;

    move-result-object p1

    sget-object p2, Lcom/amazon/identity/auth/device/api/RegistrationType;->REGISTER_DELEGATED_ACCOUNT:Lcom/amazon/identity/auth/device/api/RegistrationType;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 2659
    invoke-static {v0, v1, p4, v2}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v1

    .line 2657
    invoke-interface {p1, p2, p3, v1, v0}, Lcom/amazon/identity/auth/device/f;->a(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-object p4
.end method
