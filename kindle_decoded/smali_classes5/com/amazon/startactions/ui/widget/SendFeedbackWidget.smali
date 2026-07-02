.class public Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "SendFeedbackWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/SendFeedbackWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.widget.SendFeedbackWidget"


# instance fields
.field private dialogFragment:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/SendFeedbackWidgetDef;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;)Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;->dialogFragment:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;)Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;->dialogFragment:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    return-object p1
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/SendFeedbackWidgetDef;)Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;
    .locals 1

    .line 41
    new-instance v0, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/SendFeedbackWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 53
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_send_feedback:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    sget p2, Lcom/amazon/kindle/ea/R$id;->sendFeedbackButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 55
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color:I

    .line 56
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 55
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 59
    new-instance v0, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget$1;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget$1;-><init>(Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public initMetricsValues()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/SendFeedbackWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "DisplayedSendFeedback"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 97
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 98
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/SendFeedbackWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ClickedSendFeedback"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedSendFeedbackWidget"

    .line 100
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    return-void
.end method
