.class Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;
.super Ljava/lang/Object;
.source "InfoCardFeedbackDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendOnClickListener"
.end annotation


# instance fields
.field private final commentsEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;->commentsEditText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 170
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "XrayInfoCard"

    const-string v1, "SendFeedbackPressed"

    .line 171
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;->commentsEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 176
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "asin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "embeddedId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "feedbackHelpful"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 179
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "startPosition"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 180
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "endPosition"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 181
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "entityLabel"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "errorType"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 184
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static/range {v0 .. v7}, Lcom/amazon/xray/feedback/XrayFeedbackSender;->sendInfocardFeedback(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;->access$000(Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;)Lcom/amazon/xray/ui/listener/DialogFragmentOnSubmitPressedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;->access$000(Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;)Lcom/amazon/xray/ui/listener/DialogFragmentOnSubmitPressedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/xray/ui/listener/DialogFragmentOnSubmitPressedListener;->handleDialogSubmitPressed()V

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
