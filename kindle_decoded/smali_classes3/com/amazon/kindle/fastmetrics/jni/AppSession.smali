.class public Lcom/amazon/kindle/fastmetrics/jni/AppSession;
.super Lcom/amazon/kindle/fastmetrics/jni/Session;
.source "AppSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;
    }
.end annotation


# instance fields
.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2

    .line 15
    invoke-static {p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->AppSession_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/amazon/kindle/fastmetrics/jni/Session;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/amazon/kindle/fastmetrics/jni/AppSession;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 20
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 31
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/amazon/kindle/fastmetrics/jni/Session;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/amazon/kindle/fastmetrics/jni/Session;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->delete_AppSession(J)V

    .line 36
    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession;->swigCPtr:J

    .line 38
    :cond_1
    invoke-super {p0}, Lcom/amazon/kindle/fastmetrics/jni/Session;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/fastmetrics/jni/AppSession;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
