.class public Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public addListener(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_addListener__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V

    return-void
.end method

.method public addListener(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_addListener__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;)V

    return-void
.end method

.method public applyIndex(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_applyIndex(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)Z

    move-result p1

    return p1
.end method

.method public applySettings(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_applySettings(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z

    move-result p1

    return p1
.end method

.method public createFootnoteViewer(J)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 3

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_createFootnoteViewer(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public createZoomableViewer(J)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 3

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_createZoomableViewer(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_IDocumentViewer(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->delete()V

    return-void
.end method

.method public getCurrentPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_getCurrentPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;-><init>(JZ)V

    return-object v0
.end method

.method public getCurrentPageConst()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_getCurrentPageConst(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;-><init>(JZ)V

    return-object v0
.end method

.method public getCurrentPageNumber()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_getCurrentPageNumber(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)I

    move-result v0

    return v0
.end method

.method public getDocumentIndex()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_getDocumentIndex(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J

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

.method public getJavascriptInterpreter()Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptInterpreter;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_getJavascriptInterpreter(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptInterpreter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptInterpreter;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getKindleDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_getKindleDocument(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;-><init>(JZ)V

    return-object v0
.end method

.method public getNextPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_getNextPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getNumberOfPages()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_getNumberOfPages(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)I

    move-result v0

    return v0
.end method

.method public getPreviousPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_getPreviousPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getSettings()Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_getSettings(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;-><init>(JZ)V

    return-object v0
.end method

.method public getSettingsLimitations()Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_getSettingsLimitations(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;-><init>(JZ)V

    return-object v0
.end method

.method public getSpeechBreakers()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_getSpeechBreakers(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;-><init>(JZ)V

    return-object v0
.end method

.method public gotoCoverPage()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_gotoCoverPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z

    move-result v0

    return v0
.end method

.method public gotoFirstPage()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_gotoFirstPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z

    move-result v0

    return v0
.end method

.method public gotoFootnote(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_gotoFootnote(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;J)Z

    move-result p1

    return p1
.end method

.method public gotoLocation(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_gotoLocation(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;J)Z

    move-result p1

    return p1
.end method

.method public gotoPage(Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_gotoPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;)Z

    move-result p1

    return p1
.end method

.method public gotoPageContaining(Lcom/amazon/kindle/krf/KRF/Reader/Position;Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;)Z
    .locals 9

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_gotoPageContaining(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;)Z

    move-result p1

    return p1
.end method

.method public gotoPageNumber(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_gotoPageNumber(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;I)Z

    move-result p1

    return p1
.end method

.method public gotoPageStartingWith(Lcom/amazon/kindle/krf/KRF/Reader/Position;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_gotoPageStartingWith(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/Position;)Z

    move-result p1

    return p1
.end method

.method public gotoStartReadingPage()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_gotoStartReadingPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z

    move-result v0

    return v0
.end method

.method public gotoTocPage()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_gotoTocPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z

    move-result v0

    return v0
.end method

.method public hasCoverPage()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_hasCoverPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z

    move-result v0

    return v0
.end method

.method public hasDocumentIndex()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_hasDocumentIndex(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z

    move-result v0

    return v0
.end method

.method public hasNextPage()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_hasNextPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z

    move-result v0

    return v0
.end method

.method public hasPreviousPage()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_hasPreviousPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z

    move-result v0

    return v0
.end method

.method public hasTocPage()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_hasTocPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z

    move-result v0

    return v0
.end method

.method public isNextPageReady()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_isNextPageReady(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z

    move-result v0

    return v0
.end method

.method public isPreviousPageReady()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_isPreviousPageReady(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z

    move-result v0

    return v0
.end method

.method public lookupBackward(J)Lcom/amazon/kindle/krf/PairPositionPageType;
    .locals 3

    new-instance v0, Lcom/amazon/kindle/krf/PairPositionPageType;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_lookupBackward(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;J)J

    move-result-wide p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/PairPositionPageType;-><init>(JZ)V

    return-object v0
.end method

.method public lookupForward(J)Lcom/amazon/kindle/krf/PairPositionPageType;
    .locals 3

    new-instance v0, Lcom/amazon/kindle/krf/PairPositionPageType;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_lookupForward(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;J)J

    move-result-wide p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/PairPositionPageType;-><init>(JZ)V

    return-object v0
.end method

.method public nextPage()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_nextPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z

    move-result v0

    return v0
.end method

.method public previousPage()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_previousPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_removeListener__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V

    return-void
.end method

.method public removeListener(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_removeListener__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;)V

    return-void
.end method

.method public skipPages(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentViewer_skipPages(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;I)V

    return-void
.end method
