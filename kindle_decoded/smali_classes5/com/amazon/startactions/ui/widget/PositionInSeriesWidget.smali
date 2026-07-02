.class public Lcom/amazon/startactions/ui/widget/PositionInSeriesWidget;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "PositionInSeriesWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.widget.PositionInSeriesWidget"

.field private static final TAG_REGEX:Ljava/lang/String; = "(?s).*%\\{\\w*\\}.*"

.field private static final TEXT_TAG_POSITION_IN_SERIES:Ljava/lang/String; = "%{position}"

.field private static final TEXT_TAG_SERIES_NAME:Ljava/lang/String; = "%{seriesName}"

.field private static final TEXT_TAG_TOTAL_IN_SERIES:Ljava/lang/String; = "%{total}"


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 71
    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/PositionInSeriesWidget;->text:Ljava/lang/String;

    return-void
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;)Lcom/amazon/startactions/ui/widget/PositionInSeriesWidget;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;->text:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;->seriesPositionData:Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;

    iget v1, v1, Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;->positionInSeries:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%{position}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;->seriesPositionData:Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;

    iget v1, v1, Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;->totalInSeries:I

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%{total}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;->seriesPositionData:Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;->seriesName:Ljava/lang/String;

    const-string v2, "%{seriesName}"

    .line 52
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?s).*%\\{\\w*\\}.*"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 57
    sget-object p0, Lcom/amazon/startactions/ui/widget/PositionInSeriesWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Series widget; Text contains an un-recognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_1
    new-instance v1, Lcom/amazon/startactions/ui/widget/PositionInSeriesWidget;

    invoke-direct {v1, p0, v0}, Lcom/amazon/startactions/ui/widget/PositionInSeriesWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 76
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_simple_text:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;->widgetTitle:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 80
    sget p2, Lcom/amazon/kindle/ea/R$id;->startactions_widget_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;->widgetTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    :cond_0
    sget p2, Lcom/amazon/kindle/ea/R$id;->simple_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/PositionInSeriesWidget;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    new-instance v0, Lcom/amazon/startactions/ui/widget/PositionInSeriesWidget$1;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/widget/PositionInSeriesWidget$1;-><init>(Lcom/amazon/startactions/ui/widget/PositionInSeriesWidget;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p2, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    return-object p1
.end method

.method public initMetricsValues()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "DisplayedPositionInSeries"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 107
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v0, "DisplayedPositionInSeriesWidget"

    .line 109
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    return-void
.end method
