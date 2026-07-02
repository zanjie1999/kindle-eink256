.class public Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;
.super Ljava/lang/Object;
.source "Payload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/fastmetrics/jni/Payload;
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

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean p3, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->swigCMemOwn:Z

    .line 59
    iput-wide p1, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 84
    invoke-static {p1, p2, p3}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->new_Payload_Builder(Ljava/lang/String;J)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;-><init>(JZ)V

    return-void
.end method


# virtual methods
.method public addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;
    .locals 3

    .line 100
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->Payload_Builder_addBoolean(JLcom/amazon/kindle/fastmetrics/jni/Payload$Builder;Ljava/lang/String;Z)J

    move-result-wide p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public addDouble(Ljava/lang/String;D)Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;
    .locals 7

    .line 96
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->swigCPtr:J

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->Payload_Builder_addDouble(JLcom/amazon/kindle/fastmetrics/jni/Payload$Builder;Ljava/lang/String;D)J

    move-result-wide p1

    const/4 p3, 0x0

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;
    .locals 3

    .line 88
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->Payload_Builder_addInteger(JLcom/amazon/kindle/fastmetrics/jni/Payload$Builder;Ljava/lang/String;I)J

    move-result-wide p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;
    .locals 7

    .line 92
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->swigCPtr:J

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->Payload_Builder_addLong(JLcom/amazon/kindle/fastmetrics/jni/Payload$Builder;Ljava/lang/String;J)J

    move-result-wide p1

    const/4 p3, 0x0

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;
    .locals 3

    .line 104
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->Payload_Builder_addString(JLcom/amazon/kindle/fastmetrics/jni/Payload$Builder;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public build()Lcom/amazon/kindle/fastmetrics/jni/Payload;
    .locals 5

    .line 108
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->Payload_Builder_build(JLcom/amazon/kindle/fastmetrics/jni/Payload$Builder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v2, Lcom/amazon/kindle/fastmetrics/jni/Payload;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/fastmetrics/jni/Payload;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 74
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 75
    iget-boolean v0, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->swigCMemOwn:Z

    .line 77
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->delete_Payload_Builder(J)V

    .line 79
    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
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

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
