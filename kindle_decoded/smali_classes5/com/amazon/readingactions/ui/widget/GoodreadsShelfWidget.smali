.class public Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;
.super Lcom/amazon/readingactions/ui/widget/WidgetBase;
.source "GoodreadsShelfWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/readingactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.readingactions.ui.widget.GoodreadsShelfWidget"


# instance fields
.field private goodreadsShelfWidget:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

.field private final isSensitive:Z

.field private themedTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)V
    .locals 7

    .line 95
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 98
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v2

    .line 100
    iget-object v0, p1, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    invoke-virtual {p2}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v3, v0

    .line 101
    iget-boolean v0, v3, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->isSensitive:Z

    iput-boolean v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;->isSensitive:Z

    .line 102
    new-instance v0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    new-instance v5, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    iget-object v1, v3, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->asin:Ljava/lang/String;

    invoke-direct {v5, v1}, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    move-object v1, v0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;-><init>(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;->goodreadsShelfWidget:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initializeHeader(Landroid/view/View;)V
    .locals 1

    .line 140
    sget v0, Lcom/amazon/kindle/ea/R$id;->readingactions_goodreads_shelf_widget_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 141
    iget v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;->themedTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;)Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;
    .locals 2

    .line 81
    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->canCreateGoodreadShelfWidget()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 84
    invoke-static {v0}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->getGoodreadsInfo(Z)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;

    invoke-direct {v1, p0, v0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)V

    return-object v1
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 108
    sget p2, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;->themedTextColor:I

    .line 110
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->readingactions_widget_goodreads_shelf:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 111
    sget p2, Lcom/amazon/kindle/ea/R$id;->startactions_subtle_jit_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 112
    sget v0, Lcom/amazon/kindle/ea/R$id;->startactions_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    sget v1, Lcom/amazon/kindle/ea/R$id;->readingactions_goodreads_shelf_component_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 115
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;->goodreadsShelfWidget:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    .line 116
    invoke-interface {v3}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 115
    invoke-virtual {v2, v1, p2, v0, v3}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->createView(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p2

    .line 117
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 119
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p2, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 121
    new-instance p2, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$1;

    invoke-direct {p2, p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$1;-><init>(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;->initializeHeader(Landroid/view/View;)V

    return-object p1
.end method

.method public initMetricsValues()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "DisplayedGoodreadsShelf"

    .line 147
    invoke-virtual {v0, v2, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 148
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v0, "DisplayedGoodreadsShelfWidget"

    .line 151
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    .line 154
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;->goodreadsShelfWidget:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    .line 155
    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->access$000(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "AnyActionsAutoShelvingWidget"

    .line 154
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 158
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getStartActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object v0

    const-string v1, "DisplayedWidget"

    const-string v2, "GoodredsShelf"

    .line 159
    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReaderActivityPause()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;->goodreadsShelfWidget:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->onReaderActivityPause()V

    return-void
.end method

.method public onReaderActivityResume()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;->goodreadsShelfWidget:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->onReaderActivityResume()V

    return-void
.end method

.method public onUiDismiss()V
    .locals 3

    .line 164
    invoke-super {p0}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->onUiDismiss()V

    .line 166
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;->goodreadsShelfWidget:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->onDismiss()V

    .line 168
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;->goodreadsShelfWidget:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    .line 170
    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->access$000(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "AnyActionsAutoShelvingWidget"

    .line 168
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
