.class Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$2;
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

.field final synthetic val$rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$2;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$2;->val$rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 137
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$2;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "asin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "ClickedFeedbackCancel"

    .line 138
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    .line 137
    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 140
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$2;->val$rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v0, "Feedback"

    const-string v1, "CancelFeedback"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$2;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 145
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->setOverlaysVisible(ZZ)V

    return-void
.end method
