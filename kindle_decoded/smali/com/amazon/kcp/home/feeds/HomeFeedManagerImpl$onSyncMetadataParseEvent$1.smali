.class public final Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onSyncMetadataParseEvent$1;
.super Ljava/lang/Object;
.source "HomeFeedManager.kt"

# interfaces
.implements Lcom/amazon/kcp/home/feeds/FeedResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->onSyncMetadataParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/kcp/home/models/voltron/SidekickResponse;)V
    .locals 2

    .line 401
    sget-object p1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v0, Lcom/amazon/kcp/application/PerfMarker;->FTUE_HOME_FEED_REQUEST_START:Lcom/amazon/kcp/application/PerfMarker;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_HOME_FEED_REQUEST_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->stopTimer(Lcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V

    .line 402
    sget-object p1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v0, Lcom/amazon/kcp/application/PerfMarker;->FTUE_HOME_FEED_REQUEST_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportTimeSinceRegistration(Lcom/amazon/kcp/application/PerfMarker;)V

    return-void
.end method
