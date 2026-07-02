.class public Lcom/amazon/startactions/ui/widget/TimeToReadWidget;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "TimeToReadWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final ONE_HOUR:I = 0x1

.field private static final THIRTY_MINUTES:I = 0x1e


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    return-void
.end method

.method private configureReadingTime(Landroid/widget/TextView;)V
    .locals 8

    .line 91
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingTimeData:Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->formattedTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingTimeData:Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->formattedTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$plurals;->startactions_widget_time_to_read_hours:I

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v3, v2

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingTimeData:Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    iget v3, v3, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->hours:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingTimeData:Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    iget v2, v2, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->hours:I

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 98
    invoke-virtual {v0, v1, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$plurals;->startactions_widget_time_to_read_minutes:I

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v5, v3

    check-cast v5, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingTimeData:Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    iget v5, v5, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->minutes:I

    new-array v7, v4, [Ljava/lang/Object;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingTimeData:Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    iget v3, v3, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->minutes:I

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v6

    .line 100
    invoke-virtual {v1, v2, v5, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 104
    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v3, v2

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingTimeData:Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    iget v3, v3, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->hours:I

    if-lt v3, v4, :cond_1

    .line 106
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/kindle/ea/R$string;->startactions_widget_time_to_read_time_format:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 111
    :cond_1
    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iget-object v0, v2, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingTimeData:Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    iget v0, v0, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->minutes:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_2

    .line 112
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$plurals;->startactions_widget_time_to_read_minutes:I

    new-array v3, v4, [Ljava/lang/Object;

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    .line 112
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_time_to_read_less_than:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$plurals;->startactions_widget_time_to_read_hours:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 117
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_time_to_read_less_than:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;)Lcom/amazon/startactions/ui/widget/TimeToReadWidget;
    .locals 1

    .line 41
    new-instance v0, Lcom/amazon/startactions/ui/widget/TimeToReadWidget;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/widget/TimeToReadWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 53
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_time_to_read:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    sget p2, Lcom/amazon/kindle/ea/R$id;->reading_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 57
    invoke-direct {p0, p2}, Lcom/amazon/startactions/ui/widget/TimeToReadWidget;->configureReadingTime(Landroid/widget/TextView;)V

    .line 60
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingPagesData:Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;

    if-eqz p2, :cond_0

    .line 61
    sget p2, Lcom/amazon/kindle/ea/R$id;->reading_pages:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$plurals;->startactions_widget_time_to_read_pages:I

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v4, v3

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingPagesData:Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;

    iget v4, v4, Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;->pages:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingPagesData:Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;

    iget v3, v3, Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;->pages:I

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    .line 62
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_secondary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :cond_0
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p2, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 71
    new-instance p2, Lcom/amazon/startactions/ui/widget/TimeToReadWidget$1;

    invoke-direct {p2, p0}, Lcom/amazon/startactions/ui/widget/TimeToReadWidget$1;-><init>(Lcom/amazon/startactions/ui/widget/TimeToReadWidget;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public initMetricsValues()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "DisplayedTimeToRead"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 130
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v0, "DisplayedTimeToReadWidget"

    .line 132
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    return-void
.end method
