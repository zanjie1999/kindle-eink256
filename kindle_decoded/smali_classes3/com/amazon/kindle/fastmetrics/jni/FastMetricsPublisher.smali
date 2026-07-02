.class public Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;
.super Ljava/lang/Object;
.source "FastMetricsPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;
    }
.end annotation


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->swigCPtr:J

    return-void
.end method


# virtual methods
.method public EmitRecord(Lcom/amazon/kindle/fastmetrics/jni/Payload;)V
    .locals 6

    .line 47
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/fastmetrics/jni/Payload;->getCPtr(Lcom/amazon/kindle/fastmetrics/jni/Payload;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->FastMetricsPublisher_EmitRecord(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;JLcom/amazon/kindle/fastmetrics/jni/Payload;)V

    return-void
.end method

.method public EndAppSession()V
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->FastMetricsPublisher_EndAppSession(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;)V

    return-void
.end method

.method public EndReadingSession()V
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->FastMetricsPublisher_EndReadingSession(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;)V

    return-void
.end method

.method public GetPayload()Ljava/lang/String;
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->FastMetricsPublisher_GetPayload(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public StartAppSession(Lcom/amazon/kindle/fastmetrics/jni/AppSession;)V
    .locals 6

    .line 51
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/fastmetrics/jni/AppSession;->getCPtr(Lcom/amazon/kindle/fastmetrics/jni/AppSession;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->FastMetricsPublisher_StartAppSession(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;JLcom/amazon/kindle/fastmetrics/jni/AppSession;)V

    return-void
.end method

.method public StartReadingSession(Lcom/amazon/kindle/fastmetrics/jni/ReadingSession;)V
    .locals 6

    .line 59
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession;->getCPtr(Lcom/amazon/kindle/fastmetrics/jni/ReadingSession;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->FastMetricsPublisher_StartReadingSession(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;JLcom/amazon/kindle/fastmetrics/jni/ReadingSession;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 32
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 33
    iget-boolean v0, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->swigCMemOwn:Z

    .line 35
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->delete_FastMetricsPublisher(J)V

    .line 37
    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
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

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
