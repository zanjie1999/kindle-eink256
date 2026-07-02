.class Lcom/amazon/device/ads/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/ViewManager$PreloadWebViewClient;,
        Lcom/amazon/device/ads/ViewManager$AdWebChromeClient;
    }
.end annotation


# static fields
.field private static final CONTENT_DESCRIPTION_NEW_WEBVIEW:Ljava/lang/String; = "newWebView"

.field private static final CONTENT_DESCRIPTION_ORIGINAL_WEBVIEW:Ljava/lang/String; = "originalWebView"

.field private static final CONTENT_DESCRIPTION_PRELOADED_WEBVIEW:Ljava/lang/String; = "preloadedWebView"

.field private static final LOGTAG:Ljava/lang/String; = "ViewManager"


# instance fields
.field private final androidClassAdapter:Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

.field private currentWebView:Landroid/webkit/WebView;

.field private disableHardwareAcceleration:Z

.field private gravity:I

.field private final javascriptInterfaceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyListener:Landroid/view/View$OnKeyListener;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final parent:Landroid/view/ViewGroup;

.field private preloadedWebView:Landroid/webkit/WebView;

.field private stashedWebView:Landroid/webkit/WebView;

.field private webViewClient:Landroid/webkit/WebViewClient;

.field private final webViewFactory:Lcom/amazon/device/ads/WebViewFactory;

.field private webViewHeight:I

