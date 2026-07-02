.class final Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onHomeFeedResponseReceived$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HomeFeedManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->onHomeFeedResponseReceived(Lcom/amazon/kcp/home/events/HomeFeedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onHomeFeedResponseReceived$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onHomeFeedResponseReceived$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 356
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onHomeFeedResponseReceived$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getCurrentRequest$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->getResponse()Lcom/amazon/kcp/home/database/HomeFeedData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onHomeFeedResponseReceived$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getDatabase$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/home/database/HomeDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/home/database/HomeDatabase;->readAsins()Ljava/util/Set;

    move-result-object v1

    .line 360
    iget-object v2, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onHomeFeedResponseReceived$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v2}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getDatabase$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/home/database/HomeDatabase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/home/database/HomeDatabase;->write(Lcom/amazon/kcp/home/database/HomeFeedData;)V

    .line 363
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onHomeFeedResponseReceived$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getDatabase$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/home/database/HomeDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/database/HomeDatabase;->readAsins()Ljava/util/Set;

    move-result-object v0

    .line 364
    iget-object v2, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onHomeFeedResponseReceived$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v2}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getCoverImageService$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onHomeFeedResponseReceived$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v1, v0}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v1

    const-string v4, "Sets.difference(oldAsins, newAsins)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$bookIdStringsFromAsins(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amazon/kindle/cover/ICoverImageService;->deleteCovers(Ljava/util/Collection;)V

    .line 367
    invoke-static {v0}, Lcom/amazon/kcp/library/HomeUtils;->filterOwnedAsins(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onHomeFeedResponseReceived$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getMetricsManager$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "com.amazon.kcp.home.feeds.HomeFeedManager"

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    .line 369
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const-string v3, "OwnedAsinCount"

    invoke-virtual {v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 370
    iget-object v2, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onHomeFeedResponseReceived$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v2}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getMetricsManager$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 371
    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onHomeFeedResponseReceived$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getDatabase$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/home/database/HomeDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/home/database/HomeDatabase;->removeContentForAsins(Ljava/util/Collection;)Z

    .line 374
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onHomeFeedResponseReceived$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$loadFromDatabaseAndNotify(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)V

    :cond_0
    return-void
.end method
