.class public Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager;
.super Lcom/amazon/kindle/krx/reader/ttr/BaseTimeToReadManager;
.source "TimeToReadManager.java"


# instance fields
.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/ttr/BaseTimeToReadManager;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method


# virtual methods
.method public getTimeToRead(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/ttr/ITimeToReadResult;
    .locals 4

    .line 17
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    .line 18
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    .line 19
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 21
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTimeRemainingToPosition(I)J

    move-result-wide v2

    .line 29
    :cond_0
    new-instance v1, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;

    invoke-direct {v1, v0, p1, v2, v3}, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;-><init>(IIJ)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method
