.class Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1$1;
.super Ljava/lang/Object;
.source "SendFeedbackDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;->failure(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1$1;->this$2:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1$1;->this$2:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;->this$1:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    .line 208
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1$1;->this$2:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;

    iget-object v1, v1, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;->this$1:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;

    iget-object v1, v1, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    .line 209
    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_send_feedback_dialog_failure:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 207
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 213
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->setOverlaysVisible(ZZ)V

    return-void
.end method
