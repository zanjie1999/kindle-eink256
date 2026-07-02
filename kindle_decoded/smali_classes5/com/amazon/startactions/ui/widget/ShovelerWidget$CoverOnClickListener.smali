.class Lcom/amazon/startactions/ui/widget/ShovelerWidget$CoverOnClickListener;
.super Ljava/lang/Object;
.source "ShovelerWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/ShovelerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverOnClickListener"
.end annotation


# instance fields
.field private final index:I

.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/ShovelerWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/widget/ShovelerWidget;I)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/ShovelerWidget$CoverOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ShovelerWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p2, p0, Lcom/amazon/startactions/ui/widget/ShovelerWidget$CoverOnClickListener;->index:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 184
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ShovelerWidget$CoverOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ShovelerWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "DidAnything"

    .line 185
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v0, "ClickedRecommendation"

    .line 186
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 187
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/ShovelerWidget$CoverOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ShovelerWidget;

    iget-object v2, v2, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 188
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/ShovelerWidget$CoverOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ShovelerWidget;

    iget-object v1, v1, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/startactions/ui/widget/ShovelerWidget$CoverOnClickListener;->index:I

    invoke-static {v0, v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    const-string v0, "StartActionsActiveTime"

    .line 189
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->stopTimer(Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ShovelerWidget$CoverOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ShovelerWidget;

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ea/guava/Maps;->newHashMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 192
    iget v0, p0, Lcom/amazon/startactions/ui/widget/ShovelerWidget$CoverOnClickListener;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Index"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "AnyActionsShovelerWidget"

    const-string v2, "SeeInStore"

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 197
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ShovelerWidget$CoverOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ShovelerWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ShovelerWidget$CoverOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ShovelerWidget;

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/ShovelerWidget$CoverOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ShovelerWidget;

    iget-object v3, v3, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/startactions/ui/widget/ShovelerWidget$CoverOnClickListener;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object p1

    .line 199
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ShovelerWidget$CoverOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ShovelerWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    iget v2, p0, Lcom/amazon/startactions/ui/widget/ShovelerWidget$CoverOnClickListener;->index:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v0, v2, p1, v1}, Lcom/amazon/ea/util/StoreManager;->loadStorePage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Lcom/amazon/ea/reftag/RefTag;Ljava/lang/String;)Z

    return-void
.end method
