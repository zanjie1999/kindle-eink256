.class public Lcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;
.super Lcom/amazon/kindle/krf/KRF/Reader/IIndexerEvent;


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IndexerProgressEvent_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/amazon/kindle/krf/KRF/Reader/IIndexerEvent;-><init>(JZ)V

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/Position;Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V
    .locals 7

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KRF_Reader_IndexerProgressEvent(JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/Position;I)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IIndexerEvent;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IIndexerEvent;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_IndexerProgressEvent(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IIndexerEvent;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;->delete()V

    return-void
.end method

.method public getCurrent()Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IndexerProgressEvent_getCurrent(JLcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    return-object v0
.end method

.method public getLast()Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IndexerProgressEvent_getLast(JLcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    return-object v0
.end method

.method public getPageNumber()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IndexerProgressEvent_getPageNumber(JLcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IndexerProgressEvent_getType(JLcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;)I

    move-result v0

    return v0
.end method
