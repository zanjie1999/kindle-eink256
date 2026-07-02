.class Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;
.super Ljava/lang/Object;
.source "SendFeedbackDialogFragment.java"

# interfaces
.implements Lcom/amazon/ea/util/MessageSender$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;

.field final synthetic val$arguments:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;Landroid/os/Bundle;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;->this$1:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;

    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;->val$arguments:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 2

    .line 199
    invoke-static {}, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not send feedback!"

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;->val$arguments:Landroid/os/Bundle;

    const-string v0, "asin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "SendFeedbackError"

    .line 202
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->addError(Ljava/lang/String;)V

    .line 204
    new-instance p1, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1$1;

    invoke-direct {p1, p0}, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1$1;-><init>(Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;)V

    invoke-static {p1}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 3

    .line 220
    invoke-static {}, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Actions Feedback sent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;->val$arguments:Landroid/os/Bundle;

    const-string v0, "asin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "SendFeedbackSuccess"

    .line 223
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 225
    new-instance p1, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1$2;

    invoke-direct {p1, p0}, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1$2;-><init>(Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;)V

    invoke-static {p1}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;->this$1:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
