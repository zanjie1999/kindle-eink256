.class public Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;
.super Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement$EShiftDirection;
    }
.end annotation


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ITablePageElement_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;-><init>(JZ)V

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_ITablePageElement(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->delete()V
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;->delete()V

    return-void
.end method

.method public getDisplayableHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ITablePageElement_getDisplayableHeight(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I

    move-result v0

    return v0
.end method

.method public getDisplayableWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ITablePageElement_getDisplayableWidth(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I

    move-result v0

    return v0
.end method

.method public getHorizontalShift()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ITablePageElement_getHorizontalShift(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I

    move-result v0

    return v0
.end method

.method public getHorizontalShiftMax()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ITablePageElement_getHorizontalShiftMax(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I

    move-result v0

    return v0
.end method

.method public getHorizontalShiftMin()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ITablePageElement_getHorizontalShiftMin(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I

    move-result v0

    return v0
.end method

.method public getVerticalShift()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ITablePageElement_getVerticalShift(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I

    move-result v0

    return v0
.end method

.method public getVerticalShiftMax()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ITablePageElement_getVerticalShiftMax(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I

    move-result v0

    return v0
.end method

.method public getVerticalShiftMin()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ITablePageElement_getVerticalShiftMin(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I

    move-result v0

    return v0
.end method

.method public shiftTable(II)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ITablePageElement_shiftTable(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;II)V

    return-void
.end method
