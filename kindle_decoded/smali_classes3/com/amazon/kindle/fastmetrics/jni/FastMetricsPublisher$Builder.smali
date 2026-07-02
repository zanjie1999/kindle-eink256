.class public Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;
.super Ljava/lang/Object;
.source "FastMetricsPublisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean p3, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->swigCMemOwn:Z

    .line 92
    iput-wide p1, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;)V
    .locals 2

    .line 117
    invoke-virtual {p1}, Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;->swigValue()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->new_FastMetricsPublisher_Builder(I)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;-><init>(JZ)V

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;
    .locals 5

    .line 145
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->FastMetricsPublisher_Builder_build(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_0
    new-instance v2, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 108
    iget-boolean v0, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->swigCMemOwn:Z

    .line 110
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->delete_FastMetricsPublisher_Builder(J)V

    .line 112
    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setDiskCacheSize(J)Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;
    .locals 3

    .line 129
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->FastMetricsPublisher_Builder_setDiskCacheSize(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;J)J

    move-result-wide p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setFlushPeriod(J)Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;
    .locals 3

    .line 137
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->FastMetricsPublisher_Builder_setFlushPeriod(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;J)J

    move-result-wide p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setIsDebug(Z)Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;
    .locals 3

    .line 121
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->FastMetricsPublisher_Builder_setIsDebug(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;Z)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setMaximumFlushSize(J)Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;
    .locals 3

    .line 141
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->FastMetricsPublisher_Builder_setMaximumFlushSize(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;J)J

    move-result-wide p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;-><init>(JZ)V

    return-object v0
.end method
