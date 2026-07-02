.class public final Lcom/amazon/kindle/nln/ReaderFastNavigationController$readerLayoutEventListener$1;
.super Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;
.source "ReaderFastNavigationController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/ReaderFastNavigationController;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderFastNavigationController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderFastNavigationController.kt\ncom/amazon/kindle/nln/ReaderFastNavigationController$readerLayoutEventListener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,309:1\n1#2:310\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$readerLayoutEventListener$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverlayVisibilityChanged(Z)V
    .locals 7

    if-nez p1, :cond_8

    .line 50
    iget-object p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$readerLayoutEventListener$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-static {p1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->access$getFastNavigationView$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_8

    .line 54
    iget-object v1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$readerLayoutEventListener$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-static {v1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->access$getStartPositionRange$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)Lcom/amazon/android/docviewer/IntPositionRange;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/IntPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    const-string v3, "positionRange.start"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 58
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/IntPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    const-string v3, "positionRange.end"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 59
    iget-object v3, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$readerLayoutEventListener$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-static {v3, v0}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->access$setStartPositionRange$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;Lcom/amazon/android/docviewer/IntPositionRange;)V

    goto :goto_2

    .line 62
    :cond_1
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 63
    :goto_1
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    .line 65
    :goto_2
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v3

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    .line 67
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p1, v4, v5}, Lcom/amazon/kcp/debug/FastNavigationUtils;->isPlaceholderRange(Lcom/amazon/android/docviewer/KindleDocViewer;II)Z

    move-result v4

    if-nez v4, :cond_8

    .line 69
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getWaypointInRange(II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v2

    .line 75
    :goto_3
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v5, v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_5
    iget-object v5, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$readerLayoutEventListener$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-static {v5}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->access$getReaderLayout$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v6, v0, v5}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->addWaypoint(ILjava/lang/String;Landroid/content/Context;)V

    .line 78
    :cond_6
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 79
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->isMostRecentPageReadWaypointInRange(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 80
    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->addMostRecentPageReadWaypointAcceptedMetric()V

    .line 81
    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->clearMostRecentPageReadWaypoint()V

    .line 85
    :cond_7
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->updateLastPageRead(I)V

    .line 86
    iget-object p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$readerLayoutEventListener$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-static {p1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->access$getTAG$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Update waypoint and LPR to position: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_8
    return-void
.end method
