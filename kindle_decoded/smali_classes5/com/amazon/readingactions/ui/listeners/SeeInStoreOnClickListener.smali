.class public final Lcom/amazon/readingactions/ui/listeners/SeeInStoreOnClickListener;
.super Ljava/lang/Object;
.source "SeeInStoreOnClickListener.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final asin:Ljava/lang/String;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final metricsTag:Ljava/lang/String;

.field private final refTag:Lcom/amazon/ea/reftag/RefTag;

.field private final rsMetadataWithMetricsTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/reftag/RefTag;Ljava/util/HashMap;Lcom/amazon/kindle/krx/events/IMessageQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/ea/reftag/RefTag;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ")V"
        }
    .end annotation

    const-string v0, "metricsTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "refTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rsMetadataWithMetricsTag"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageQueue"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/listeners/SeeInStoreOnClickListener;->metricsTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/listeners/SeeInStoreOnClickListener;->asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/readingactions/ui/listeners/SeeInStoreOnClickListener;->refTag:Lcom/amazon/ea/reftag/RefTag;

    iput-object p4, p0, Lcom/amazon/readingactions/ui/listeners/SeeInStoreOnClickListener;->rsMetadataWithMetricsTag:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/amazon/readingactions/ui/listeners/SeeInStoreOnClickListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/amazon/readingactions/ui/listeners/SeeInStoreOnClickListener;->asin:Ljava/lang/String;

    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/listeners/SeeInStoreOnClickListener;->refTag:Lcom/amazon/ea/reftag/RefTag;

    const-string v2, "AnyActionsHeaderWidget"

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/ea/util/StoreManager;->loadStorePage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Lcom/amazon/ea/reftag/RefTag;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/amazon/readingactions/ui/listeners/SeeInStoreOnClickListener;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/startactions/metrics/BookDetailActions;->CLICK_SEE_IN_STORE:Lcom/amazon/startactions/metrics/BookDetailActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 33
    iget-object p1, p0, Lcom/amazon/readingactions/ui/listeners/SeeInStoreOnClickListener;->rsMetadataWithMetricsTag:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 34
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "SeeInStore"

    invoke-interface {v0, v2, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/listeners/SeeInStoreOnClickListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/readingactions/bottomsheet/events/ExpandEvent;

    invoke-direct {v0}, Lcom/amazon/readingactions/bottomsheet/events/ExpandEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
