.class public Lcom/amazon/kindle/readingprogress/waypoints/WaypointsControllerThumbnailScrubber;
.super Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;
.source "WaypointsControllerThumbnailScrubber.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;-><init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-void
.end method


# virtual methods
.method protected getWaypointPositionForKRFPosition(I)I
    .locals 2

    .line 18
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    return p1
.end method
