.class public Lcom/amazon/bookwizard/webview/BookWizardJSInterface;
.super Ljava/lang/Object;
.source "BookWizardJSInterface.java"


# static fields
.field private static final GSON:Lcom/google/gson/Gson;

.field private static final SAMPLE_DELAY_MS:J = 0x5dcL

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final am:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private final store:Lcom/amazon/bookwizard/store/StoreManager;

.field private final webHandler:Lcom/amazon/bookwizard/webview/WebViewManager;

.field private final webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->GSON:Lcom/google/gson/Gson;

    .line 29
    const-class v0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/bookwizard/webview/BookWizardWebView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    .line 42
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getStoreManager()Lcom/amazon/bookwizard/store/StoreManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->store:Lcom/amazon/bookwizard/store/StoreManager;

    .line 43
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->am:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 44
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->getInstance()Lcom/amazon/bookwizard/webview/WebViewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->webHandler:Lcom/amazon/bookwizard/webview/WebViewManager;

    return-void
.end method

.method static synthetic access$000()Lcom/google/gson/Gson;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->GSON:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/bookwizard/webview/BookWizardJSInterface;)Lcom/amazon/bookwizard/store/StoreManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->store:Lcom/amazon/bookwizard/store/StoreManager;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->webHandler:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->onExit()V

    return-void
.end method

.method public downloadSamples(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/amazon/bookwizard/webview/BookWizardJSInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/bookwizard/webview/BookWizardJSInterface$1;-><init>(Lcom/amazon/bookwizard/webview/BookWizardJSInterface;Ljava/lang/String;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public flashNextUpdate()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->webHandler:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->flashNextUpdate()V

    return-void
.end method

.method public goToLibrary()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->webHandler:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->onExit()V

    .line 113
    invoke-static {}, Lcom/amazon/bookwizard/util/WebViewUtil;->launchHome()V

    return-void
.end method

.method public isConnected()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 72
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->am:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IAlertDialogManager;->displayAlertDialog(Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public pageHeartbeat()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 53
    sget-object v0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pageHeartbeat called"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->webHandler:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->onPageLoaded()V

    return-void
.end method
