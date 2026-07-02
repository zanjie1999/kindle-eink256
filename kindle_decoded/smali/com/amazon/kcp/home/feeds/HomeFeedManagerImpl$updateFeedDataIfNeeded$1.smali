.class final Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$updateFeedDataIfNeeded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HomeFeedManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->updateFeedDataIfNeeded()V
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

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$updateFeedDataIfNeeded$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$updateFeedDataIfNeeded$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    const-string/jumbo v0, "updateFeedDataIfNeeded"

    const/4 v1, 0x1

    .line 229
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 230
    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$updateFeedDataIfNeeded$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getDatabase$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/home/database/HomeDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/home/database/HomeDatabase;->readFeed()Lcom/amazon/kcp/home/models/HomeFeed;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {v1}, Lcom/amazon/kcp/home/models/HomeFeed;->isExpired()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$updateFeedDataIfNeeded$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v3}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getSettings$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getForceFeedRefresh()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kcp/home/models/HomeFeed;->getTimestamp()J

    move-result-wide v3

    iget-object v5, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$updateFeedDataIfNeeded$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v5}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getCurrentFeed$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/home/models/HomeFeed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/home/models/HomeFeed;->getTimestamp()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    .line 236
    iget-object v3, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$updateFeedDataIfNeeded$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v3, v1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$setCurrentFeed$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;Lcom/amazon/kcp/home/models/HomeFeed;)V

    .line 238
    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$updateFeedDataIfNeeded$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getCounterResetTime$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$updateFeedDataIfNeeded$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getCurrentFeed$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/home/models/HomeFeed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/home/models/HomeFeed;->getExpiryTime()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$setCounterResetTime$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;J)V

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$updateFeedDataIfNeeded$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getMessageQueue$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    new-instance v3, Lcom/amazon/kcp/home/events/HomeFeedEvent;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/home/events/HomeFeedEvent;-><init>(I)V

    invoke-interface {v1, v3}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    goto :goto_1

    .line 233
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$updateFeedDataIfNeeded$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcom/amazon/kcp/home/feeds/HomeFeedManager$DefaultImpls;->makeHomeFeedRequest$default(Lcom/amazon/kcp/home/feeds/HomeFeedManager;ZLcom/amazon/kcp/home/feeds/FeedResponseHandler;ILjava/lang/Object;)V

    .line 244
    :cond_3
    :goto_1
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method
