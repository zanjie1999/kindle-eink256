.class public Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;
.super Ljava/lang/Object;
.source "AppSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/fastmetrics/jni/AppSession;
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

    .line 160
    invoke-static {}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->new_AppSession_Builder()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean p3, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCMemOwn:Z

    .line 91
    iput-wide p1, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCPtr:J

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/kindle/fastmetrics/jni/AppSession;
    .locals 4

    .line 156
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/AppSession;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->AppSession_Builder_build(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/fastmetrics/jni/AppSession;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 107
    iget-boolean v0, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCMemOwn:Z

    .line 109
    iget-wide v0, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->delete_AppSession_Builder(J)V

    .line 111
    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;
    .locals 3

    .line 116
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->AppSession_Builder_setAppVersion(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setCountryOfResidence(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;
    .locals 3

    .line 120
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->AppSession_Builder_setCountryOfResidence(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setCustomerId(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;
    .locals 3

    .line 124
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->AppSession_Builder_setCustomerId(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setDeviceFamily(Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;
    .locals 3

    .line 128
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCPtr:J

    invoke-virtual {p1}, Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;->swigValue()I

    move-result p1

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->AppSession_Builder_setDeviceFamily(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;I)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setDeviceModel(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;
    .locals 3

    .line 132
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->AppSession_Builder_setDeviceModel(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setDeviceSerialNumber(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;
    .locals 3

    .line 136
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->AppSession_Builder_setDeviceSerialNumber(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setDeviceType(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;
    .locals 3

    .line 140
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->AppSession_Builder_setDeviceType(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setOsVersion(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;
    .locals 3

    .line 144
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->AppSession_Builder_setOsVersion(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setPreferredMarketplaceId(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;
    .locals 3

    .line 148
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->AppSession_Builder_setPreferredMarketplaceId(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;-><init>(JZ)V

    return-object v0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;
    .locals 3

    .line 152
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    iget-wide v1, p0, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;->AppSession_Builder_setTimeZone(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;-><init>(JZ)V

    return-object v0
.end method
