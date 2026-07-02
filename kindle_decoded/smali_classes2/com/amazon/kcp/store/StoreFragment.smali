.class public Lcom/amazon/kcp/store/StoreFragment;
.super Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragment;
.source "StoreFragment.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;
.implements Lcom/amazon/kcp/store/listener/StoreInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/StoreFragment$Option;,
        Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;,
        Lcom/amazon/kcp/store/StoreFragment$StoreWebViewHelper;,
        Lcom/amazon/kcp/store/StoreFragment$StoreWebChromeClient;,
        Lcom/amazon/kcp/store/StoreFragment$WebViewMode;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANGUAGE_HEADER_KEY:Ljava/lang/String; = "Accept-Language"

.field private static final ALERT_DIALOG_REQUEST_CODE:I = 0x2

.field private static final DEFAULT_FONT_SIZE:I = 0x10

.field private static final DPPUI_URL:Ljava/lang/String; = "dppui/pay-select"

.field private static final KEY_CURRENT_URL:Ljava/lang/String; = "CurrentURL"

.field private static final KEY_POST_AUTH_SCRIPT:Ljava/lang/String; = "PostAuthScript"

.field private static final KEY_TARGET_PAGE:Ljava/lang/String; = "TargetPage"

.field private static final KINDLE_PROTOCOL:Ljava/lang/String; = "kindle://"

.field private static final MAX_NUM_CREDENTIAL_ATTEMPTS:I = 0x3

.field private static final METRICS_ACTION_DEPTH_CHANGE:Ljava/lang/String; = "StoreDepthChange"

.field private static final METRICS_CONTEXT_KEY:Ljava/lang/String; = "metricsContext"

.field private static final METRICS_METADATA_KEY_DEPTH:Ljava/lang/String; = "depth"

.field private static final MYCD_URL:Ljava/lang/String; = "/hz/mycd/myx"

.field private static final OAUTH_TOKEN_REFRESH_RATE:I = 0x2dc6c0

.field private static final OPTIONS_KEY:Ljava/lang/String; = "options"

.field private static final POP_OUT_TOKEN:Ljava/lang/String; = "PopOutOfWebView"

.field private static final REENABLE_BUTTONS:Ljava/lang/String; = "(function(){\nif (window.P) {\nP.when(\'A\').execute(function (A) {\nA.trigger(\"mash:willReappear\");\n});\n}\n})()"

.field private static STORE_EXTRAS:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORE_FRAGMENT_TITLE_KEY:Ljava/lang/String; = "StoreFragmentTitle"

.field private static final STORE_FRAGMENT_WEBVIEW_KEY:Ljava/lang/String; = "StoreFragmentWebview"

.field private static final STORE_WEBVIEW_CACHE_SIZE:J = 0x1400000L

.field private static final TAG:Ljava/lang/String;

.field private static final TRANSIENT_ACTIVITY_REQUEST_CODE:I = 0x1

.field private static final WEBLAB_KEY:Ljava/lang/String; = "experiment"

.field private static final WEBVIEW_TEXT_ZOOM:I = 0x64

.field private static oAuthRefreshTimer:Ljava/util/Timer;


# instance fields
.field private final STORE_CONNECTION_DELAY:I

.field private final STORE_OPEN_MAX_RETRIES:I

.field private volatile authCookies:[Ljava/lang/String;

.field authenticated:Z

.field private browseNode:Ljava/lang/String;

.field private browserHost:Lcom/amazon/kcp/store/BrowserHost;

.field private client:Lcom/amazon/kcp/store/IStoreFragmentClient;

.field private connectionHandler:Landroid/os/Handler;

.field private currentMode:Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

.field private volatile currentUrl:Ljava/lang/String;

.field private destroyed:Z

.field private volatile deviceType:Ljava/lang/String;

.field private volatile dsn:Ljava/lang/String;

.field private errorStateHelper:Lcom/amazon/kcp/store/IStoreErrorStateHelper;

.field protected intentReceiveRealTime:J

.field private isFirstLoadAfterLogin:Z

.field private isShowingAlertActivity:Z

.field private isStoreLoaded:Z

.field protected jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

.field private loadPageExtras:Landroid/os/Bundle;

.field private metricsContext:Ljava/lang/String;

.field private final metricsLogger:Lcom/amazon/kcp/store/StoreMetricsLogger;

.field private nextPageIsStoreFront:Z

.field private numCredentialAttempts:I

.field private oAuthToken:Ljava/lang/String;

.field private options:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kcp/store/StoreFragment$Option;",
            ">;"
        }
    .end annotation
.end field

.field private perfTime:J

.field previousAccount:Ljava/lang/String;

.field private previousHistoryDepth:I

.field private progressBarController:Lcom/amazon/kcp/store/StoreProgressBarController;

.field private refTag:Ljava/lang/String;

.field protected reloadPostAuth:Z

.field private scriptPostAuthentication:Ljava/lang/String;

.field protected shouldClearHistory:Z

.field private shouldClearHistoryOnUpdateVisitedHistory:Z

.field private final shouldOverrideOverridableLoads:Z

.field private shouldShowCredentialFailedMessage:Z

.field private storeController:Lcom/amazon/kcp/store/WebStoreController;

.field private storeFrontUrl:Ljava/lang/String;

.field protected storeWebChromeClient:Landroid/webkit/WebChromeClient;

.field protected storeWebViewClient:Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;

.field private targetPage:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field protected webView:Lcom/amazon/kcp/store/StoreWebView;

