.class public Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;
.super Ljava/lang/Object;
.source "ReplicaBehaviorMetricsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetricsTrackingUserBehavior"
.end annotation


# instance fields
.field private mSessionDuration:J

.field private m_LandscapeScreenViews:I

.field private m_LastPageReached:Z

.field private m_PortraitScreenViews:I

.field final synthetic this$0:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;


# direct methods
.method public constructor <init>(Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;)V
    .locals 2

    .line 238
    iput-object p1, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->this$0:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 240
    iput p1, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->m_PortraitScreenViews:I

    .line 241
    iput p1, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->m_LandscapeScreenViews:I

    .line 242
    iput-boolean p1, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->m_LastPageReached:Z

    const-wide/16 v0, 0x0

    .line 243
    iput-wide v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->mSessionDuration:J

    return-void
.end method


# virtual methods
.method public getLandscapeViews()J
    .locals 2

    .line 258
    iget v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->m_LandscapeScreenViews:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPortraitViews()J
    .locals 2

    .line 254
    iget v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->m_PortraitScreenViews:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSessionDuration()J
    .locals 2

    .line 278
    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->mSessionDuration:J

    return-wide v0
.end method

.method public hasLandscapeViews()Z
    .locals 1

    .line 250
    iget v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->m_LandscapeScreenViews:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPortraitViews()Z
    .locals 1

    .line 246
    iget v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->m_PortraitScreenViews:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSessionsDuration()Z
    .locals 5

    .line 274
    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->mSessionDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public increment()V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->this$0:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    invoke-static {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->access$000(Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->this$0:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    invoke-static {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->access$000(Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 289
    iget v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->m_LandscapeScreenViews:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->m_LandscapeScreenViews:I

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 291
    iget v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->m_PortraitScreenViews:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->m_PortraitScreenViews:I

    :cond_1
    :goto_0
    return-void
.end method

.method public isLastPageReached()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->m_LastPageReached:Z

    return v0
.end method

.method public setLastPageReached(Z)V
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->m_LastPageReached:Z

    return-void
.end method

.method public setSessionDuration(J)V
    .locals 0

    .line 270
    iput-wide p1, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->mSessionDuration:J

    return-void
.end method