.field private webViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    .line 60
    invoke-static {}, Lcom/amazon/device/ads/WebViewFactory;->getInstance()Lcom/amazon/device/ads/WebViewFactory;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/AndroidTargetUtils;->getDefaultAndroidClassAdapter()Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/ads/ViewManager;-><init>(Landroid/view/ViewGroup;Lcom/amazon/device/ads/WebViewFactory;Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Lcom/amazon/device/ads/WebViewFactory;Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/amazon/device/ads/ViewManager;->webViewHeight:I

    .line 48
    iput v0, p0, Lcom/amazon/device/ads/ViewManager;->webViewWidth:I

    const/16 v0, 0x11

    .line 49
    iput v0, p0, Lcom/amazon/device/ads/ViewManager;->gravity:I

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/amazon/device/ads/ViewManager;->disableHardwareAcceleration:Z

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/ViewManager;->javascriptInterfaceNames:Ljava/util/Set;

    .line 56
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/ViewManager;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ViewManager;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 64
    iput-object p1, p0, Lcom/amazon/device/ads/ViewManager;->parent:Landroid/view/ViewGroup;

    .line 65
    iput-object p2, p0, Lcom/amazon/device/ads/ViewManager;->webViewFactory:Lcom/amazon/device/ads/WebViewFactory;

    .line 66
    iput-object p3, p0, Lcom/amazon/device/ads/ViewManager;->androidClassAdapter:Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

    .line 68
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 69
    invoke-static {}, Lcom/amazon/device/ads/ApplicationDefaultPreferences;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    if-nez p2, :cond_0

    .line 70
    invoke-static {p1}, Lcom/amazon/device/ads/ApplicationDefaultPreferences;->initialize(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/ViewManager;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/device/ads/ViewManager;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object p0
.end method

.method private varargs destroyWebViews([Landroid/webkit/WebView;)V
    .locals 1

    .line 526
    new-instance v0, Lcom/amazon/device/ads/ViewManager$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/ViewManager$1;-><init>(Lcom/amazon/device/ads/ViewManager;[Landroid/webkit/WebView;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCurrentWebView()Landroid/webkit/WebView;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->currentWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/ViewManager;->getContext(Landroid/view/View;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/ViewManager;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/ViewManager;->validateWebView(Landroid/webkit/WebView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "originalWebView"

    .line 106
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/ViewManager;->setWebView(Landroid/webkit/WebView;Z)V

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not create WebView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->currentWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private getPreloadedWebView()Landroid/webkit/WebView;
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->preloadedWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/ViewManager;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ViewManager;->preloadedWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "preloadedWebView"

    .line 437
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->preloadedWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private isInitialized()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->currentWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateLayoutParamsIfNeeded()V
    .locals 4

    .line 206
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/device/ads/ViewManager;->webViewWidth:I

    iget v2, p0, Lcom/amazon/device/ads/ViewManager;->webViewHeight:I

    iget v3, p0, Lcom/amazon/device/ads/ViewManager;->gravity:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/amazon/device/ads/ViewManager;->setWebViewLayoutParams(Landroid/webkit/WebView;III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string v2, "Add JavaScript Interface %s"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->javascriptInterfaceNames:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getPreloadedWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method addViewToParent(Landroid/webkit/WebView;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public canShowViews()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/ViewManager;->getContext(Landroid/view/View;)Landroid/content/Context;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/amazon/device/ads/ViewManager;->webViewFactory:Lcom/amazon/device/ads/WebViewFactory;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/WebViewFactory;->isWebViewOk(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->webViewFactory:Lcom/amazon/device/ads/WebViewFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebViewFactory;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object p1

    .line 250
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->webViewFactory:Lcom/amazon/device/ads/WebViewFactory;

    sget-object v1, Lcom/amazon/device/ads/ViewManager;->LOGTAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Lcom/amazon/device/ads/WebViewFactory;->setJavaScriptEnabledForWebView(ZLandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 255
    iget-object v3, p0, Lcom/amazon/device/ads/ViewManager;->androidClassAdapter:Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

    invoke-virtual {v3, v0}, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;->withWebSettings(Landroid/webkit/WebSettings;)Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter$WebSettingsAdapter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter$WebSettingsAdapter;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 256
    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    .line 257
    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 258
    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 259
    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 260
    new-instance v3, Lcom/amazon/device/ads/ViewManager$AdWebChromeClient;

    invoke-direct {v3, p0, v1}, Lcom/amazon/device/ads/ViewManager$AdWebChromeClient;-><init>(Lcom/amazon/device/ads/ViewManager;Lcom/amazon/device/ads/ViewManager$1;)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 265
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 267
    iget-boolean v0, p0, Lcom/amazon/device/ads/ViewManager;->disableHardwareAcceleration:Z

    if-eqz v0, :cond_1

    .line 269
    invoke-static {p1}, Lcom/amazon/device/ads/AndroidTargetUtils;->disableHardwareAcceleration(Landroid/view/View;)V

    :cond_1
    return-object p1
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/webkit/WebView;

    .line 172
    iget-object v1, p0, Lcom/amazon/device/ads/ViewManager;->currentWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/device/ads/ViewManager;->stashedWebView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/device/ads/ViewManager;->preloadedWebView:Landroid/webkit/WebView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/ViewManager;->destroyWebViews([Landroid/webkit/WebView;)V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/amazon/device/ads/ViewManager;->currentWebView:Landroid/webkit/WebView;

    .line 174
    iput-object v0, p0, Lcom/amazon/device/ads/ViewManager;->stashedWebView:Landroid/webkit/WebView;

    .line 175
    iput-object v0, p0, Lcom/amazon/device/ads/ViewManager;->preloadedWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public disableHardwareAcceleration(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/amazon/device/ads/ViewManager;->disableHardwareAcceleration:Z

    return-void
.end method

.method getContext(Landroid/view/View;)Landroid/content/Context;
    .locals 0

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentAdView()Landroid/webkit/WebView;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->currentWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 227
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLocationOnScreen([I)V
    .locals 1

    .line 236
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    :cond_0
    return-void
.end method

.method public getWidth()I
    .locals 1

    .line 219
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initialize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getCurrentWebView()Landroid/webkit/WebView;

    return-void
.end method

.method public isCurrentView(Landroid/view/View;)Z
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->currentWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public listenForKey(Landroid/view/View$OnKeyListener;)V
    .locals 1

    .line 138
    iput-object p1, p0, Lcom/amazon/device/ads/ViewManager;->keyListener:Landroid/view/View$OnKeyListener;

    .line 139
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 140
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->keyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    .locals 8

    if-eqz p6, :cond_1

    if-eqz p7, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getPreloadedWebView()Landroid/webkit/WebView;

    move-result-object p6

    new-instance v0, Lcom/amazon/device/ads/ViewManager$PreloadWebViewClient;

    invoke-direct {v0, p0, p7}, Lcom/amazon/device/ads/ViewManager$PreloadWebViewClient;-><init>(Lcom/amazon/device/ads/ViewManager;Lcom/amazon/device/ads/PreloadCallback;)V

    invoke-virtual {p6, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getPreloadedWebView()Landroid/webkit/WebView;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getPreloadedWebView()Landroid/webkit/WebView;

    move-result-object p2

    new-instance v0, Lcom/amazon/device/ads/ViewManager$PreloadWebViewClient;

    invoke-direct {v0, p0, p3}, Lcom/amazon/device/ads/ViewManager$PreloadWebViewClient;-><init>(Lcom/amazon/device/ads/ViewManager;Lcom/amazon/device/ads/PreloadCallback;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getPreloadedWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_1
    iget-object p2, p0, Lcom/amazon/device/ads/ViewManager;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Loading URL: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public popView()Z
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->stashedWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 340
    iput-object v1, p0, Lcom/amazon/device/ads/ViewManager;->stashedWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    .line 341
    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/ViewManager;->setWebView(Landroid/webkit/WebView;Z)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePreviousInterfaces()V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->currentWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    .line 449
    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->javascriptInterfaceNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    iget-object v2, p0, Lcom/amazon/device/ads/ViewManager;->currentWebView:Landroid/webkit/WebView;

    invoke-static {v2, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->removeJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/ViewManager;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/ViewManager;->setWebView(Landroid/webkit/WebView;Z)V

    .line 459
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->currentWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "originalWebView"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->javascriptInterfaceNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/amazon/device/ads/ViewManager;->webViewHeight:I

    .line 195
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->updateLayoutParamsIfNeeded()V

    return-void
.end method

.method public setLayoutParams(III)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/amazon/device/ads/ViewManager;->webViewWidth:I

    .line 200
    iput p2, p0, Lcom/amazon/device/ads/ViewManager;->webViewHeight:I

    .line 201
    iput p3, p0, Lcom/amazon/device/ads/ViewManager;->gravity:I

    .line 202
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->updateLayoutParamsIfNeeded()V

    return-void
.end method

.method setWebView(Landroid/webkit/WebView;Z)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->currentWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 286
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 287
    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 288
    iget-object v1, p0, Lcom/amazon/device/ads/ViewManager;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/webkit/WebView;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 291
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/ViewManager;->destroyWebViews([Landroid/webkit/WebView;)V

    .line 294
    :cond_0
    iget-object p2, p0, Lcom/amazon/device/ads/ViewManager;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 295
    iput-object p1, p0, Lcom/amazon/device/ads/ViewManager;->currentWebView:Landroid/webkit/WebView;

    .line 296
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->updateLayoutParamsIfNeeded()V

    .line 297
    iget-object p1, p0, Lcom/amazon/device/ads/ViewManager;->currentWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/ViewManager;->addViewToParent(Landroid/webkit/WebView;)V

    .line 298
    iget-object p1, p0, Lcom/amazon/device/ads/ViewManager;->keyListener:Landroid/view/View$OnKeyListener;

    if-eqz p1, :cond_1

    .line 300
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/ViewManager;->listenForKey(Landroid/view/View$OnKeyListener;)V

    :cond_1
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 185
    iput-object p1, p0, Lcom/amazon/device/ads/ViewManager;->webViewClient:Landroid/webkit/WebViewClient;

    .line 186
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewManager;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    return-void
.end method

.method protected setWebViewLayoutParams(Landroid/webkit/WebView;III)V
    .locals 1

    .line 149
    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 152
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 153
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 159
    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 160
    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_1

    .line 162
    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_1
    :goto_0
    return-void
.end method

.method public stashView()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->stashedWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/webkit/WebView;

    aput-object v0, v2, v1

    .line 313
    invoke-direct {p0, v2}, Lcom/amazon/device/ads/ViewManager;->destroyWebViews([Landroid/webkit/WebView;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->currentWebView:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/amazon/device/ads/ViewManager;->stashedWebView:Landroid/webkit/WebView;

    .line 317
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->preloadedWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/ViewManager;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    const-string/jumbo v2, "newWebView"

    .line 320
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 325
    :cond_1
    iget-object v2, p0, Lcom/amazon/device/ads/ViewManager;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/ViewManager;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/device/ads/ViewManager;->preloadedWebView:Landroid/webkit/WebView;

    .line 327
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/ViewManager;->setWebView(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method validateWebView(Landroid/webkit/WebView;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