.field private webViewState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    const-class v0, Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    .line 370
    new-instance v0, Lcom/amazon/kcp/store/StoreFragment$1;

    invoke-direct {v0}, Lcom/amazon/kcp/store/StoreFragment$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/store/StoreFragment;->STORE_EXTRAS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 395
    invoke-direct {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 3

    .line 404
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragment;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->isShowingAlertActivity:Z

    const/4 v1, 0x0

    .line 145
    iput-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->webViewState:Landroid/os/Bundle;

    .line 153
    iput-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->title:Ljava/lang/String;

    const/4 v2, 0x6

    .line 247
    iput v2, p0, Lcom/amazon/kcp/store/StoreFragment;->STORE_OPEN_MAX_RETRIES:I

    const/16 v2, 0x1f4

    .line 253
    iput v2, p0, Lcom/amazon/kcp/store/StoreFragment;->STORE_CONNECTION_DELAY:I

    .line 300
    sget-object v2, Lcom/amazon/kcp/store/StoreFragment$WebViewMode;->STORE:Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

    iput-object v2, p0, Lcom/amazon/kcp/store/StoreFragment;->currentMode:Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

    .line 350
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->shouldShowCredentialFailedMessage:Z

    .line 352
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->destroyed:Z

    const/4 v2, -0x1

    .line 354
    iput v2, p0, Lcom/amazon/kcp/store/StoreFragment;->previousHistoryDepth:I

    .line 356
    const-class v2, Lcom/amazon/kcp/store/StoreFragment$Option;

    .line 357
    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/store/StoreFragment;->options:Ljava/util/EnumSet;

    .line 417
    new-instance v2, Lcom/amazon/kcp/store/StoreFragment$2;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/store/StoreFragment$2;-><init>(Lcom/amazon/kcp/store/StoreFragment;)V

    iput-object v2, p0, Lcom/amazon/kcp/store/StoreFragment;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    .line 444
    iput-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->storeController:Lcom/amazon/kcp/store/WebStoreController;

    .line 446
    iput-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->previousAccount:Ljava/lang/String;

    .line 1919
    iput-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->scriptPostAuthentication:Ljava/lang/String;

    .line 1920
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->reloadPostAuth:Z

    .line 1922
    iput-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->targetPage:Ljava/lang/String;

    .line 1924
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->authenticated:Z

    .line 405
    iput-boolean p1, p0, Lcom/amazon/kcp/store/StoreFragment;->shouldOverrideOverridableLoads:Z

    .line 406
    new-instance p1, Lcom/amazon/kcp/store/StoreMetricsLogger;

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/kcp/store/StoreMetricsLogger;-><init>(Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V

    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->metricsLogger:Lcom/amazon/kcp/store/StoreMetricsLogger;

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->targetPage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/store/StoreFragment;)Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/amazon/kcp/store/StoreFragment;->shouldOverrideOverridableLoads:Z

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->scriptPostAuthentication:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/amazon/kcp/store/StoreFragment;)Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/amazon/kcp/store/StoreFragment;->shouldClearHistoryOnUpdateVisitedHistory:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/amazon/kcp/store/StoreFragment;Z)Z
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/amazon/kcp/store/StoreFragment;->shouldClearHistoryOnUpdateVisitedHistory:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->refreshOAuthToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/IStoreErrorStateHelper;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/amazon/kcp/store/StoreFragment;->errorStateHelper:Lcom/amazon/kcp/store/IStoreErrorStateHelper;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/kcp/store/StoreFragment;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->checkHistoryDepth()V

    return-void
.end method

.method static synthetic access$1500(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/StoreMetricsLogger;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/amazon/kcp/store/StoreFragment;->metricsLogger:Lcom/amazon/kcp/store/StoreMetricsLogger;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/StoreFragment$WebViewMode;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/amazon/kcp/store/StoreFragment;->currentMode:Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/amazon/kcp/store/StoreFragment;Lcom/amazon/kcp/store/StoreFragment$WebViewMode;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->setWebViewMode(Lcom/amazon/kcp/store/StoreFragment$WebViewMode;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/WebStoreController;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/amazon/kcp/store/StoreFragment;->storeController:Lcom/amazon/kcp/store/WebStoreController;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/amazon/kcp/store/StoreFragment;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->hideStoreUnavailableMessage()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 128
    sget-object v0, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/amazon/kcp/store/StoreFragment;)Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/amazon/kcp/store/StoreFragment;->shouldShowCredentialFailedMessage:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/amazon/kcp/store/StoreFragment;)I
    .locals 0

    .line 128
    iget p0, p0, Lcom/amazon/kcp/store/StoreFragment;->numCredentialAttempts:I

    return p0
.end method

.method static synthetic access$2202(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->dsn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->deviceType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/amazon/kcp/store/StoreFragment;)[Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/amazon/kcp/store/StoreFragment;->authCookies:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/amazon/kcp/store/StoreFragment;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->authCookies:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->retrieveAuthCookies(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/amazon/kcp/store/StoreFragment;)Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/amazon/kcp/store/StoreFragment;->oAuthToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->oAuthToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->getOAuthTokenStringForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800()Ljava/util/Timer;
    .locals 1

    .line 128
    sget-object v0, Lcom/amazon/kcp/store/StoreFragment;->oAuthRefreshTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2802(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 128
    sput-object p0, Lcom/amazon/kcp/store/StoreFragment;->oAuthRefreshTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/amazon/kcp/store/StoreFragment;Z)Z
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/amazon/kcp/store/StoreFragment;->nextPageIsStoreFront:Z

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/StoreProgressBarController;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/amazon/kcp/store/StoreFragment;->progressBarController:Lcom/amazon/kcp/store/StoreProgressBarController;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/amazon/kcp/store/StoreFragment;Z)Z
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/amazon/kcp/store/StoreFragment;->isFirstLoadAfterLogin:Z

    return p1
.end method

