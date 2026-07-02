.class Lcom/amazon/startactions/ui/widget/HeaderWidget$ShareOnClickListener;
.super Ljava/lang/Object;
.source "HeaderWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/HeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;


# direct methods
.method private constructor <init>(Lcom/amazon/startactions/ui/widget/HeaderWidget;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ShareOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/startactions/ui/widget/HeaderWidget;Lcom/amazon/startactions/ui/widget/HeaderWidget$1;)V
    .locals 0

    .line 265
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/HeaderWidget$ShareOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/HeaderWidget;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 269
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ShareOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ShareOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ShareOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object v2, v2, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object p1

    .line 270
    invoke-virtual {p1}, Lcom/amazon/ea/reftag/RefTag;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "START_ACTIONS_HEADER_WIDGET"

    invoke-static {p1, v0}, Lcom/amazon/ea/ui/helper/ShareHelper;->shareBook(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 275
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ShareOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/startactions/metrics/BookDetailActions;->CLICK_RECOMMEND:Lcom/amazon/startactions/metrics/BookDetailActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 276
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "HeaderWidgetShareClicked"

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 277
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ShareOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object v2, v2, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 278
    invoke-static {v1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object p1

    .line 279
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ShareOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v1, "MetricsTag"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "AnyActionsHeaderWidget"

    const-string v2, "Share"

    .line 281
    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
