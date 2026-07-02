.class Lcom/amazon/bookwizard/webview/WebViewManager$2;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/webview/WebViewManager;->onExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

.field final synthetic val$old:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/webview/WebViewManager;Lcom/amazon/bookwizard/ui/BookWizardWebActivity;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/amazon/bookwizard/webview/WebViewManager$2;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    iput-object p2, p0, Lcom/amazon/bookwizard/webview/WebViewManager$2;->val$old:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager$2;->val$old:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager$2;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$402(Lcom/amazon/bookwizard/webview/WebViewManager;Ljava/util/Date;)Ljava/util/Date;

    .line 192
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager$2;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$502(Lcom/amazon/bookwizard/webview/WebViewManager;Z)Z

    .line 193
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager$2;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$802(Lcom/amazon/bookwizard/webview/WebViewManager;Lcom/amazon/bookwizard/ui/BookWizardWebActivity;)Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    return-void
.end method
