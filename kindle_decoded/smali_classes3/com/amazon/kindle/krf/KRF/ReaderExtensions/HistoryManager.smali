.class public Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;
.super Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;-><init>(JZ)V

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)V
    .locals 2

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KRF_ReaderExtensions_HistoryManager(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public addHistoryEntry()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_addHistoryEntry(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V

    return-void
.end method

.method public back()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_back(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)Z

    move-result v0

    return v0
.end method

.method public countBackwardEntries()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_countBackwardEntries(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method public countForwardEntries()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_countForwardEntries(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_ReaderExtensions_HistoryManager(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public emptyHistory()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_emptyHistory(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V

    return-void
.end method

.method public enable(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_enable(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;Z)V

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->delete()V

    return-void
.end method

.method public forward()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_forward(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)Z

    move-result v0

    return v0
.end method

.method public getHistoryEntryAt(J)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryEntry;
    .locals 3

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_getHistoryEntryAt(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryEntry;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public hasBackward()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_hasBackward(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)Z

    move-result v0

    return v0
.end method

.method public hasForward()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_hasForward(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_isEnabled(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)Z

    move-result v0

    return v0
.end method

.method public postGotoPage()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_postGotoPage(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V

    return-void
.end method

.method public postNextPage()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_postNextPage(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V

    return-void
.end method

.method public postPreviousPage()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_postPreviousPage(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V

    return-void
.end method

.method public preGotoPage()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_preGotoPage(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V

    return-void
.end method

.method public preNextPage()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_preNextPage(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V

    return-void
.end method

.method public prePreviousPage()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_prePreviousPage(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V

    return-void
.end method

.method public restoreHistoryEntry(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_restoreHistoryEntry(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;J)Z

    move-result p1

    return p1
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderExtensions_HistoryManager_size(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)J

    move-result-wide v0

    return-wide v0
.end method
