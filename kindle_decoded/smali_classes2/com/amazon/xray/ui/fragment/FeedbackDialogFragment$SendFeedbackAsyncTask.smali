.class Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendFeedbackAsyncTask;
.super Ljava/lang/Object;
.source "FeedbackDialogFragment.java"

# interfaces
.implements Lcom/amazon/kindle/krx/application/IAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendFeedbackAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/application/IAsyncTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final message:Lcom/amazon/xray/model/message/FeedbackMessage;

.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;Lcom/amazon/xray/model/message/FeedbackMessage;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendFeedbackAsyncTask;->this$0:Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendFeedbackAsyncTask;->message:Lcom/amazon/xray/model/message/FeedbackMessage;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendFeedbackAsyncTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendFeedbackAsyncTask;->message:Lcom/amazon/xray/model/message/FeedbackMessage;

    invoke-static {v0}, Lcom/amazon/xray/plugin/util/MessagingUtil;->send(Lcom/amazon/xray/plugin/util/MessagingUtil$Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Xray Feedback Sent"

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendFeedbackAsyncTask;->this$0:Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;

    sget v1, Lcom/amazon/kindle/xray/R$string;->xray_feedback_dialog_success:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;->access$100(Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendFeedbackAsyncTask;->this$0:Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendFeedbackAsyncTask;->this$0:Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;

    sget v1, Lcom/amazon/kindle/xray/R$string;->xray_feedback_dialog_failure:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;->access$100(Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
    .locals 1

    .line 186
    sget-object v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->MEDIUM:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    return-object v0
.end method
