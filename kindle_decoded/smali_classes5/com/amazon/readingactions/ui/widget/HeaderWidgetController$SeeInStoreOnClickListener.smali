.class final Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$SeeInStoreOnClickListener;
.super Ljava/lang/Object;
.source "HeaderWidgetController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SeeInStoreOnClickListener"
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;Ljava/lang/String;Lcom/amazon/kindle/krx/events/IMessageQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ")V"
        }
    .end annotation

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageQueue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$SeeInStoreOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$SeeInStoreOnClickListener;->asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$SeeInStoreOnClickListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$SeeInStoreOnClickListener;->asin:Ljava/lang/String;

    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$SeeInStoreOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$SeeInStoreOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    move-result-object v3

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnyActionsHeaderWidget"

    .line 160
    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/ea/util/StoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$SeeInStoreOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/startactions/metrics/BookDetailActions;->CLICK_SEE_IN_STORE:Lcom/amazon/startactions/metrics/BookDetailActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 163
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$SeeInStoreOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;->access$getReadingStreamsMetadataWithMetricsTag(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 164
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "SeeInStore"

    invoke-interface {v0, v3, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$SeeInStoreOnClickListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/readingactions/bottomsheet/events/ExpandEvent;

    invoke-direct {v0}, Lcom/amazon/readingactions/bottomsheet/events/ExpandEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
