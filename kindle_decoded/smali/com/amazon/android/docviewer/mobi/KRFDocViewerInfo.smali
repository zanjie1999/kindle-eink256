.class Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;
.super Ljava/lang/Object;
.source "KRFDocViewerInfo.java"


# instance fields
.field public hasCoverPage:Z

.field hasNavigated:Z

.field public hasTOC:Z

.field public isNextPageAvailable:Z

.field public isPrevPageAvailable:Z

.field isUpdating:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->isUpdating:Z

    .line 17
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->isPrevPageAvailable:Z

    .line 18
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->isNextPageAvailable:Z

    .line 19
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->hasTOC:Z

    .line 20
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->hasCoverPage:Z

    .line 21
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->hasNavigated:Z

    return-void
.end method


# virtual methods
.method public initialize(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->hasTocPage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->hasTOC:Z

    .line 26
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->hasCoverPage()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->hasCoverPage:Z

    return-void
.end method

.method public update(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)V
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->isUpdating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->isUpdating:Z

    .line 34
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->hasNavigated:Z

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->hasPreviousPage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->isPrevPageAvailable:Z

    .line 37
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->hasNextPage()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->isNextPageAvailable:Z

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->isUpdating:Z

    return-void
.end method
