.class public Lcom/amazon/bookwizard/webview/BookWizardWebView;
.super Landroid/webkit/WebView;
.source "BookWizardWebView.java"


# instance fields
.field private loading:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/amazon/bookwizard/webview/BookWizardWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/bookwizard/webview/BookWizardWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0}, Lcom/amazon/bookwizard/webview/BookWizardWebView;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 3

    .line 60
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 61
    new-instance v0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;

    invoke-direct {v0, p0}, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;-><init>(Lcom/amazon/bookwizard/webview/BookWizardWebView;)V

    const-string v1, "AndroidKRJSInterface"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/amazon/bookwizard/webview/MetricsJSInterface;

    invoke-direct {v0}, Lcom/amazon/bookwizard/webview/MetricsJSInterface;-><init>()V

    const-string v1, "AndroidMetricsJSInterface"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 64
    new-instance v1, Lcom/amazon/bookwizard/webview/BookWizardWebView$1;

    invoke-direct {v1, p0}, Lcom/amazon/bookwizard/webview/BookWizardWebView$1;-><init>(Lcom/amazon/bookwizard/webview/BookWizardWebView;)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 70
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setHapticFeedbackEnabled(Z)V

    .line 71
    new-instance v1, Lcom/amazon/bookwizard/webview/DbsWebViewClient;

    invoke-direct {v1}, Lcom/amazon/bookwizard/webview/DbsWebViewClient;-><init>()V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 72
    new-instance v1, Lcom/amazon/bookwizard/webview/BookWizardWebView$2;

    invoke-direct {v1, p0}, Lcom/amazon/bookwizard/webview/BookWizardWebView$2;-><init>(Lcom/amazon/bookwizard/webview/BookWizardWebView;)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 79
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    .line 80
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 81
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 82
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 83
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 84
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 85
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/bookwizard/util/WebViewUtil;->buildUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/amazon/bookwizard/webview/BookWizardWebView;->loading:Z

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/amazon/bookwizard/webview/BookWizardWebView;->loading:Z

    .line 96
    const-class p1, Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadUrl"

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setLoading(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/amazon/bookwizard/webview/BookWizardWebView;->loading:Z

    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 104
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/webview/BookWizardWebView;->setLoading(Z)V

    return-void
.end method
