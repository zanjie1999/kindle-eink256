.class public Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static getKPageTypeCover()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_kPageTypeCover_get()I

    move-result v0

    return v0
.end method

.method public static getKPageTypeFixedLayoutDoublePageSpread()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_kPageTypeFixedLayoutDoublePageSpread_get()I

    move-result v0

    return v0
.end method

.method public static getKPageTypeFixedLayoutDoublePageSpreadFirst()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_kPageTypeFixedLayoutDoublePageSpreadFirst_get()I

    move-result v0

    return v0
.end method

.method public static getKPageTypeFixedLayoutDoublePageSpreadSecond()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_kPageTypeFixedLayoutDoublePageSpreadSecond_get()I

    move-result v0

    return v0
.end method

.method public static getKPageTypeFixedLayoutFacingPageFirst()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_kPageTypeFixedLayoutFacingPageFirst_get()I

    move-result v0

    return v0
.end method

.method public static getKPageTypeFixedLayoutFacingPageSecond()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_kPageTypeFixedLayoutFacingPageSecond_get()I

    move-result v0

    return v0
.end method

.method public static getKPageTypeFixedLayoutFacingPages()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_kPageTypeFixedLayoutFacingPages_get()I

    move-result v0

    return v0
.end method

.method public static getKPageTypeFixedLayoutFacingPagesBlankPageAligned()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_kPageTypeFixedLayoutFacingPagesBlankPageAligned_get()I

    move-result v0

    return v0
.end method

.method public static getKPageTypeFixedLayoutFacingPagesBlankPageAny()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_kPageTypeFixedLayoutFacingPagesBlankPageAny_get()I

    move-result v0

    return v0
.end method

.method public static getKPageTypeFixedLayoutFacingPagesOrDoublePageSpread()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_kPageTypeFixedLayoutFacingPagesOrDoublePageSpread_get()I

    move-result v0

    return v0
.end method

.method public static getKPageTypeFixedLayoutFirstPage()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_kPageTypeFixedLayoutFirstPage_get()I

    move-result v0

    return v0
.end method

.method public static getKPageTypeFixedLayoutSecondPage()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_kPageTypeFixedLayoutSecondPage_get()I

    move-result v0

    return v0
.end method

.method public static getKPageTypeFixedLayoutSingle()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_kPageTypeFixedLayoutSingle_get()I

    move-result v0

    return v0
.end method

.method public static getKPageTypeReflowable()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_kPageTypeReflowable_get()I

    move-result v0

    return v0
.end method

.method public static getKPageTypeUnknown()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_kPageTypeUnknown_get()I

    move-result v0

    return v0
.end method


# virtual methods
.method public checkContentClipped()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_checkContentClipped(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)Z

    move-result v0

    return v0
.end method

