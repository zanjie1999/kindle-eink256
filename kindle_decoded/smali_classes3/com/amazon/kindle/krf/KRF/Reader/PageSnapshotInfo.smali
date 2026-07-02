.class public Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;
.super Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_PageSnapshotInfo_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;-><init>(JZ)V

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/Position;Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)V
    .locals 6

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KRF_Reader_PageSnapshotInfo(JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_PageSnapshotInfo(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;->delete()V
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;->delete()V

    return-void
.end method

.method public getBuffer()Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_PageSnapshotInfo_getBuffer(JLcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getStartPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_PageSnapshotInfo_getStartPositionId(JLcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    return-object v0
.end method

.method public setBuffer(Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_PageSnapshotInfo_setBuffer(JLcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;JLcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)V

    return-void
.end method

.method public setStartPositionId(Lcom/amazon/kindle/krf/KRF/Reader/Position;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_PageSnapshotInfo_setStartPositionId(JLcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;JLcom/amazon/kindle/krf/KRF/Reader/Position;)V

    return-void
.end method
