.class public Lcom/amazon/bookwizard/webview/BookWizardWebViewPreloadService;
.super Landroid/app/Service;
.source "BookWizardWebViewPreloadService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 30
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BookWizardWebViewPreloadService"

    const-string p2, "Service created"

    .line 31
    invoke-static {p1, p2}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->getInstance()Lcom/amazon/bookwizard/webview/WebViewManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/amazon/bookwizard/webview/WebViewManager;->getWebView(Landroid/content/Context;)Lcom/amazon/bookwizard/webview/BookWizardWebView;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p2, "load bookwizard webview"

    .line 34
    invoke-static {p1, p2}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->getInstance()Lcom/amazon/bookwizard/webview/WebViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/webview/WebViewManager;->refreshWebView()V

    :cond_0
    const/4 p1, 0x2

    return p1
.end method
