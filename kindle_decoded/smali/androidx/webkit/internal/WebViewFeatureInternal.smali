.class public final enum Landroidx/webkit/internal/WebViewFeatureInternal;
.super Ljava/lang/Enum;
.source "WebViewFeatureInternal.java"

# interfaces
.implements Landroidx/webkit/internal/ConditionallySupportedFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/internal/WebViewFeatureInternal$LAZY_HOLDER;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/webkit/internal/WebViewFeatureInternal;",
        ">;",
        "Landroidx/webkit/internal/ConditionallySupportedFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum CREATE_WEB_MESSAGE_CHANNEL:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum DISABLED_ACTION_MODE_MENU_ITEMS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum DOCUMENT_START_SCRIPT:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum FORCE_DARK:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum FORCE_DARK_STRATEGY:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum GET_WEB_CHROME_CLIENT:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum GET_WEB_VIEW_CLIENT:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum GET_WEB_VIEW_RENDERER:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum MULTI_PROCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field private static final NOT_SUPPORTED_BY_FRAMEWORK:I = -0x1

.field public static final enum OFF_SCREEN_PRERASTER:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum POST_WEB_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum PROXY_OVERRIDE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum RECEIVE_HTTP_ERROR:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum RECEIVE_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_DEPRECATED:Landroidx/webkit/internal/WebViewFeatureInternal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_PREFERRED:Landroidx/webkit/internal/WebViewFeatureInternal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_ENABLE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_HIT:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_PRIVACY_POLICY_URL:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_RESPONSE_PROCEED:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_BLOCK_NETWORK_LOADS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_CACHE_MODE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_CONTENT_ACCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_FILE_ACCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SHOULD_OVERRIDE_WITH_REDIRECTS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum START_SAFE_BROWSING:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SUPPRESS_ERROR_PAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum TRACING_CONTROLLER_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum VISUAL_STATE_CALLBACK:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_MESSAGE_CALLBACK_ON_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_MESSAGE_PORT_CLOSE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_MESSAGE_PORT_POST_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_RESOURCE_ERROR_GET_CODE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_RESOURCE_ERROR_GET_DESCRIPTION:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_RESOURCE_REQUEST_IS_REDIRECT:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_VIEW_RENDERER_TERMINATE:Landroidx/webkit/internal/WebViewFeatureInternal;


# instance fields
.field private final mInternalFeatureValue:Ljava/lang/String;

.field private final mOsVersion:I

