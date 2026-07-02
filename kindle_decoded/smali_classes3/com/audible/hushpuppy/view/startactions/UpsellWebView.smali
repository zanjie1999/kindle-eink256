.class public final Lcom/audible/hushpuppy/view/startactions/UpsellWebView;
.super Landroid/widget/FrameLayout;
.source "UpsellWebView.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/network/WebviewLoadingView;
.implements Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;


# static fields
.field private static final HANDLER_DEBOUNCER:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final PROPERTIES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field eventBus:Lde/greenrobot/event/EventBus;

.field kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private mainLayout:Landroid/view/View;

.field private progressBar:Landroid/widget/ProgressBar;

.field private uriBuilder:Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->UPSELL_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_RELATIONSHIP:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PRICE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->PROPERTIES:Ljava/util/EnumSet;

    .line 56
    new-instance v0, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->HANDLER_DEBOUNCER:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    .line 59
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->mainLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->initViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->loadUrl()V

    return-void
.end method

.method private initViews()V
    .locals 4

    .line 122
    new-instance v0, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->uriBuilder:Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;

    .line 124
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Initializing views..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->mainLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 127
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->webview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->webView:Landroid/webkit/WebView;

    .line 128
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->mainLayout:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->progressBar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->progressBar:Landroid/widget/ProgressBar;

    .line 130
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;

    invoke-direct {v2, v0, p0}, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;-><init>(Landroid/app/Activity;Lcom/audible/hushpuppy/common/network/WebviewLoadingView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 131
    new-instance v1, Lcom/audible/hushpuppy/view/WebviewNoNetworkCheckOnClickListener;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v1, v2}, Lcom/audible/hushpuppy/view/WebviewNoNetworkCheckOnClickListener;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 132
    iget-object v2, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 135
    new-instance v1, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->webView:Landroid/webkit/WebView;

    invoke-direct {v1, v2}, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;-><init>(Landroid/webkit/WebView;)V

    .line 136
    new-instance v2, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v0, "AndroidJavaScriptBridge"

    invoke-direct {v2, v0, v1, v3}, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;-><init>(Ljava/lang/String;Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;Ljava/lang/ref/WeakReference;)V

    .line 138
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/audible/hushpuppy/view/common/BrowserHostJavaScriptBridge;

    invoke-direct {v0}, Lcom/audible/hushpuppy/view/common/BrowserHostJavaScriptBridge;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->webView:Landroid/webkit/WebView;

    const-string v2, "BrowserHost"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    goto :goto_0

    .line 145
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Current activity is null! Can\'t initialize start actions webview!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private loadUrl()V
    .locals 9

    .line 102
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->uriBuilder:Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->webView:Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 104
    sget-object v1, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "loadUrl"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v1}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->getColorModeFromAppTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v2

    .line 107
    sget-object v3, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "true"

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v8, v2

    .line 108
    iget-object v2, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->uriBuilder:Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;

    .line 109
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 110
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder$UpsellView;->compact:Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder$UpsellView;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v7, v0

    .line 108
    invoke-virtual/range {v3 .. v8}, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;->getUpsellUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private refresh()V
    .locals 2

    .line 176
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->HANDLER_DEBOUNCER:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    new-instance v1, Lcom/audible/hushpuppy/view/startactions/UpsellWebView$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/startactions/UpsellWebView$1;-><init>(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;)V

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public dismissLoadingState()V
    .locals 2

    .line 162
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "dismissLoadingState"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 80
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 81
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->mainLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->upsell_webview:I

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->mainLayout:Landroid/view/View;

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->refresh()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->initViews()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 91
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 3

    .line 194
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->PROPERTIES:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->isPropertyOneOf(Ljava/util/EnumSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object v1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Receiving %s, %s"

    invoke-interface {v0, v2, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->refresh()V

    :cond_0
    return-void
.end method

.method public showLoadingState()V
    .locals 2

    .line 152
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "showLoadingState"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