.method public createCoveringRectangles(Lcom/amazon/kindle/krf/KRF/Reader/Position;Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;
    .locals 9

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_createCoveringRectangles(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public createPageSnapshotInfo()Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_createPageSnapshotInfo(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_IDocumentPage(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->delete()V

    return-void
.end method

.method public getDecorativeRectangles()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getDecorativeRectangles(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;-><init>(JZ)V

    return-object v0
.end method

.method public getElementAtPoint(II)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;
    .locals 3

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getElementAtPoint__SWIG_2(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;II)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getElementAtPoint(III)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getElementAtPoint__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;III)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public getElementAtPoint(IIIZ)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;
    .locals 7

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getElementAtPoint__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;IIIZ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public getElementAtPointConst(II)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;
    .locals 3

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getElementAtPointConst__SWIG_2(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;II)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getElementAtPointConst(III)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getElementAtPointConst__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;III)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public getElementAtPointConst(IIIZ)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;
    .locals 7

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getElementAtPointConst__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;IIIZ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public getElementClosestToPoint(II)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;
    .locals 3

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getElementClosestToPoint__SWIG_2(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;II)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getElementClosestToPoint(III)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getElementClosestToPoint__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;III)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public getElementClosestToPoint(IIIZ)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;
    .locals 7

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getElementClosestToPoint__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;IIIZ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public getElementClosestToPointConst(II)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;
    .locals 3

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getElementClosestToPointConst__SWIG_2(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;II)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getElementClosestToPointConst(III)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getElementClosestToPointConst__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;III)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public getElementClosestToPointConst(IIIZ)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;
    .locals 7

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getElementClosestToPointConst__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;IIIZ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public getElements()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementAlterableArray;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementAlterableArray;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getElements(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementAlterableArray;-><init>(JZ)V

    return-object v0
.end method

.method public getElementsConst()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementArray;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementArray;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getElementsConst(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementArray;-><init>(JZ)V

    return-object v0
.end method

.method public getFirstPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getFirstPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    return-object v0
.end method

.method public getLastPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getLastPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    return-object v0
.end method

.method public getLinks()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLinkArray;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLinkArray;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getLinks(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLinkArray;-><init>(JZ)V

    return-object v0
.end method

.method public getPageElementID()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getPageElementID(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPageHeight()D
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getPageHeight(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPageType()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getPageType(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)I

    move-result v0

    return v0
.end method

.method public getPageWidth()D
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getPageWidth(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getText(Lcom/amazon/kindle/krf/KRF/Reader/Position;Lcom/amazon/kindle/krf/KRF/Reader/Position;I)Ljava/lang/String;
    .locals 10

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_getText(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/Position;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasScalableGraphics()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_hasScalableGraphics(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)Z

    move-result v0

    return v0
.end method

.method public heightRequiredToRenderToPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_heightRequiredToRenderToPosition(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result p1

    return p1
.end method

.method public isFirstPageOfChapter()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_isFirstPageOfChapter(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)Z

    move-result v0

    return v0
.end method

.method public render(Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_render__SWIG_4(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;)Z

    move-result p1

    return p1
.end method

.method public render(Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;I)Z
    .locals 7

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_render__SWIG_3(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;I)Z

    move-result p1

    return p1
.end method

.method public render(Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;ID)Z
    .locals 9

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-static/range {v0 .. v8}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_render__SWIG_2(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;ID)Z

    move-result p1

    return p1
.end method

.method public render(Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;IDD)Z
    .locals 12

    move-object v11, p0

    iget-wide v0, v11, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-static/range {v0 .. v10}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_render__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;IDD)Z

    move-result v0

    return v0
.end method

.method public render(Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;IDDD)Z
    .locals 14

    move-object v13, p0

    iget-wide v0, v13, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move/from16 v6, p2

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    invoke-static/range {v0 .. v12}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_render__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;IDDD)Z

    move-result v0

    return v0
.end method

.method public render(Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;IIII)Z
    .locals 10

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-static/range {v0 .. v9}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_render__SWIG_8(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;IIII)Z

    move-result p1

    return p1
.end method

.method public render(Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;IIIID)Z
    .locals 13

    move-object v12, p0

    iget-wide v0, v12, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-static/range {v0 .. v11}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_render__SWIG_7(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;IIIID)Z

    move-result v0

    return v0
.end method

.method public render(Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;IIIIDD)Z
    .locals 15

    move-object v14, p0

    iget-wide v0, v14, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static/range {p1 .. p1}, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;)J

    move-result-wide v3

    move-object v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-static/range {v0 .. v13}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_render__SWIG_6(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;IIIIDD)Z

    move-result v0

    return v0
.end method

.method public render(Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;IIIIDDD)Z
    .locals 16

    move-object/from16 v14, p0

    iget-wide v0, v14, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static/range {p1 .. p1}, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;)J

    move-result-wide v3

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    invoke-static/range {v0 .. v15}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_render__SWIG_5(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;IIIIDDD)Z

    move-result v0

    return v0
.end method

.method public writeToCache(Z)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPage_writeToCache(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;Z)Z

    move-result p1

    return p1
.end method
