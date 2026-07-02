.class public Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;
.super Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;-><init>(JZ)V

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)V
    .locals 2

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KRF_ReaderExtensions_ActiveAreaManager__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)V
    .locals 2

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KRF_ReaderExtensions_ActiveAreaManager__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public createActiveAreasAt(II)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;
    .locals 3

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_createActiveAreasAt__SWIG_1(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;II)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public createActiveAreasAt(IIJ)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;
    .locals 7

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_createActiveAreasAt__SWIG_0(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;IIJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    const/4 p4, 0x1

    invoke-direct {p3, p1, p2, p4}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_ReaderExtensions_ActiveAreaManager(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->delete()V
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->delete()V

    return-void
.end method

.method public getActiveAreas()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_getActiveAreas(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;-><init>(JZ)V

    return-object v0
.end method

.method public getCurrentPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_getCurrentPage(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)J

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

.method public getFootnoteDefaultCallBack()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_getFootnoteDefaultCallBack(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getInternalLinkDefaultCallback()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_getInternalLinkDefaultCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getJavascriptLinkDefaultCallback()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_getJavascriptLinkDefaultCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getTableShiftActiveAreaSize()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_getTableShiftActiveAreaSize(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)I

    move-result v0

    return v0
.end method

.method public getTableShiftDefaultCallback()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_getTableShiftDefaultCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getTableShiftSize()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_getTableShiftSize(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)I

    move-result v0

    return v0
.end method

.method public getTogglableDefaultCallback()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_getTogglableDefaultCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public hasViewer()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_hasViewer(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)Z

    move-result v0

    return v0
.end method

.method public onPageChanged()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_onPageChanged(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)V

    return-void
.end method

.method public setAudioCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setAudioCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V

    return-void
.end method

.method public setBuyLinkArgCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setBuyLinkArgCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V

    return-void
.end method

.method public setBuyLinkCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setBuyLinkCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ICallback;)V

    return-void
.end method

.method public setExternalLinkCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setExternalLinkCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V

    return-void
.end method

.method public setFootnoteCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setFootnoteCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;)V

    return-void
.end method

.method public setInternalLinkCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setInternalLinkCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;)V

    return-void
.end method

.method public setJavascriptLinkCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setJavascriptLinkCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V

    return-void
.end method

.method public setShowBookDetailLinkArgCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setShowBookDetailLinkArgCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V

    return-void
.end method

.method public setShowBookDetailLinkCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setShowBookDetailLinkCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ICallback;)V

    return-void
.end method

.method public setTableShiftActiveAreaSize(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setTableShiftActiveAreaSize(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;I)Z

    move-result p1

    return p1
.end method

.method public setTableShiftCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setTableShiftCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;)V

    return-void
.end method

.method public setTableShiftSize(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setTableShiftSize(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;I)Z

    move-result p1

    return p1
.end method

.method public setTogglableCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setTogglableCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;)V

    return-void
.end method

.method public setTooltipCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setTooltipCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V

    return-void
.end method

.method public setVideoCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setVideoCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V

    return-void
.end method

.method public setViewer(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setViewer(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)V

    return-void
.end method

.method public setZoomableCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_ActiveAreaManager_setZoomableCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;)V

    return-void
.end method
