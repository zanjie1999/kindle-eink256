.class public Lcom/amazon/identity/auth/device/ml;
.super Lcom/amazon/identity/auth/device/ms;
.source "DCP"


# instance fields
.field private final uW:Lcom/amazon/client/metrics/MetricEvent;

.field private uY:Ljava/lang/String;

.field private uZ:J

.field private va:J

.field private vb:Z


# direct methods
.method constructor <init>(Lcom/amazon/client/metrics/MetricEvent;Ljava/lang/String;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ms;-><init>()V

    const-wide/16 v0, -0x1

    .line 22
    iput-wide v0, p0, Lcom/amazon/identity/auth/device/ml;->uZ:J

    .line 23
    iput-wide v0, p0, Lcom/amazon/identity/auth/device/ml;->va:J

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/ml;->vb:Z

    .line 28
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ml;->uW:Lcom/amazon/client/metrics/MetricEvent;

    .line 29
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ml;->uY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public eN(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ml;->uY:Ljava/lang/String;

    return-void
.end method

.method public iM()V
    .locals 1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/ml;->vb:Z

    return-void
.end method

.method public iN()V
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ml;->stop()V

    .line 83
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ml;->iM()V

    return-void
.end method

.method public iO()V
    .locals 2

    .line 95
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/identity/auth/device/ml;->va:J

    return-void
.end method

.method public start()V
    .locals 2

    .line 35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/identity/auth/device/ml;->uZ:J

    return-void
.end method

.method public stop()V
    .locals 7

    .line 41
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ml;->uY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "FireOSPlatformDCPMetricsTimer"

    if-eqz v0, :cond_0

    .line 43
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    .line 47
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/ml;->vb:Z

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Timer already discarded : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ml;->uY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_1
    iget-wide v2, p0, Lcom/amazon/identity/auth/device/ml;->uZ:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Timer not started : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ml;->uY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    .line 60
    :cond_2
    iget-wide v0, p0, Lcom/amazon/identity/auth/device/ml;->va:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    goto :goto_0

    .line 66
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/identity/auth/device/ml;->uZ:J

    :goto_0
    sub-long/2addr v0, v2

    const-wide/16 v2, -0x1

    .line 68
    iput-wide v2, p0, Lcom/amazon/identity/auth/device/ml;->uZ:J

    .line 69
    iput-wide v2, p0, Lcom/amazon/identity/auth/device/ml;->va:J

    .line 70
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ml;->uW:Lcom/amazon/client/metrics/MetricEvent;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ml;->uY:Ljava/lang/String;

    long-to-double v0, v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v4

    invoke-interface {v2, v3, v0, v1}, Lcom/amazon/client/metrics/MetricEvent;->addTimer(Ljava/lang/String;D)V

    return-void
.end method
