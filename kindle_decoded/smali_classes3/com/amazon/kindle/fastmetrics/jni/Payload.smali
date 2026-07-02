.class public Lcom/amazon/kindle/fastmetrics/jni/Payload;
.super Ljava/lang/Object;
.source "Payload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;
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
    iput-boolean p3, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/amazon/kindle/fastmetrics/jni/Payload;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 21
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 32
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 33
    iget-boolean v0, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload;->swigCMemOwn:Z

    .line 35
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->delete_Payload(J)V

    .line 37
    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/amazon/kindle/fastmetrics/jni/Payload;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
