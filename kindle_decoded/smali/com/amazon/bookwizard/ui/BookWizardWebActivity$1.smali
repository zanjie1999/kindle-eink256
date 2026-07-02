.class Lcom/amazon/bookwizard/ui/BookWizardWebActivity$1;
.super Ljava/lang/Object;
.source "BookWizardWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->startTimeoutTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

.field final synthetic val$loadingUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ui/BookWizardWebActivity;Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity$1;->this$0:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    iput-object p2, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity$1;->val$loadingUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 118
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->getInstance()Lcom/amazon/bookwizard/webview/WebViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->isPageLoaded()Z

    move-result v0

    .line 119
    invoke-static {}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity$1;->val$loadingUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] loaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity$1;->this$0:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity$1;->this$0:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    invoke-static {v0}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->access$100(Lcom/amazon/bookwizard/ui/BookWizardWebActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity$1;->this$0:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity$1;->this$0:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    const-string v1, "bookwizard_loading"

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->showNetworkErrorDialog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
