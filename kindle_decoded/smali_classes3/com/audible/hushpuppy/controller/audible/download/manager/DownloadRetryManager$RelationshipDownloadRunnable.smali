.class Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;
.super Ljava/lang/Object;
.source "DownloadRetryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RelationshipDownloadRunnable"
.end annotation


# instance fields
.field private delay:J

.field private final maxDurationToRetry:J

.field private final relationshipDownloadInfo:Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;

.field final synthetic this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;JJLcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-wide p2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->delay:J

    .line 169
    iput-wide p4, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->maxDurationToRetry:J

    .line 170
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->relationshipDownloadInfo:Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 176
    iget-wide v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->delay:J

    iget-wide v2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->maxDurationToRetry:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    .line 177
    invoke-static {}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    iget-wide v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->maxDurationToRetry:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Max time %d reached for checking. Ending now"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->access$100(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->relationshipDownloadInfo:Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedMaxTimeReached:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->access$200(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;)V

    .line 180
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->access$300(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;)Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->relationshipDownloadInfo:Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;->titleIsInLibrary(Lcom/audible/mobile/domain/Asin;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedMaxTimeReachedAsinInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->access$200(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedMaxTimeReachedAsinNotInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->access$200(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->access$400(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;)Lcom/audible/hushpuppy/common/misc/ICallback;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->relationshipDownloadInfo:Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/misc/ICallback;->execute(Ljava/lang/Object;)V

    return-void

    .line 189
    :cond_1
    invoke-static {}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Runnable invoked, checking if title is added in Library"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->access$300(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;)Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->relationshipDownloadInfo:Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;->titleIsInLibrary(Lcom/audible/mobile/domain/Asin;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    invoke-static {}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Title found in the library, exit and notify callback to trigger download"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->access$100(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->relationshipDownloadInfo:Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedRetryManagerAsinInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->access$200(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;)V

    .line 194
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->access$400(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;)Lcom/audible/hushpuppy/common/misc/ICallback;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->relationshipDownloadInfo:Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/misc/ICallback;->execute(Ljava/lang/Object;)V

    return-void

    .line 198
    :cond_2
    iget-wide v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->delay:J

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->delay:J

    .line 199
    invoke-static {}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    iget-wide v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->delay:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Will check back in %s delay in MS"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->access$500(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;->delay:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
