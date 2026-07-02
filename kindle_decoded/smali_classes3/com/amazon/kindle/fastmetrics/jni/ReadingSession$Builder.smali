.class public Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;
.super Ljava/lang/Object;
.source "ReadingSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/fastmetrics/jni/ReadingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 164
    invoke-static {}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->new_ReadingSession_Builder()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean p3, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCMemOwn:Z

    .line 91
    iput-wide p1, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCPtr:J

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/kindle/fastmetrics/jni/ReadingSession;
    .locals 4

    .line 160
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->ReadingSession_Builder_build(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 107
    iget-boolean v0, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCMemOwn:Z

    .line 109
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->delete_ReadingSession_Builder(J)V

    .line 111
    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
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

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAsin(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;
    .locals 3

    .line 116
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->ReadingSession_Builder_setAsin(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;
    .locals 3

    .line 120
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->ReadingSession_Builder_setAssetId(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;
    .locals 3

    .line 124
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->ReadingSession_Builder_setContentType(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setEmbeddedId(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;
    .locals 3

    .line 128
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->ReadingSession_Builder_setEmbeddedId(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setEndReadingLocation(J)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;
    .locals 3

    .line 148
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->ReadingSession_Builder_setEndReadingLocation(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;J)J

    move-result-wide p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setFormat(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;
    .locals 3

    .line 132
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->ReadingSession_Builder_setFormat(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setMaxPosition(J)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;
    .locals 3

    .line 152
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->ReadingSession_Builder_setMaxPosition(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;J)J

    move-result-wide p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;
    .locals 3

    .line 136
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->ReadingSession_Builder_setMimeType(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setRevisionId(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;
    .locals 3

    .line 140
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->ReadingSession_Builder_setRevisionId(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setStartReadingLocation(J)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;
    .locals 3

    .line 144
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->ReadingSession_Builder_setStartReadingLocation(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;J)J

    move-result-wide p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;-><init>(JZ)V

    return-object v0
.end method
