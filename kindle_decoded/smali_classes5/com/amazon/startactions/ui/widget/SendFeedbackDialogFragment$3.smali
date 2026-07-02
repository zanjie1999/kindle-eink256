.class Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;
.super Ljava/lang/Object;
.source "SendFeedbackDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

.field final synthetic val$radioGroup:Landroid/widget/RadioGroup;

.field final synthetic val$rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;Landroid/widget/RadioGroup;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;->val$rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    iput-object p3, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;->val$radioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 153
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "asin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v1, "ClickedFeedbackSubmit"

    .line 154
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    .line 153
    invoke-virtual {p1, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 156
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;->val$rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v1, "Feedback"

    const-string v3, "SubmitFeedback"

    invoke-interface {p1, v1, v3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;->val$radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 165
    invoke-static {}, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Submit button has been clicked without a radio selection"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 169
    :cond_0
    sget v1, Lcom/amazon/kindle/ea/R$id;->radio_yes:I

    if-ne p1, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v4, 0x0

    .line 172
    :goto_0
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/ea/R$id;->comments:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 174
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "contentType"

    .line 178
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v1, v3, :cond_2

    const-string v1, "EBSP"

    goto :goto_1

    :cond_2
    const-string v1, "EBOK"

    :goto_1
    move-object v8, v1

    const/4 v1, 0x0

    const-string/jumbo v3, "orientation"

    .line 184
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    const-string v1, "Landscape"

    goto :goto_2

    .line 186
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_4

    const-string v1, "Portrait"

    :cond_4
    :goto_2
    move-object v9, v1

    .line 191
    new-instance v1, Lcom/amazon/startactions/messaging/StartActionsFeedbackJsonMessage;

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "embeddedId"

    .line 193
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "widgets"

    .line 194
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/amazon/startactions/messaging/StartActionsFeedbackJsonMessage;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)V

    new-instance v0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3$1;-><init>(Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;Landroid/os/Bundle;)V

    .line 191
    invoke-static {v1, v0}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V

    return-void
.end method
