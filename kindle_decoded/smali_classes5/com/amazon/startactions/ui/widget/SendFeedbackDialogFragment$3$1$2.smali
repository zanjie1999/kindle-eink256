.class Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1$2;
.super Ljava/lang/Object;
.source "SendFeedbackDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;->success(Lorg/json/JSONObject;)V
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

    .line 225
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1$2;->this$2:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1$2;->this$2:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;->this$1:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    .line 229
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1$2;->this$2:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;

    iget-object v1, v1, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;->this$1:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;

    iget-object v1, v1, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    .line 230
    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_send_feedback_dialog_success:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 228
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 234
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->setOverlaysVisible(ZZ)V

    return-void
.end method
