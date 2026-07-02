.class public final Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;
.super Ljava/lang/Object;
.source "ReaderFastNavigationView.kt"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$OnFastNavigationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBreadcrumbViewClicked(I)V
    .locals 8

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBeginningPosition()I

    move-result v2

    int-to-double v2, v2

    .line 140
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v1

    int-to-double v4, v1

    int-to-double v6, p1

    sub-double/2addr v6, v2

    sub-double/2addr v4, v2

    div-double/2addr v6, v4

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 141
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 142
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v3}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getReaderLayout$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 143
    :goto_0
    sget-object v4, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->BREADCRUMB_PRESS:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object v5, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->PRE_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    .line 142
    invoke-static {v0, v3, v4, v5}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V

    .line 146
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->suppressNextWaypoint()V

    .line 147
    invoke-interface {v0, v1, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPercent(D)V

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$updateChapterInfo(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;I)V

    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getListeners$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$OnFastNavigationChangeListener;

    .line 77
    invoke-interface {v1, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p3

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    .line 84
    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->setWaypointsUpdateEnabled(Z)V

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    .line 86
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    .line 87
    instance-of v2, p1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    if-nez v2, :cond_2

    const/4 p1, 0x0

    :cond_2
    check-cast p1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->getMinProgress()I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    sub-float v2, v0, p1

    sub-float/2addr v1, p1

    div-float/2addr v2, v1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 90
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v1, p1

    .line 91
    invoke-interface {p3, v1, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPercent(D)V

    .line 92
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    float-to-int p3, v0

    invoke-static {p1, p3}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$updateChapterInfo(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;I)V

    .line 94
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getPageIndicatorController$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->updatePageIndicator(I)V

    :cond_5
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getListeners$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$OnFastNavigationChangeListener;

    .line 99
    invoke-interface {v1, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->startDragging()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getListeners$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$OnFastNavigationChangeListener;

    .line 107
    invoke-interface {v1, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getDocViewer$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->suppressNextWaypoint()V

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getDocViewer$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->setWaypointsUpdateEnabled(Z)V

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->stopDraggingWithDelay()V

    return-void
.end method

.method public onThumbClick(Landroid/widget/SeekBar;)V
    .locals 2

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getListeners$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$OnFastNavigationChangeListener;

    .line 118
    invoke-interface {v1, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar$OnFastNavigationSeekBarChangeListener;->onThumbClick(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->areOverlaysVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getTAG$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToLocation(I)V

    .line 130
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getReaderLayout$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    :cond_3
    return-void
.end method
