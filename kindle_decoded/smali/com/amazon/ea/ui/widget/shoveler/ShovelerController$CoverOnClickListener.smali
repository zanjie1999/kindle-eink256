.class Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;
.super Ljava/lang/Object;
.source "ShovelerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverOnClickListener"
.end annotation


# instance fields
.field private final index:I

.field final synthetic this$0:Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;I)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput p2, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;->index:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 214
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->access$500(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    iget v0, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;->index:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    .line 216
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v1, 0x1

    const-string v2, "DidAnything"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 217
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "ClickedRecommendation"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClickedRecommendation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;

    invoke-static {v3}, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->access$600(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".%d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 220
    iget-object v0, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->access$700(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ShovelerWidget"

    invoke-static {v2, v0, v1}, Lcom/amazon/ea/metrics/PurchaseAttributor;->trackPotentialPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 222
    invoke-static {v0}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->access$800(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "MetricsTag"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget v1, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Index"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "AnyActionsShovelerWidget"

    const-string v3, "SeeInStore"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 229
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->access$900(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;

    invoke-static {v4}, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->access$1000(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v4

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v3, v2}, Lcom/amazon/ea/util/StoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
