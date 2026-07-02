.class public Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public assign(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;
    .locals 7

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentIndex_assign(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;-><init>(JZ)V

    return-object v0
.end method

.method public copy()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentIndex_copy(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_IDocumentIndex(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->delete()V

    return-void
.end method

.method public getLastLoadedPosition()Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentIndex_getLastLoadedPosition(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    return-object v0
.end method

.method public getPageCount()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentIndex_getPageCount(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)I

    move-result v0

    return v0
.end method

.method public getPageFromPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentIndex_getPageFromPosition(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;JLcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result p1

    return p1
.end method

.method public getPositionFromPage(ILcom/amazon/kindle/krf/KRF/Reader/Position;)Z
    .locals 7

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    invoke-static {p2}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentIndex_getPositionFromPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;IJLcom/amazon/kindle/krf/KRF/Reader/Position;)Z

    move-result p1

    return p1
.end method

.method public getSettings()Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentIndex_getSettings(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;-><init>(JZ)V

    return-object v0
.end method

.method public isCompleteIndex()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentIndex_isCompleteIndex(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)Z

    move-result v0

    return v0
.end method

.method public mergeSettings(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentIndex_mergeSettings(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z

    move-result p1

    return p1
.end method

.method public serialize(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentIndex_serialize(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public valueEquals(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentIndex_valueEquals(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)Z

    move-result p1

    return p1
.end method

.method public valueNotEquals(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentIndex_valueNotEquals(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)Z

    move-result p1

    return p1
.end method
