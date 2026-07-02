.class public final Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;
.super Lcom/audible/hushpuppy/view/player/view/PlayerView;
.source "UpsellBannerWebView.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final REFRESH_THROTTLE_TIME:I = 0x927c0


# instance fields
.field protected eventBus:Lde/greenrobot/event/EventBus;

.field private final handler:Landroid/os/Handler;

.field private final handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

.field private javaScriptBridge:Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;

.field private upsellWebView:Landroid/webkit/WebView;

.field private uriBuilder:Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/view/player/view/PlayerView;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)V

    .line 69
    new-instance p1, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    const p2, 0x927c0

    invoke-direct {p1, p2}, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;-><init>(I)V

    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    .line 70
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->handler:Landroid/os/Handler;

    .line 83
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->configureWebviewAndLoadUrl()V

    return-void
.end method

.method private configureWebviewAndLoadUrl()V
    .locals 8

    .line 195
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Refreshing views - Configuring the Javascript config and loading our url..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 200
    new-instance v1, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->upsellWebView:Landroid/webkit/WebView;

    invoke-direct {v1, v2}, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;-><init>(Landroid/webkit/WebView;)V

    .line 201
    new-instance v2, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v4, "AndroidJavaScriptBridge"

    invoke-direct {v2, v4, v1, v3}, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;-><init>(Ljava/lang/String;Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->javaScriptBridge:Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;

    .line 202
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->upsellWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    new-instance v1, Lcom/audible/hushpuppy/view/common/BrowserHostJavaScriptBridge;

    invoke-direct {v1}, Lcom/audible/hushpuppy/view/common/BrowserHostJavaScriptBridge;-><init>()V

    .line 205
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->upsellWebView:Landroid/webkit/WebView;

    const-string v3, "BrowserHost"

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->upsellWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;

    invoke-direct {v2, v0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0

    .line 209
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "current activity is null! Can\'t update local configurations!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->getColorModeFromAppTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v1

    .line 215
    sget-object v2, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "true"

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v7, v1

    .line 216
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 217
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->upsellWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->uriBuilder:Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 218
    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 219
    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder$UpsellView;->micro:Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder$UpsellView;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_2

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 220
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v6, v0

    .line 217
    invoke-virtual/range {v2 .. v7}, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;->getUpsellUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private notifySampleStateChanged(Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$SampleState;)V
    .locals 3

    .line 226
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySampleStateChanged, new state is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 228
    sget-object p1, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Current book is null! Can\'t refresh player state!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->javaScriptBridge:Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->onPlaySampleStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getMainLayoutId()I
    .locals 1

    .line 114
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->upsell_banner_webview:I

    return v0
.end method

.method protected initViews()V
    .locals 2

    .line 149
    new-instance v0, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->uriBuilder:Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;

    .line 151
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Initializing views..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->webview:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->upsellWebView:Landroid/webkit/WebView;

    .line 157
    new-instance v0, Lcom/audible/hushpuppy/view/WebviewNoNetworkCheckOnClickListener;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/view/WebviewNoNetworkCheckOnClickListener;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 158
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->upsellWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->upsellWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->upsellWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->upsellWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 164
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->configureWebviewAndLoadUrl()V

    goto :goto_0

    .line 166
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "current activity is null! Can\'t initialize upsell banner webview!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected injectDependencyObjects()V
    .locals 1

    .line 101
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 89
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 108
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->loadMainLayout()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 96
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 3

    .line 177
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PLAYER_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/common/player/PlayerState;

    .line 179
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiving ModelChangedEvent PLAY_STATE event, state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView$3;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 188
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$SampleState;->PAUSED:Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$SampleState;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->notifySampleStateChanged(Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$SampleState;)V

    goto :goto_0

    .line 185
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$SampleState;->ERROR:Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$SampleState;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->notifySampleStateChanged(Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$SampleState;)V

    goto :goto_0

    .line 182
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$SampleState;->PLAYING:Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$SampleState;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->notifySampleStateChanged(Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$SampleState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->uriBuilder:Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    if-eqz v0, :cond_0

    .line 122
    new-instance v1, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView$1;-><init>(Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;)V

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 1

    .line 135
    sget-object p1, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Theme color change"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 137
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView$2;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView$2;-><init>(Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
