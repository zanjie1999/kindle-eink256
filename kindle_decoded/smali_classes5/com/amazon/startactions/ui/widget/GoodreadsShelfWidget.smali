.class public Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "GoodreadsShelfWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.widget.GoodreadsShelfWidget"


# instance fields
.field private goodreadsShelfWidget:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

.field private final isSensitive:Z

.field private themedTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)V
    .locals 7

    .line 105
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 108
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v2

    .line 110
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

    .line 111
    iget-boolean v0, v3, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->isSensitive:Z

    iput-boolean v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->isSensitive:Z

    .line 112
    new-instance v0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    new-instance v5, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    iget-object v1, v3, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->asin:Ljava/lang/String;

    invoke-direct {v5, v1}, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    move-object v1, v0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;-><init>(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->goodreadsShelfWidget:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initializeHeader(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .line 151
    sget v0, Lcom/amazon/kindle/ea/R$id;->startactions_goodreads_shelf_widget_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 152
    iget v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->themedTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    sget p1, Lcom/amazon/kindle/ea/R$array;->startactions_divider_line:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 155
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/kindle/ea/R$dimen;->startactions_widget_padding_horizontal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 156
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v2, v4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 157
    invoke-static {p2, p1}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;)Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;
    .locals 2

    .line 81
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isSocialNetworkBlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 82
    sget-object p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->TAG:Ljava/lang/String;

    const-string v0, "Social Networks are blocked through parental controls; invalidating GoodreadsShelfWidget"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 87
    invoke-static {v0}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->getGoodreadsInfo(Z)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 89
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 90
    sget-object p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->TAG:Ljava/lang/String;

    const-string v0, "Goodreads info is null; invalidating GoodreadsShelfWidget"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1

    .line 95
    :cond_2
    new-instance v1, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;

    invoke-direct {v1, p0, v0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)V

    return-object v1
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 118
    sget p2, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->themedTextColor:I

    .line 120
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_goodreads_shelf:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 121
    sget p2, Lcom/amazon/kindle/ea/R$id;->startactions_subtle_jit_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 122
    sget v0, Lcom/amazon/kindle/ea/R$id;->startactions_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    sget v1, Lcom/amazon/kindle/ea/R$id;->startactions_goodreads_shelf_component_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 125
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->goodreadsShelfWidget:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    .line 126
    invoke-interface {v3}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 125
    invoke-virtual {v2, v1, p2, v0, v3}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->createView(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p2

    .line 127
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 129
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v1, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p2, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 131
    new-instance p2, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$1;

    invoke-direct {p2, p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$1;-><init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-direct {p0, p1, v0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->initializeHeader(Landroid/view/View;Landroid/view/View;)V

    return-object p1
.end method

.method public initMetricsValues()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "DisplayedGoodreadsShelf"

    .line 163
    invoke-virtual {v0, v2, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 164
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v0, "DisplayedGoodreadsShelfWidget"

    .line 167
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    .line 170
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->goodreadsShelfWidget:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    .line 171
    invoke-static {v1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->access$000(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "AnyActionsAutoShelvingWidget"

    .line 170
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 174
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getStartActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object v0

    const-string v1, "DisplayedWidget"

    const-string v2, "GoodredsShelf"

    .line 175
    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReaderActivityPause()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->goodreadsShelfWidget:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->onReaderActivityPause()V

    return-void
.end method

.method public onReaderActivityResume()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->goodreadsShelfWidget:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->onReaderActivityResume()V

    return-void
.end method

.method public onUiDismiss()V
    .locals 3

    .line 180
    invoke-super {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->onUiDismiss()V

    .line 182
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->goodreadsShelfWidget:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->onDismiss()V

    .line 184
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->goodreadsShelfWidget:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    .line 186
    invoke-static {v1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->access$000(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "AnyActionsAutoShelvingWidget"

    .line 184
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
