.class Lcom/amazon/bookwizard/webview/WebViewManager$1;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/webview/WebViewManager;->refreshWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/webview/WebViewManager;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/webview/WebViewManager;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/bookwizard/webview/WebViewManager$1;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 84
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/bookwizard/util/WebViewUtil;->getDbsHeaders(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/amazon/bookwizard/webview/WebViewManager$1;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    new-instance v2, Lcom/amazon/bookwizard/webview/WebViewManager$1$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/bookwizard/webview/WebViewManager$1$1;-><init>(Lcom/amazon/bookwizard/webview/WebViewManager$1;Ljava/util/Map;)V

    invoke-static {v1, v2}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$700(Lcom/amazon/bookwizard/webview/WebViewManager;Ljava/lang/Runnable;)V

    return-void
.end method
