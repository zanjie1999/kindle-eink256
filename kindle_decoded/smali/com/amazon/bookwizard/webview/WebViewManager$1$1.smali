.class Lcom/amazon/bookwizard/webview/WebViewManager$1$1;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/webview/WebViewManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/bookwizard/webview/WebViewManager$1;

.field final synthetic val$headers:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/webview/WebViewManager$1;Ljava/util/Map;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/amazon/bookwizard/webview/WebViewManager$1$1;->this$1:Lcom/amazon/bookwizard/webview/WebViewManager$1;

    iput-object p2, p0, Lcom/amazon/bookwizard/webview/WebViewManager$1$1;->val$headers:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager$1$1;->this$1:Lcom/amazon/bookwizard/webview/WebViewManager$1;

    iget-object v0, v0, Lcom/amazon/bookwizard/webview/WebViewManager$1;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-static {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$200(Lcom/amazon/bookwizard/webview/WebViewManager;)Lcom/amazon/bookwizard/webview/BookWizardWebView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "webview not refreshed: it had been cleared"

    invoke-static {v0, v2}, Lcom/amazon/bookwizard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "webview not refreshed: not connected"

    invoke-static {v0, v2}, Lcom/amazon/bookwizard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager$1$1;->this$1:Lcom/amazon/bookwizard/webview/WebViewManager$1;

    iget-object v0, v0, Lcom/amazon/bookwizard/webview/WebViewManager$1;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v2}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$402(Lcom/amazon/bookwizard/webview/WebViewManager;Ljava/util/Date;)Ljava/util/Date;

    .line 95
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager$1$1;->this$1:Lcom/amazon/bookwizard/webview/WebViewManager$1;

    iget-object v0, v0, Lcom/amazon/bookwizard/webview/WebViewManager$1;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-static {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$200(Lcom/amazon/bookwizard/webview/WebViewManager;)Lcom/amazon/bookwizard/webview/BookWizardWebView;

    move-result-object v0

    invoke-static {}, Lcom/amazon/bookwizard/util/WebViewUtil;->getDbsEndpoint()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/bookwizard/webview/WebViewManager$1$1;->val$headers:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/bookwizard/webview/BookWizardWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 96
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager$1$1;->this$1:Lcom/amazon/bookwizard/webview/WebViewManager$1;

    iget-object v0, v0, Lcom/amazon/bookwizard/webview/WebViewManager$1;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-static {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$200(Lcom/amazon/bookwizard/webview/WebViewManager;)Lcom/amazon/bookwizard/webview/BookWizardWebView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager$1$1;->this$1:Lcom/amazon/bookwizard/webview/WebViewManager$1;

    iget-object v0, v0, Lcom/amazon/bookwizard/webview/WebViewManager$1;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$502(Lcom/amazon/bookwizard/webview/WebViewManager;Z)Z

    .line 98
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshWebView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/bookwizard/webview/WebViewManager$1$1;->this$1:Lcom/amazon/bookwizard/webview/WebViewManager$1;

    iget-object v3, v3, Lcom/amazon/bookwizard/webview/WebViewManager$1;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-static {v3}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$200(Lcom/amazon/bookwizard/webview/WebViewManager;)Lcom/amazon/bookwizard/webview/BookWizardWebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager$1$1;->this$1:Lcom/amazon/bookwizard/webview/WebViewManager$1;

    iget-object v0, v0, Lcom/amazon/bookwizard/webview/WebViewManager$1;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-static {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$600(Lcom/amazon/bookwizard/webview/WebViewManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
