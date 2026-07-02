.class Lcom/amazon/startactions/ui/widget/SendFeedbackWidget$1;
.super Ljava/lang/Object;
.source "SendFeedbackWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;->createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 62
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/SendFeedbackWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v1, "ClickedSendFeedback"

    invoke-static {v1, v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 65
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;

    .line 67
    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "AnyActionsSendFeedbackWidget"

    const-string v2, "SendFeedback"

    .line 65
    invoke-interface {p1, v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 73
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    .line 80
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;

    iget-object v3, v3, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v3}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetPlacements()Ljava/util/List;

    move-result-object v3

    .line 82
    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p1, v1, v2, v0, v3}, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;ILjava/util/List;)Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;->access$002(Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;)Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    .line 85
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;->access$000(Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;)Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "SendFeedbackDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