.field private final mPublicFeatureValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 66
    new-instance v6, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v1, "VISUAL_STATE_CALLBACK"

    const/4 v2, 0x0

    const-string v3, "VISUAL_STATE_CALLBACK"

    const-string v4, "VISUAL_STATE_CALLBACK"

    const/16 v5, 0x17

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Landroidx/webkit/internal/WebViewFeatureInternal;->VISUAL_STATE_CALLBACK:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 74
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "OFF_SCREEN_PRERASTER"

    const/4 v9, 0x1

    const-string v10, "OFF_SCREEN_PRERASTER"

    const-string v11, "OFF_SCREEN_PRERASTER"

    const/16 v12, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->OFF_SCREEN_PRERASTER:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 82
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "SAFE_BROWSING_ENABLE"

    const/4 v3, 0x2

    const-string v4, "SAFE_BROWSING_ENABLE"

    const-string v5, "SAFE_BROWSING_ENABLE"

    const/16 v6, 0x1a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ENABLE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 90
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "DISABLED_ACTION_MODE_MENU_ITEMS"

    const/4 v9, 0x3

    const-string v10, "DISABLED_ACTION_MODE_MENU_ITEMS"

    const-string v11, "DISABLED_ACTION_MODE_MENU_ITEMS"

    const/16 v12, 0x18

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DISABLED_ACTION_MODE_MENU_ITEMS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 97
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "START_SAFE_BROWSING"

    const/4 v3, 0x4

    const-string v4, "START_SAFE_BROWSING"

    const-string v5, "START_SAFE_BROWSING"

    const/16 v6, 0x1b

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->START_SAFE_BROWSING:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 111
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_DEPRECATED"

    const/4 v9, 0x5

    const-string v10, "SAFE_BROWSING_WHITELIST"

    const-string v11, "SAFE_BROWSING_WHITELIST"

    const/16 v12, 0x1b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_DEPRECATED:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 126
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_PREFERRED"

    const/4 v3, 0x6

    const-string v4, "SAFE_BROWSING_WHITELIST"

    const-string v5, "SAFE_BROWSING_ALLOWLIST"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_PREFERRED:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 134
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED"

    const/4 v9, 0x7

    const-string v10, "SAFE_BROWSING_ALLOWLIST"

    const-string v11, "SAFE_BROWSING_WHITELIST"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 141
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED"

    const/16 v3, 0x8

    const-string v4, "SAFE_BROWSING_ALLOWLIST"

    const-string v5, "SAFE_BROWSING_ALLOWLIST"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 148
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    const/16 v9, 0x9

    const-string v10, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    const-string v11, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_PRIVACY_POLICY_URL:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 155
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "SERVICE_WORKER_BASIC_USAGE"

    const/16 v3, 0xa

    const-string v4, "SERVICE_WORKER_BASIC_USAGE"

    const-string v5, "SERVICE_WORKER_BASIC_USAGE"

    const/16 v6, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 163
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "SERVICE_WORKER_CACHE_MODE"

    const/16 v9, 0xb

    const-string v10, "SERVICE_WORKER_CACHE_MODE"

    const-string v11, "SERVICE_WORKER_CACHE_MODE"

    const/16 v12, 0x18

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_CACHE_MODE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 171
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "SERVICE_WORKER_CONTENT_ACCESS"

    const/16 v3, 0xc

    const-string v4, "SERVICE_WORKER_CONTENT_ACCESS"

    const-string v5, "SERVICE_WORKER_CONTENT_ACCESS"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_CONTENT_ACCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 179
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "SERVICE_WORKER_FILE_ACCESS"

    const/16 v9, 0xd

    const-string v10, "SERVICE_WORKER_FILE_ACCESS"

    const-string v11, "SERVICE_WORKER_FILE_ACCESS"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_FILE_ACCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 187
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    const/16 v3, 0xe

    const-string v4, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    const-string v5, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_BLOCK_NETWORK_LOADS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 194
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    const/16 v9, 0xf

    const-string v10, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    const-string v11, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 202
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "RECEIVE_WEB_RESOURCE_ERROR"

    const/16 v3, 0x10

    const-string v4, "RECEIVE_WEB_RESOURCE_ERROR"

    const-string v5, "RECEIVE_WEB_RESOURCE_ERROR"

    const/16 v6, 0x17

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->RECEIVE_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 210
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "RECEIVE_HTTP_ERROR"

    const/16 v9, 0x11

    const-string v10, "RECEIVE_HTTP_ERROR"

    const-string v11, "RECEIVE_HTTP_ERROR"

    const/16 v12, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->RECEIVE_HTTP_ERROR:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 218
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    const/16 v3, 0x12

    const-string v4, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    const-string v5, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    const/16 v6, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SHOULD_OVERRIDE_WITH_REDIRECTS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 226
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "SAFE_BROWSING_HIT"

    const/16 v9, 0x13

    const-string v10, "SAFE_BROWSING_HIT"

    const-string v11, "SAFE_BROWSING_HIT"

    const/16 v12, 0x1b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_HIT:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 233
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    const/16 v3, 0x14

    const-string v4, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    const-string v5, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_REQUEST_IS_REDIRECT:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 240
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    const/16 v9, 0x15

    const-string v10, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    const-string v11, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    const/16 v12, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_ERROR_GET_DESCRIPTION:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 247
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "WEB_RESOURCE_ERROR_GET_CODE"

    const/16 v3, 0x16

    const-string v4, "WEB_RESOURCE_ERROR_GET_CODE"

    const-string v5, "WEB_RESOURCE_ERROR_GET_CODE"

    const/16 v6, 0x17

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_ERROR_GET_CODE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 254
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const/16 v9, 0x17

    const-string v10, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const-string v11, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const/16 v12, 0x1b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 261
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "SAFE_BROWSING_RESPONSE_PROCEED"

    const/16 v3, 0x18

    const-string v4, "SAFE_BROWSING_RESPONSE_PROCEED"

    const-string v5, "SAFE_BROWSING_RESPONSE_PROCEED"

    const/16 v6, 0x1b

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_PROCEED:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 268
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    const/16 v9, 0x19

    const-string v10, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    const-string v11, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 276
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const/16 v3, 0x1a

    const-string v4, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const-string v5, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const/16 v6, 0x17

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_POST_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 283
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "WEB_MESSAGE_PORT_CLOSE"

    const/16 v9, 0x1b

    const-string v10, "WEB_MESSAGE_PORT_CLOSE"

    const-string v11, "WEB_MESSAGE_PORT_CLOSE"

    const/16 v12, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_CLOSE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 293
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    const/16 v3, 0x1c

    const-string v4, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    const-string v5, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 300
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "CREATE_WEB_MESSAGE_CHANNEL"

    const/16 v9, 0x1d

    const-string v10, "CREATE_WEB_MESSAGE_CHANNEL"

    const-string v11, "CREATE_WEB_MESSAGE_CHANNEL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CREATE_WEB_MESSAGE_CHANNEL:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 307
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "POST_WEB_MESSAGE"

    const/16 v3, 0x1e

    const-string v4, "POST_WEB_MESSAGE"

    const-string v5, "POST_WEB_MESSAGE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->POST_WEB_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 314
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    const/16 v9, 0x1f

    const-string v10, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    const-string v11, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_CALLBACK_ON_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 320
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "GET_WEB_VIEW_CLIENT"

    const/16 v3, 0x20

    const-string v4, "GET_WEB_VIEW_CLIENT"

    const-string v5, "GET_WEB_VIEW_CLIENT"

    const/16 v6, 0x1a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_CLIENT:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 326
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "GET_WEB_CHROME_CLIENT"

    const/16 v9, 0x21

    const-string v10, "GET_WEB_CHROME_CLIENT"

    const-string v11, "GET_WEB_CHROME_CLIENT"

    const/16 v12, 0x1a

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_CHROME_CLIENT:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 329
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "GET_WEB_VIEW_RENDERER"

    const/16 v3, 0x22

    const-string v4, "GET_WEB_VIEW_RENDERER"

    const-string v5, "GET_WEB_VIEW_RENDERER"

    const/16 v6, 0x1d

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_RENDERER:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 331
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "WEB_VIEW_RENDERER_TERMINATE"

    const/16 v9, 0x23

    const-string v10, "WEB_VIEW_RENDERER_TERMINATE"

    const-string v11, "WEB_VIEW_RENDERER_TERMINATE"

    const/16 v12, 0x1d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_TERMINATE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 341
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v2, "TRACING_CONTROLLER_BASIC_USAGE"

    const/16 v3, 0x24

    const-string v4, "TRACING_CONTROLLER_BASIC_USAGE"

    const-string v5, "TRACING_CONTROLLER_BASIC_USAGE"

    const/16 v6, 0x1c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->TRACING_CONTROLLER_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 351
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    const/16 v9, 0x25

    const-string v10, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    const-string v11, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 361
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v1, 0x26

    const-string v2, "PROXY_OVERRIDE"

    const-string v3, "PROXY_OVERRIDE:3"

    invoke-direct {v0, v2, v1, v2, v3}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROXY_OVERRIDE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 368
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v2, 0x27

    const-string v3, "SUPPRESS_ERROR_PAGE"

    invoke-direct {v0, v3, v2, v3, v3}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SUPPRESS_ERROR_PAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 373
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v3, 0x28

    const-string v4, "MULTI_PROCESS"

    const-string v5, "MULTI_PROCESS_QUERY"

    invoke-direct {v0, v4, v3, v4, v5}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 380
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v4, 0x29

    const-string v5, "FORCE_DARK"

    invoke-direct {v0, v5, v4, v5, v5}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 387
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v5, 0x2a

    const-string v6, "FORCE_DARK_STRATEGY"

    const-string v7, "FORCE_DARK_BEHAVIOR"

    invoke-direct {v0, v6, v5, v6, v7}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK_STRATEGY:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 395
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v6, 0x2b

    const-string v7, "WEB_MESSAGE_LISTENER"

    invoke-direct {v0, v7, v6, v7, v7}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 403
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v7, 0x2c

    const-string v8, "DOCUMENT_START_SCRIPT"

    const-string v9, "DOCUMENT_START_SCRIPT:1"

    invoke-direct {v0, v8, v7, v8, v9}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DOCUMENT_START_SCRIPT:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v8, 0x2d

    new-array v8, v8, [Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 59
    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->VISUAL_STATE_CALLBACK:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->OFF_SCREEN_PRERASTER:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ENABLE:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->DISABLED_ACTION_MODE_MENU_ITEMS:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/4 v10, 0x3

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->START_SAFE_BROWSING:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/4 v10, 0x4

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_DEPRECATED:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/4 v10, 0x5

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_PREFERRED:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/4 v10, 0x6

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/4 v10, 0x7

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x8

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_PRIVACY_POLICY_URL:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x9

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0xa

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_CACHE_MODE:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0xb

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_CONTENT_ACCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0xc

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_FILE_ACCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0xd

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_BLOCK_NETWORK_LOADS:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0xe

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0xf

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->RECEIVE_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x10

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->RECEIVE_HTTP_ERROR:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x11

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SHOULD_OVERRIDE_WITH_REDIRECTS:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x12

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_HIT:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x13

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_REQUEST_IS_REDIRECT:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x14

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_ERROR_GET_DESCRIPTION:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x15

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_ERROR_GET_CODE:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x16

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x17

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_PROCEED:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x18

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x19

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_POST_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x1a

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_CLOSE:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x1b

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x1c

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->CREATE_WEB_MESSAGE_CHANNEL:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x1d

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->POST_WEB_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x1e

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_CALLBACK_ON_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x1f

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_CLIENT:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x20

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_CHROME_CLIENT:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x21

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_RENDERER:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x22

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_TERMINATE:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x23

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->TRACING_CONTROLLER_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x24

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v10, 0x25

    aput-object v9, v8, v10

    sget-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->PROXY_OVERRIDE:Landroidx/webkit/internal/WebViewFeatureInternal;

    aput-object v9, v8, v1

    sget-object v1, Landroidx/webkit/internal/WebViewFeatureInternal;->SUPPRESS_ERROR_PAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    aput-object v1, v8, v2

    sget-object v1, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

    aput-object v1, v8, v3

    sget-object v1, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK:Landroidx/webkit/internal/WebViewFeatureInternal;

    aput-object v1, v8, v4

    sget-object v1, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK_STRATEGY:Landroidx/webkit/internal/WebViewFeatureInternal;

    aput-object v1, v8, v5

    sget-object v1, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/WebViewFeatureInternal;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Landroidx/webkit/internal/WebViewFeatureInternal;->$VALUES:[Landroidx/webkit/internal/WebViewFeatureInternal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 423
    invoke-direct/range {v0 .. v5}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 435
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 436
    iput-object p3, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mPublicFeatureValue:Ljava/lang/String;

    .line 437
    iput-object p4, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mInternalFeatureValue:Ljava/lang/String;

    .line 438
    iput p5, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mOsVersion:I

    return-void
.end method

.method public static getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;
    .locals 2

    .line 526
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 5

    .line 446
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 447
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->values()[Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 448
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    :cond_0
    invoke-static {p0, v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupported(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroidx/webkit/internal/ConditionallySupportedFeature;",
            ">;)Z"
        }
    .end annotation

    .line 464
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 465
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/internal/ConditionallySupportedFeature;

    .line 466
    invoke-interface {v1}, Landroidx/webkit/internal/ConditionallySupportedFeature;->getPublicFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 470
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 473
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/webkit/internal/ConditionallySupportedFeature;

    .line 474
    invoke-interface {p1}, Landroidx/webkit/internal/ConditionallySupportedFeature;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 471
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;
    .locals 1

    .line 59
    const-class v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/webkit/internal/WebViewFeatureInternal;

    return-object p0
.end method

.method public static values()[Landroidx/webkit/internal/WebViewFeatureInternal;
    .locals 1

    .line 59
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->$VALUES:[Landroidx/webkit/internal/WebViewFeatureInternal;

    invoke-virtual {v0}, [Landroidx/webkit/internal/WebViewFeatureInternal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/webkit/internal/WebViewFeatureInternal;

    return-object v0
.end method


# virtual methods
.method public getPublicFeatureName()Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mPublicFeatureValue:Ljava/lang/String;

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .line 506
    invoke-virtual {p0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSupportedByFramework()Z
    .locals 3

    .line 484
    iget v0, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mOsVersion:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 487
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSupportedByWebView()Z
    .locals 2

    .line 494
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal$LAZY_HOLDER;->WEBVIEW_APK_FEATURES:Ljava/util/Set;

    iget-object v1, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mInternalFeatureValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->containsFeature(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