.method static synthetic access$400(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/BrowserHost;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/amazon/kcp/store/StoreFragment;->browserHost:Lcom/amazon/kcp/store/BrowserHost;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/store/StoreFragment;)J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/amazon/kcp/store/StoreFragment;->perfTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/amazon/kcp/store/StoreFragment;J)J
    .locals 0

    .line 128
    iput-wide p1, p0, Lcom/amazon/kcp/store/StoreFragment;->perfTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/amazon/kcp/store/StoreFragment;)Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/amazon/kcp/store/StoreFragment;->browseNode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/store/StoreFragment;)Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/amazon/kcp/store/StoreFragment;->refTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$902(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->currentUrl:Ljava/lang/String;

    return-object p1
.end method

.method private addDiscoverableInterfaces(Landroid/webkit/WebView;)V
    .locals 3

    .line 2203
    const-class v0, Lcom/amazon/kindle/krx/store/StoreJavascriptInterfaceProvider;

    invoke-static {v0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/store/StoreJavascriptInterfaceProvider;

    .line 2204
    invoke-interface {v1}, Lcom/amazon/kindle/krx/store/StoreJavascriptInterfaceProvider;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2205
    invoke-interface {v1}, Lcom/amazon/kindle/krx/store/StoreJavascriptInterfaceProvider;->getJavascriptInterface()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lcom/amazon/kindle/krx/store/StoreJavascriptInterfaceProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private appendStoreType(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1632
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/store/R$bool;->is_support_store_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "storeType"

    .line 1633
    invoke-direct {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/store/StoreType;

    .line 1634
    sget-object v2, Lcom/amazon/kindle/store/StoreType;->NEWSSTAND:Lcom/amazon/kindle/store/StoreType;

    if-ne v1, v2, :cond_0

    const-string v1, "periodicals"

    .line 1635
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "all"

    .line 1637
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private attemptLoginOnJsWrapper(Ljava/lang/String;Z)V
    .locals 9

    .line 1953
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kcp/redding/ReddingActivity;

    if-nez v0, :cond_0

    .line 1954
    sget-object p1, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string p2, "StoreFragment shown in non-ReddingActivity. Cannot authenticate from JS call"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1958
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/redding/ReddingActivity;

    .line 1960
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1961
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v4

    .line 1962
    new-instance v8, Lcom/amazon/kcp/store/StoreFragment$7;

    move-object v1, v8

    move-object v2, p0

    move-object v5, v0

    move v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/store/StoreFragment$7;-><init>(Lcom/amazon/kcp/store/StoreFragment;Landroid/content/Context;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kcp/redding/ReddingActivity;ZLjava/lang/String;)V

    .line 1975
    new-instance p1, Lcom/amazon/kcp/accounts/SignInHelper;

    invoke-direct {p1}, Lcom/amazon/kcp/accounts/SignInHelper;-><init>()V

    .line 1976
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1977
    invoke-static {}, Lcom/amazon/kindle/map/MAPRegistrationManager;->getPageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageIdOverride"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    invoke-virtual {p1, v0, p2, v8}, Lcom/amazon/kcp/accounts/SignInHelper;->showWebviewSignin(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Lcom/amazon/foundation/IStringCallback;)Z

    return-void
.end method

.method private blockStoreLoadForParentalControl()Z
    .locals 5

    .line 989
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 995
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseBlocked()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandPurchaseBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 996
    :goto_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBooksBlocked()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandBlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 999
    sget-object v0, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_STORES_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->finishAndGoToLibrary(Lcom/amazon/kcp/store/StoreError;)V

    return v3

    :cond_4
    if-eqz v2, :cond_5

    .line 1004
    sget-object v0, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_STORES_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->finishAndGoToLibrary(Lcom/amazon/kcp/store/StoreError;)V

    return v3

    :cond_5
    if-eqz v0, :cond_6

    .line 1009
    sget-object v0, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->finishAndGoToLibrary(Lcom/amazon/kcp/store/StoreError;)V

    return v3

    :cond_6
    return v1
.end method

.method private checkHistoryDepth()V
    .locals 3

    .line 1855
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->client:Lcom/amazon/kcp/store/IStoreFragmentClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->metricsContext:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1856
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->getHistoryDepth()I

    move-result v0

    .line 1857
    iget v1, p0, Lcom/amazon/kcp/store/StoreFragment;->previousHistoryDepth:I

    if-eq v0, v1, :cond_3

    .line 1858
    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment;->client:Lcom/amazon/kcp/store/IStoreFragmentClient;

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 1860
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->client:Lcom/amazon/kcp/store/IStoreFragmentClient;

    invoke-interface {v1}, Lcom/amazon/kcp/store/IStoreFragmentClient;->onCanGoBackChanged()V

    .line 1862
    :cond_2
    iput v0, p0, Lcom/amazon/kcp/store/StoreFragment;->previousHistoryDepth:I

    :cond_3
    return-void
.end method

.method static generateArguments(Ljava/util/EnumSet;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kcp/store/StoreFragment$Option;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 2316
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "options"

    .line 2317
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p1, :cond_0

    const-string p0, "metricsContext"

    .line 2319
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private getActionBarTitle()Ljava/lang/String;
    .locals 3

    .line 2245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2246
    instance-of v1, v0, Lcom/amazon/kcp/redding/ReddingActivity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 2250
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->isStoreShownInModal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2251
    check-cast v0, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2253
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2255
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method private getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 1

    .line 2082
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    return-object v0
.end method

.method private getConnectionHandler()Landroid/os/Handler;
    .locals 1

    .line 1159
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->connectionHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1160
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->connectionHandler:Landroid/os/Handler;

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->connectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getHistoryDepth()I
    .locals 3

    .line 1887
    iget-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->shouldClearHistory:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->shouldClearHistoryOnUpdateVisitedHistory:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1891
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    neg-int v0, v1

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method private getOAuthTokenStringForURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1525
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "www"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1527
    sget-object v1, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->ACCESS_TOKEN:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p1, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const-string/jumbo p1, "x-access-token=%s;domain=%s;path=/;"

    .line 1531
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRefTag()Ljava/lang/String;
    .locals 1

    .line 2375
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->refTag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "reftag"

    .line 2376
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->refTag:Ljava/lang/String;

    .line 2378
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->refTag:Ljava/lang/String;

    return-object v0
.end method

.method private getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1

    .line 2389
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->selectExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2390
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getStringMapExtra(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2395
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->selectExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2397
    new-instance v1, Lcom/amazon/kcp/util/Bundler;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/util/Bundler;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/util/Bundler;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected static getTitleResId()I
    .locals 1

    .line 1840
    const-class v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    if-eqz v0, :cond_0

    .line 1841
    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1842
    sget v0, Lcom/amazon/kcp/store/R$string;->store_title:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/amazon/kcp/store/R$string;->discover_title:I

    :goto_1
    return v0
.end method

.method private goBackToLastAllowedUrl()V
    .locals 3

    .line 1898
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1899
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1902
    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v2

    .line 1903
    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/store/DomainPermissions;->fromUrl(Ljava/lang/String;)Lcom/amazon/kcp/store/DomainPermissions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/store/DomainPermissions;->isWebviewAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gez v1, :cond_2

    .line 1912
    sget-object v0, Lcom/amazon/kcp/store/StoreError;->BAD_URL:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->finish(Lcom/amazon/kcp/store/StoreError;)V

    goto :goto_2

    .line 1914
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    :goto_2
    return-void
.end method

.method private hideStoreUnavailableMessage()V
    .locals 3

    .line 1738
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1743
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "StoreUnavailable"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;

    if-eqz v0, :cond_1

    .line 1745
    sget-object v1, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v2, "Hiding store unavailable message"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method private isWebViewScrolledToTop()Z
    .locals 1

    .line 2427
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    if-eqz v0, :cond_0

    .line 2428
    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadStoreInternal(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/store/StoreUrlBuilder$Action;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reftag"

    .line 1421
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1425
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v8, Lcom/amazon/kcp/store/StoreFragment$5;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/store/StoreFragment$5;-><init>(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private loadStorefront(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1622
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->metricsLogger:Lcom/amazon/kcp/store/StoreMetricsLogger;

    sget-object v1, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;->STOREFRONT:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/StoreMetricsLogger;->onLoadStarted(Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;)V

    .line 1624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1625
    invoke-direct {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->appendStoreType(Ljava/util/Map;)V

    .line 1627
    sget-object v1, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v2, "Loading Storefront"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/amazon/kcp/store/StoreFragment;->loadStoreInternal(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private parseArguments(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "options"

    .line 2327
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/EnumSet;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 2328
    :cond_1
    const-class v1, Lcom/amazon/kcp/store/StoreFragment$Option;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->options:Ljava/util/EnumSet;

    if-eqz p1, :cond_2

    const-string v0, "metricsContext"

    .line 2330
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->metricsContext:Ljava/lang/String;

    const-string v0, "StoreFragmentWebview"

    .line 2331
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webViewState:Landroid/os/Bundle;

    const-string v0, "StoreFragmentTitle"

    .line 2332
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->title:Ljava/lang/String;

    const-string v0, "reftag"

    .line 2333
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2335
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->refTag:Ljava/lang/String;

    goto :goto_2

    .line 2338
    :cond_2
    iput-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->metricsContext:Ljava/lang/String;

    :cond_3
    :goto_2
    return-void
.end method

.method private refreshOAuthToken(Ljava/lang/String;)V
    .locals 3

    .line 1507
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->getOAuthTokenStringForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1508
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->oAuthToken:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1509
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1510
    sget-object v1, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v2, "Injecting new OAuth token"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 1511
    invoke-static {p1, v1}, Lcom/amazon/kcp/store/CookieHelper;->injectCookiesForStore(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1512
    iput-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->oAuthToken:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private retrieveAuthCookies(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1370
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 1372
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "www."

    .line 1378
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".amazon."

    .line 1379
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1382
    sget-object p1, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v1, "storeUrl is malformed in StoreActivity, missing domain"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1386
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1396
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1399
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    .line 1400
    invoke-interface {v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 1401
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1402
    new-instance v4, Lcom/amazon/identity/auth/device/api/TokenManagement;

    invoke-direct {v4, v3}, Lcom/amazon/identity/auth/device/api/TokenManagement;-><init>(Landroid/content/Context;)V

    .line 1405
    invoke-virtual {v4, v2, p1, v1, v0}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getCookies(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    .line 1407
    :try_start_1
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "com.amazon.identity.auth.device.api.cookiekeys.all"

    .line 1409
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1411
    :goto_1
    sget-object v1, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get auth cookies from MAP in StoreActivity"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 1392
    :catch_3
    sget-object p1, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v1, "storeURl is malformed in StoreActivity"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private scrollToTop()V
    .locals 11

    .line 2432
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    if-eqz v0, :cond_0

    .line 2434
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2435
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/StoreWebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2436
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    const/4 v5, 0x3

    move-wide v1, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/StoreWebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2438
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method private selectExtras()Landroid/os/Bundle;
    .locals 3

    .line 2357
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2358
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->options:Ljava/util/EnumSet;

    sget-object v2, Lcom/amazon/kcp/store/StoreFragment$Option;->EXPLICIT_LOADS:Lcom/amazon/kcp/store/StoreFragment$Option;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2359
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->loadPageExtras:Landroid/os/Bundle;

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 2361
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private setDarkMode(Landroid/webkit/WebSettings;)V
    .locals 3

    .line 2211
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2212
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_0

    .line 2213
    invoke-static {p1}, Lcom/amazon/kcp/store/StoreForceDarkModeUtils;->setForceDark(Landroid/webkit/WebSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2214
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "setForceDark"

    invoke-virtual {p1, v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_0
    return-void
.end method

.method private setWebViewMode(Lcom/amazon/kcp/store/StoreFragment$WebViewMode;)V
    .locals 1

    .line 1784
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->currentMode:Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 1787
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->currentMode:Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

    .line 1789
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->onWebViewModeChange(Lcom/amazon/kcp/store/StoreFragment$WebViewMode;)V

    return-void
.end method


# virtual methods
.method canGoBack()Z
    .locals 1

    .line 1846
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->getHistoryDepth()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method clearHistory()V
    .locals 1

    const/4 v0, 0x1

    .line 2447
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->shouldClearHistory:Z

    .line 2448
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->shouldClearHistoryOnUpdateVisitedHistory:Z

    return-void
.end method

.method public clearWebviewCacheAndUpdateCookies()V
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1089
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStorePathProvider()Lcom/amazon/kcp/store/StorePathProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->refTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/StorePathProvider;->getDefaultCookies(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/store/CookieHelper;->injectCookiesForAllSupportedDomains(Ljava/util/Map;)V

    return-void
.end method

.method public executeJavascript(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1994
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/store/StoreFragment;->executeJavascript(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V

    return-void
.end method

.method public executeJavascript(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V
    .locals 2

    .line 1998
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2002
    :cond_0
    new-instance v1, Lcom/amazon/kcp/store/StoreFragment$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/store/StoreFragment$8;-><init>(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 1044
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->isStoreShownInModal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method finish(Lcom/amazon/kcp/store/StoreError;)V
    .locals 1

    .line 1053
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->isStoreShownInModal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->errorStateHelper:Lcom/amazon/kcp/store/IStoreErrorStateHelper;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/store/IStoreErrorStateHelper;->onReceivedError(Lcom/amazon/kcp/store/StoreError;)V

    .line 1056
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->finish()V

    return-void
.end method

.method protected finishAndGoToLibrary()V
    .locals 1

    .line 1022
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->isStoreShownInModal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->showLandingPage()V

    .line 1024
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method finishAndGoToLibrary(Lcom/amazon/kcp/store/StoreError;)V
    .locals 1

    .line 1032
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->isStoreShownInModal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->errorStateHelper:Lcom/amazon/kcp/store/IStoreErrorStateHelper;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/store/IStoreErrorStateHelper;->onReceivedError(Lcom/amazon/kcp/store/StoreError;)V

    .line 1035
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->finishAndGoToLibrary()V

    return-void
.end method

.method protected generateHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1680
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1681
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/locale/ILocaleManager;->getLocaleCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStorePathProvider()Lcom/amazon/kcp/store/StorePathProvider;

    move-result-object v1

    .line 1684
    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment;->refTag:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/store/StorePathProvider;->getDefaultHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1686
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1687
    invoke-static {}, Lcom/amazon/kcp/store/StoreUrlBuilder;->getOverriddenWeblabs()Ljava/lang/String;

    move-result-object v1

    const-string v2, "experiment"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 1

    .line 128
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    .line 1769
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2383
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->selectExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2384
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method goBack()V
    .locals 3

    .line 1868
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    if-eqz v0, :cond_1

    .line 1869
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->currentMode:Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

    sget-object v2, Lcom/amazon/kcp/store/StoreFragment$WebViewMode;->LIMITED:Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

    if-ne v1, v2, :cond_0

    .line 1870
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 1871
    :cond_0
    sget-object v0, Lcom/amazon/kcp/store/StoreFragment$WebViewMode;->STORE:Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

    if-ne v1, v0, :cond_1

    .line 1872
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->goBackToLastAllowedUrl()V

    :cond_1
    :goto_0
    return-void
.end method

.method goBackToFirstPage()V
    .locals 2

    .line 1878
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    if-eqz v0, :cond_0

    .line 1879
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->getHistoryDepth()I

    move-result v0

    if-lez v0, :cond_0

    .line 1881
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    :cond_0
    return-void
.end method

.method protected handleRedirectWithoutAuthenticationIfNecessary(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected hasNetworkConnection()Z
    .locals 8

    .line 1751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/store/StoreFragment;->perfTime:J

    .line 1753
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "connectivity"

    .line 1755
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1756
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1757
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1759
    :cond_0
    sget-object v0, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time taken to check network connection is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/amazon/kcp/store/StoreFragment;->perfTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    :cond_1
    return v1
.end method

.method protected final initiateStoreLoad()V
    .locals 4

    .line 1117
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->hasNetworkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    sget-object v0, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v1, "Wifi acquired, connecting to store"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->showStore()V

    goto :goto_0

    .line 1121
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "StoreActivity"

    const-string v3, "NoNetworkWhenOpeningStore"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 1123
    sget-object v0, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v1, "Wifi not acquired yet, waiting for connection"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1124
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->initiateStoreLoad(I)V

    :goto_0
    return-void
.end method

.method protected initiateStoreLoad(I)V
    .locals 4

    .line 1134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1140
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->showStore()V

    goto :goto_0

    .line 1142
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->getConnectionHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/store/StoreFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/store/StoreFragment$4;-><init>(Lcom/amazon/kcp/store/StoreFragment;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method protected injectJavascript(Ljava/lang/String;)V
    .locals 6

    .line 912
    invoke-static {p1}, Lcom/amazon/kcp/store/DomainPermissions;->fromUrl(Ljava/lang/String;)Lcom/amazon/kcp/store/DomainPermissions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/store/DomainPermissions;->isJavascriptAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p1

    if-nez p1, :cond_0

    .line 919
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->browserHost:Lcom/amazon/kcp/store/BrowserHost;

    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->dsn:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment;->deviceType:Ljava/lang/String;

    iget-wide v3, p0, Lcom/amazon/kcp/store/StoreFragment;->intentReceiveRealTime:J

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/store/BrowserHost;->injectJavaScript(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    return-void
.end method

.method protected invokeExternalInterceptors(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected isAlertDialogCanceledByUser(I)Z
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 1990
    iget-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->authenticated:Z

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1166
    iget-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->destroyed:Z

    return v0
.end method

.method isLimitedWebViewMode()Z
    .locals 2

    .line 1827
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->currentMode:Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

    sget-object v1, Lcom/amazon/kcp/store/StoreFragment$WebViewMode;->LIMITED:Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isStoreForeground()Z
    .locals 2

    .line 1730
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1734
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method isStoreShownInModal()Z
    .locals 2

    .line 1831
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->options:Ljava/util/EnumSet;

    sget-object v1, Lcom/amazon/kcp/store/StoreFragment$Option;->MODAL:Lcom/amazon/kcp/store/StoreFragment$Option;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method loadPage(Landroid/os/Bundle;)V
    .locals 1

    .line 2343
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->blockStoreLoadForParentalControl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2347
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isStoreAccessAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2348
    sget-object p1, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->finishAndGoToLibrary(Lcom/amazon/kcp/store/StoreError;)V

    return-void

    .line 2351
    :cond_1
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->loadPageExtras:Landroid/os/Bundle;

    .line 2352
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->initiateStoreLoad()V

    return-void
.end method

.method protected loadStorefontWithDefaultParameters()V
    .locals 1

    const-string/jumbo v0, "urlParameters"

    .line 1617
    invoke-direct {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->getStringMapExtra(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1618
    invoke-direct {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->loadStorefront(Ljava/util/Map;)V

    return-void
.end method

.method protected loadUrl(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 1652
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->checkHistoryDepth()V

    .line 1653
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->hasNetworkConnection()Z

    move-result p4

    if-nez p4, :cond_0

    .line 1654
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->onReceivedNoNetworkError()V

    return-void

    .line 1659
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->onBeforeLoad()V

    .line 1661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/store/StoreFragment;->perfTime:J

    .line 1662
    sget-object p4, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time to pass URL to webview is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/amazon/kcp/store/StoreFragment;->perfTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1662
    invoke-static {p4, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/store/StoreFragment;->perfTime:J

    .line 1665
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Loading url "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p3, :cond_1

    const-string p4, "reftag"

    .line 1667
    invoke-interface {p3, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ref_="

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ref="

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1669
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 1670
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string p4, "ref_"

    invoke-virtual {p2, p4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1671
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1674
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->generateHeaders()Ljava/util/Map;

    move-result-object p3

    .line 1675
    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1193
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, 0x0

    .line 1197
    iput-boolean p1, p0, Lcom/amazon/kcp/store/StoreFragment;->isShowingAlertActivity:Z

    .line 1198
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/store/StoreFragment;->isAlertDialogCanceledByUser(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1199
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->finish()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 1209
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 1594
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/store/StoreFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/store/StoreFragment$6;-><init>(Lcom/amazon/kcp/store/StoreFragment;Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 2025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of isStoreLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/store/StoreFragment;->isStoreLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2026
    iget-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->isStoreLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->browserHost:Lcom/amazon/kcp/store/BrowserHost;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/BrowserHost;->isTOSOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2028
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->browserHost:Lcom/amazon/kcp/store/BrowserHost;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/BrowserHost;->nativeBackClicked()V

    goto :goto_0

    .line 2029
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2030
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->goBack()V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected onBeforeLoad()V
    .locals 0

    return-void
.end method

.method public onConnectivityChanged(Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 2473
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2474
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/store/StoreFragment$9;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/StoreFragment$9;-><init>(Lcom/amazon/kcp/store/StoreFragment;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 2062
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/store/StoreFragment;->perfTime:J

    .line 2063
    sget-object v0, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v1, "StoreActivity created"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2065
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/store/StoreFragment;->intentReceiveRealTime:J

    .line 2067
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->getInstance()Lcom/amazon/kcp/store/StoreFragmentSupervisor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->isRestorable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CurrentURL"

    .line 2068
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->currentUrl:Ljava/lang/String;

    const-string v0, "PostAuthScript"

    .line 2069
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->scriptPostAuthentication:Ljava/lang/String;

    const-string v0, "TargetPage"

    .line 2070
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->targetPage:Ljava/lang/String;

    .line 2073
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2074
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->parseArguments(Landroid/os/Bundle;)V

    .line 2075
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 2091
    :try_start_0
    sget p3, Lcom/amazon/kcp/store/R$layout;->store_screen:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2097
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->setUsUpTheView(Landroid/view/View;)V

    .line 2099
    invoke-static {}, Lcom/amazon/kcp/store/StoreDomainUtils;->isStoreDomainOverridden()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Store may have been overridden to "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kcp/store/StoreDomainUtils;->getOverriddenStoreDomainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :cond_0
    return-object p1

    .line 2093
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string p3, "StoreActivity"

    const-string v0, "WebViewUpdateError"

    invoke-virtual {p1, p3, v0, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method onCredentialsUpdateFailed(Z)V
    .locals 2

    .line 1581
    sget-object v0, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v1, "Store creds failed to update"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    iget v0, p0, Lcom/amazon/kcp/store/StoreFragment;->numCredentialAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/store/StoreFragment;->numCredentialAttempts:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_1

    .line 1584
    :cond_0
    sget-object p1, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrying store creds update after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/store/StoreFragment;->numCredentialAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failed attempts."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->storeController:Lcom/amazon/kcp/store/WebStoreController;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/AbstractWebStoreController;->updateStoreCookies()V

    :cond_1
    return-void
.end method

.method protected onCredentialsUpdated()V
    .locals 5

    const/4 v0, 0x1

    .line 1560
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->authenticated:Z

    .line 1561
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getAuthorizedAccount()Ljava/lang/String;

    move-result-object v1

    .line 1562
    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment;->previousAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/amazon/kcp/store/StoreFragment;->isFirstLoadAfterLogin:Z

    if-eqz v2, :cond_3

    .line 1563
    :cond_0
    sget-object v2, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v3, Lcom/amazon/kcp/application/PerfMarker;->FTUE_STORE_LOAD_START:Lcom/amazon/kcp/application/PerfMarker;

    sget-object v4, Lcom/amazon/kcp/application/PerfMarker;->FTUE_STORE_LOAD_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->startTimer(Lcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V

    .line 1566
    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment;->scriptPostAuthentication:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/amazon/kcp/store/StoreFragment;->reloadPostAuth:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1569
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->clearHistory()V

    .line 1570
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->showStore()V

    goto :goto_1

    .line 1567
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->showStore(Z)V

    :goto_1
    const/4 v0, 0x0

    .line 1573
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->reloadPostAuth:Z

    .line 1574
    iput v0, p0, Lcom/amazon/kcp/store/StoreFragment;->numCredentialAttempts:I

    .line 1575
    iput-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->previousAccount:Ljava/lang/String;

    .line 1576
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->isFirstLoadAfterLogin:Z

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1171
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 1173
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 1175
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    if-eqz v0, :cond_0

    .line 1176
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 1178
    iput-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    const/4 v0, 0x1

    .line 1180
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->destroyed:Z

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 944
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 945
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->errorStateHelper:Lcom/amazon/kcp/store/IStoreErrorStateHelper;

    if-eqz p1, :cond_0

    .line 946
    invoke-interface {p1}, Lcom/amazon/kcp/store/IStoreErrorStateHelper;->retryInErrorState()V

    :cond_0
    return-void
.end method

.method protected onJsWrapper(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 1

    .line 1936
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1937
    invoke-static {v0}, Lcom/amazon/kindle/services/authentication/DefaultAccount;->isDefaultAccount(Lcom/amazon/kindle/services/authentication/IAccountInfo;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1939
    invoke-direct {p0, p3, p4}, Lcom/amazon/kcp/store/StoreFragment;->attemptLoginOnJsWrapper(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1941
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->executeJavascript(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onLocaleChangedEvent(Lcom/amazon/kindle/event/LocaleChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 2487
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->clearHistory()V

    .line 2488
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->showStore()V

    return-void
.end method

.method protected onLogout()V
    .locals 1

    const/4 v0, 0x0

    .line 1986
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->authenticated:Z

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 1185
    sget-object v0, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v1, "Freeing memory in the webview"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    .line 1187
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    return-void
.end method

.method public onNavigateUpPressed()Z
    .locals 1

    .line 2043
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->isLimitedWebViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2044
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->goBackToLastAllowedUrl()V

    goto :goto_0

    .line 2045
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2046
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->goBack()V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 5

    .line 1230
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    const-string v0, "StoreActivity"

    const-string v1, "StoreFrontStartupTimer"

    const-string v2, "StoreStartupTimer"

    invoke-virtual {p2, v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    iget-boolean p2, p0, Lcom/amazon/kcp/store/StoreFragment;->shouldClearHistory:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1233
    iget-object p2, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->clearHistory()V

    .line 1234
    iput-boolean v1, p0, Lcom/amazon/kcp/store/StoreFragment;->shouldClearHistory:Z

    .line 1237
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->checkHistoryDepth()V

    .line 1239
    iget-boolean p2, p0, Lcom/amazon/kcp/store/StoreFragment;->nextPageIsStoreFront:Z

    if-eqz p2, :cond_1

    .line 1241
    :try_start_0
    new-instance p2, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1243
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {p2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/store/StoreFragment;->storeFrontUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1247
    sget-object v2, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v3, "Error saving the url"

    invoke-static {v2, v3, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1249
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1250
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v4, "StoreFrontBadURL"

    invoke-virtual {v2, v0, v4, v3, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 1254
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->storeFrontUrl:Ljava/lang/String;

    .line 1257
    :goto_0
    iput-boolean v1, p0, Lcom/amazon/kcp/store/StoreFragment;->nextPageIsStoreFront:Z

    :cond_1
    return-void
.end method

.method public onOpenLocalBook()V
    .locals 1

    .line 1777
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;

    move-result-object v0

    .line 1778
    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceContext;->shouldCloseStoreWhenOpeningBook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1779
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 925
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 926
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->shouldShowCredentialFailedMessage:Z

    return-void
.end method

.method protected onReceivedError()V
    .locals 2

    .line 893
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->hasNetworkConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->onReceivedNoNetworkError()V

    goto :goto_0

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->errorStateHelper:Lcom/amazon/kcp/store/IStoreErrorStateHelper;

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->UNKNOWN:Lcom/amazon/kcp/store/StoreError;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IStoreErrorStateHelper;->onReceivedError(Lcom/amazon/kcp/store/StoreError;)V

    :goto_0
    return-void
.end method

.method protected onReceivedNoNetworkError()V
    .locals 2

    .line 904
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->showNetworkConnectionMessageIfNecessary()V

    .line 905
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->errorStateHelper:Lcom/amazon/kcp/store/IStoreErrorStateHelper;

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->NO_NETWORK_CONNECTION:Lcom/amazon/kcp/store/StoreError;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IStoreErrorStateHelper;->onReceivedError(Lcom/amazon/kcp/store/StoreError;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 931
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 933
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->shouldShowCredentialFailedMessage:Z

    .line 934
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->getInstance()Lcom/amazon/kcp/store/StoreFragmentSupervisor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->isRestorable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->getInstance()Lcom/amazon/kcp/store/StoreFragmentSupervisor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->resetRestorable(Lcom/amazon/kcp/store/StoreFragment;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 937
    iput-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->targetPage:Ljava/lang/String;

    .line 938
    iput-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->scriptPostAuthentication:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1061
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1062
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CurrentURL"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->scriptPostAuthentication:Ljava/lang/String;

    const-string v1, "PostAuthScript"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->targetPage:Ljava/lang/String;

    const-string v1, "TargetPage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 961
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 963
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->blockStoreLoadForParentalControl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 967
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isStoreAccessAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 969
    sget-object v0, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->finishAndGoToLibrary(Lcom/amazon/kcp/store/StoreError;)V

    return-void

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const-string v2, "(function(){\nif (window.P) {\nP.when(\'A\').execute(function (A) {\nA.trigger(\"mash:willReappear\");\n});\n}\n})()"

    .line 979
    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_2
    return-void
.end method

.method onTabReSelected()V
    .locals 1

    .line 2410
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    if-eqz v0, :cond_1

    .line 2412
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->isWebViewScrolledToTop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2413
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->clearHistory()V

    .line 2414
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->loadStorefontWithDefaultParameters()V

    goto :goto_0

    .line 2416
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->scrollToTop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTosOpened()V
    .locals 0

    return-void
.end method

.method public onWebStoreCredentialEvent(Lcom/amazon/kcp/store/WebStoreCredentialEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1094
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1096
    new-instance v1, Lcom/amazon/kcp/store/StoreFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/store/StoreFragment$3;-><init>(Lcom/amazon/kcp/store/StoreFragment;Lcom/amazon/kcp/store/WebStoreCredentialEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onWebViewModeChange(Lcom/amazon/kcp/store/StoreFragment$WebViewMode;)V
    .locals 4

    .line 1798
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 1799
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1801
    sget-object v2, Lcom/amazon/kcp/store/StoreFragment$WebViewMode;->STORE:Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    .line 1803
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->getTitleResId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1804
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/kcp/store/IWebStoreController;->setOpenExternalUrlsInternally(Z)V

    .line 1806
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1807
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto :goto_0

    .line 1810
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kcp/store/R$string;->payment_title:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1811
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1812
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1815
    :goto_0
    invoke-virtual {p0, p1, v3}, Lcom/amazon/kcp/store/StoreFragment;->setActionBarTitle(Ljava/lang/String;Z)V

    .line 1816
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1818
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method public openArticle(Ljava/lang/String;)V
    .locals 4

    .line 435
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->hasNetworkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStorePathProvider()Lcom/amazon/kcp/store/StorePathProvider;

    move-result-object v0

    .line 437
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "article.activeArticle"

    .line 438
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    invoke-interface {v0}, Lcom/amazon/kcp/store/StorePathProvider;->getDefaultPath()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "store.domain"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public openExternalUrlsInternally(Z)V
    .locals 1

    .line 1262
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->storeController:Lcom/amazon/kcp/store/WebStoreController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/store/AbstractWebStoreController;->setOpenExternalUrlsInternally(Z)V

    return-void
.end method

.method protected provideStoreErrorStateHelper(Landroid/view/View;)Lcom/amazon/kcp/store/IStoreErrorStateHelper;
    .locals 1

    .line 2220
    new-instance v0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;-><init>(Lcom/amazon/kcp/store/StoreFragment;Landroid/view/View;)V

    return-object v0
.end method

.method protected provideWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 2264
    new-instance v0, Lcom/amazon/kcp/store/StoreFragment$StoreWebChromeClient;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/StoreFragment$StoreWebChromeClient;-><init>(Lcom/amazon/kcp/store/StoreFragment;)V

    return-object v0
.end method

.method protected provideWebViewClient(Lcom/amazon/kcp/store/StoreWebView;Landroid/app/Activity;)Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;
    .locals 0

    .line 2268
    new-instance p1, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewHelper;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewHelper;-><init>(Lcom/amazon/kcp/store/StoreFragment;Landroid/app/Activity;)V

    .line 2269
    new-instance p2, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;-><init>(Lcom/amazon/kcp/store/StoreFragment;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;)V

    return-object p2
.end method

.method reloadWebView()V
    .locals 1

    .line 2455
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    if-nez v0, :cond_0

    return-void

    .line 2459
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragment;->nextPageIsStoreFront:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2462
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_1

    .line 2460
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->showStore()V

    :goto_1
    return-void
.end method

.method protected removeIntentExtras()V
    .locals 3

    .line 1544
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1549
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1554
    :cond_1
    sget-object v1, Lcom/amazon/kcp/store/StoreFragment;->STORE_EXTRAS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1555
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public saveStateForThemeChange(Landroid/os/Bundle;)V
    .locals 2

    .line 1073
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1074
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    const-string v1, "StoreFragmentWebview"

    .line 1075
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1076
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->getActionBarTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StoreFragmentTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "reftag"

    .line 1077
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setActionBarTitle(Ljava/lang/String;Z)V
    .locals 1

    .line 2224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kcp/redding/ReddingActivity;

    if-nez v0, :cond_0

    return-void

    .line 2228
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/redding/ReddingActivity;

    if-nez p2, :cond_1

    .line 2229
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->isStoreShownInModal()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2230
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2232
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method setClient(Lcom/amazon/kcp/store/IStoreFragmentClient;)V
    .locals 0

    .line 2057
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->client:Lcom/amazon/kcp/store/IStoreFragmentClient;

    return-void
.end method

.method public setPageListener(Ljava/lang/String;Lcom/amazon/kcp/store/listener/IPageListener;)V
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->storeWebViewClient:Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->setPageListener(Ljava/lang/String;Lcom/amazon/kcp/store/listener/IPageListener;)V

    return-void
.end method

.method public setPostAuthPageListener(ZZ)V
    .locals 8

    .line 1982
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->targetPage:Ljava/lang/String;

    new-instance v7, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;

    iget-object v5, p0, Lcom/amazon/kcp/store/StoreFragment;->scriptPostAuthentication:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/kcp/store/StoreFragment;->targetPage:Ljava/lang/String;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;-><init>(Lcom/amazon/kcp/store/listener/StoreInterface;ZZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v7}, Lcom/amazon/kcp/store/StoreFragment;->setPageListener(Ljava/lang/String;Lcom/amazon/kcp/store/listener/IPageListener;)V

    return-void
.end method

.method public setStoreLoaded(Z)V
    .locals 0

    .line 414
    iput-boolean p1, p0, Lcom/amazon/kcp/store/StoreFragment;->isStoreLoaded:Z

    return-void
.end method

.method protected setUsUpTheView(Landroid/view/View;)V
    .locals 5

    .line 2107
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->getTitleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 2108
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/store/StoreFragment;->setActionBarTitle(Ljava/lang/String;Z)V

    .line 2110
    sget v0, Lcom/amazon/kcp/store/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 2112
    new-instance v2, Lcom/amazon/kcp/store/StoreProgressBarController;

    invoke-direct {v2, v0}, Lcom/amazon/kcp/store/StoreProgressBarController;-><init>(Landroid/widget/ProgressBar;)V

    iput-object v2, p0, Lcom/amazon/kcp/store/StoreFragment;->progressBarController:Lcom/amazon/kcp/store/StoreProgressBarController;

    .line 2114
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->provideStoreErrorStateHelper(Landroid/view/View;)Lcom/amazon/kcp/store/IStoreErrorStateHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->errorStateHelper:Lcom/amazon/kcp/store/IStoreErrorStateHelper;

    .line 2117
    :try_start_0
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost;

    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    invoke-direct {v0, p0, v2}, Lcom/amazon/kcp/store/BrowserHost;-><init>(Lcom/amazon/kcp/store/listener/StoreInterface;Lcom/amazon/kcp/store/IWebViewJSWrapper;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->browserHost:Lcom/amazon/kcp/store/BrowserHost;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2127
    iput-boolean v1, p0, Lcom/amazon/kcp/store/StoreFragment;->shouldClearHistory:Z

    .line 2128
    iput v1, p0, Lcom/amazon/kcp/store/StoreFragment;->numCredentialAttempts:I

    .line 2130
    sget v0, Lcom/amazon/kcp/store/R$id;->webview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/store/StoreWebView;

    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    .line 2131
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webViewState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 2132
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 2135
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2136
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    new-instance v0, Lcom/amazon/kcp/store/NativeHost;

    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment;->browserHost:Lcom/amazon/kcp/store/BrowserHost;

    invoke-direct {v0, p0, v2}, Lcom/amazon/kcp/store/NativeHost;-><init>(Lcom/amazon/kcp/store/listener/StoreInterface;Lcom/amazon/kcp/store/BrowserHost;)V

    const-string v2, "NativeHost"

    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2139
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/store/StoreDebugUtils;->isStoreDiscoverableJSInterfaceEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2140
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->addDiscoverableInterfaces(Landroid/webkit/WebView;)V

    .line 2143
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2145
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/store/StoreFragment;->provideWebViewClient(Lcom/amazon/kcp/store/StoreWebView;Landroid/app/Activity;)Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->storeWebViewClient:Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;

    .line 2146
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2148
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->provideWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->storeWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 2149
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 2151
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 2153
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->errorStateHelper:Lcom/amazon/kcp/store/IStoreErrorStateHelper;

    sget-object v2, Lcom/amazon/kcp/store/StoreError;->BROWSERHOST_INIT_FAILURE:Lcom/amazon/kcp/store/StoreError;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/amazon/kcp/store/IStoreErrorStateHelper;->resetErrorState(Ljava/util/EnumSet;)V

    .line 2155
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 2156
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getVersionString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/store/StoreUtils;->getUserAgentSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user agent string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2159
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 2161
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    const-wide/32 v2, 0x1400000

    .line 2162
    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 2164
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v2

    .line 2165
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 2166
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2167
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 2169
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2170
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 2171
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x64

    .line 2175
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 2178
    :goto_1
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 2180
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->setDarkMode(Landroid/webkit/WebSettings;)V

    .line 2182
    iput-boolean v1, p0, Lcom/amazon/kcp/store/StoreFragment;->nextPageIsStoreFront:Z

    .line 2184
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/store/WebStoreController;

    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->storeController:Lcom/amazon/kcp/store/WebStoreController;

    .line 2186
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->blockStoreLoadForParentalControl()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 2190
    :cond_6
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isStoreAccessAllowed()Z

    move-result p1

    if-nez p1, :cond_7

    .line 2191
    sget-object p1, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->finishAndGoToLibrary(Lcom/amazon/kcp/store/StoreError;)V

    return-void

    .line 2195
    :cond_7
    sget-object p1, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time taken to initialize store is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/amazon/kcp/store/StoreFragment;->perfTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->options:Ljava/util/EnumSet;

    sget-object v0, Lcom/amazon/kcp/store/StoreFragment$Option;->EXPLICIT_LOADS:Lcom/amazon/kcp/store/StoreFragment$Option;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->webViewState:Landroid/os/Bundle;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2198
    :cond_8
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->initiateStoreLoad()V

    :cond_9
    return-void

    .line 2120
    :catch_0
    sget-object p1, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v0, "Failed to create BrowserHost"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->showStoreUnavailableMessage()V

    .line 2123
    sget-object p1, Lcom/amazon/kcp/store/StoreError;->BROWSERHOST_INIT_FAILURE:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->finishAndGoToLibrary(Lcom/amazon/kcp/store/StoreError;)V

    return-void
.end method

.method protected showNetworkConnectionMessageIfNecessary()V
    .locals 4

    .line 1698
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "StoreActivity"

    const-string v3, "StoreOpenFailureNoNetwork"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 1702
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1703
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->isStoreForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amazon/kcp/store/StoreFragment;->isShowingAlertActivity:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1704
    iput-boolean v1, p0, Lcom/amazon/kcp/store/StoreFragment;->isShowingAlertActivity:Z

    const/4 v1, 0x0

    const-string v2, "ConnectionError"

    .line 1705
    invoke-static {v2, v1, v0}, Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity;->createAlertIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    .line 1706
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected showStore()V
    .locals 1

    .line 1272
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->getInstance()Lcom/amazon/kcp/store/StoreFragmentSupervisor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->isRestorable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->showStore(Z)V

    return-void
.end method

.method protected showStore(Z)V
    .locals 9

    .line 1281
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    if-nez v0, :cond_0

    return-void

    .line 1285
    :cond_0
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    const-string/jumbo v0, "urlParameters"

    .line 1287
    invoke-direct {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->getStringMapExtra(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "action"

    .line 1288
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/store/StoreFragment;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getAction(Ljava/lang/String;)Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    move-result-object v1

    .line 1290
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "asin"

    .line 1291
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/store/StoreFragment;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1292
    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1293
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v3, "displayedPrice"

    .line 1296
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/store/StoreFragment;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "currency"

    .line 1297
    invoke-virtual {p0, v6}, Lcom/amazon/kcp/store/StoreFragment;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1298
    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v7}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1299
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v3, "browsenode"

    .line 1303
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/store/StoreFragment;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazon/kcp/store/StoreFragment;->browseNode:Ljava/lang/String;

    .line 1304
    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1305
    iget-object v5, p0, Lcom/amazon/kcp/store/StoreFragment;->browseNode:Ljava/lang/String;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreFragment;->getRefTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kcp/store/StoreFragment;->refTag:Ljava/lang/String;

    .line 1309
    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1310
    iget-object v3, p0, Lcom/amazon/kcp/store/StoreFragment;->refTag:Ljava/lang/String;

    const-string v5, "reftag"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v3, "pushPageId"

    .line 1313
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/store/StoreFragment;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1314
    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1315
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    :cond_5
    invoke-direct {p0, v2}, Lcom/amazon/kcp/store/StoreFragment;->appendStoreType(Ljava/util/Map;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    .line 1324
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->getCurrentUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    move-object p1, v3

    .line 1327
    :goto_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo p1, "url"

    .line 1328
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1329
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1330
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "title"

    .line 1331
    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1332
    invoke-virtual {p0, v5, v6}, Lcom/amazon/kcp/store/StoreFragment;->setActionBarTitle(Ljava/lang/String;Z)V

    .line 1336
    :cond_7
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1338
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->storeController:Lcom/amazon/kcp/store/WebStoreController;

    if-nez v1, :cond_8

    move-object v5, v3

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {p1, v5, v4, v0}, Lcom/amazon/kcp/store/AbstractWebStoreController;->getStoreUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 1342
    :cond_9
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1344
    invoke-static {p1}, Lcom/amazon/kcp/store/DomainPermissions;->fromUrl(Ljava/lang/String;)Lcom/amazon/kcp/store/DomainPermissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/store/DomainPermissions;->isWebviewAllowed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1345
    sget-object p1, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v0, "Bad url received! Terminating and going to library."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    sget-object p1, Lcom/amazon/kcp/store/StoreError;->BAD_URL:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/StoreFragment;->finishAndGoToLibrary(Lcom/amazon/kcp/store/StoreError;)V

    return-void

    .line 1349
    :cond_a
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment;->metricsLogger:Lcom/amazon/kcp/store/StoreMetricsLogger;

    sget-object v1, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;->GENERIC_URL:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/StoreMetricsLogger;->onLoadStarted(Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;)V

    .line 1350
    sget-object v0, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v1, "Loading generic URL"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    invoke-direct {p0, p1, v3, v2, v3}, Lcom/amazon/kcp/store/StoreFragment;->loadStoreInternal(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_3

    :cond_b
    if-eqz v1, :cond_d

    .line 1352
    sget-object p1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    if-ne v1, p1, :cond_c

    goto :goto_2

    .line 1355
    :cond_c
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment;->metricsLogger:Lcom/amazon/kcp/store/StoreMetricsLogger;

    sget-object v4, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;->BOOK_DETAIL:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    invoke-virtual {p1, v4}, Lcom/amazon/kcp/store/StoreMetricsLogger;->onLoadStarted(Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;)V

    .line 1356
    sget-object p1, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading Book Detail, action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/amazon/kcp/store/StoreFragment;->loadStoreInternal(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_3

    .line 1353
    :cond_d
    :goto_2
    invoke-direct {p0, v0}, Lcom/amazon/kcp/store/StoreFragment;->loadStorefront(Ljava/util/Map;)V

    :goto_3
    return-void
.end method

.method protected showStoreUnavailableMessage()V
    .locals 4

    .line 1711
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1712
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment;->isStoreForeground()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1716
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "StoreUnavailable"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;

    if-nez v1, :cond_1

    .line 1718
    sget-object v1, Lcom/amazon/kcp/store/StoreFragment;->TAG:Ljava/lang/String;

    const-string v3, "Showing store unavailable message"

    invoke-static {v1, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1719
    invoke-static {v1}, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;->newInstance(Z)Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;

    move-result-object v1

    .line 1720
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
