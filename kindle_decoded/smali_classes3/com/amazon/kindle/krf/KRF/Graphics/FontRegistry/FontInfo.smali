.class public Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KRF_Graphics_FontRegistry_FontInfo()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Graphics_FontRegistry_FontInfo(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;->delete()V

    return-void
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_FontRegistry_FontInfo_getFamilyName(JLcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_FontRegistry_FontInfo_getFilePath(JLcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFamilyName(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_FontRegistry_FontInfo_setFamilyName(JLcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;Ljava/lang/String;)V

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_FontRegistry_FontInfo_setFilePath(JLcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;Ljava/lang/String;)V

    return-void
.end method
