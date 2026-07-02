.class public Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ReplicaViewGestureDetector.java"

# interfaces
.implements Lcom/amazon/kindle/pagecurl/BackgroundViewListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# static fields
.field private static final CURL_FINISHED_DELAY:I = 0xc8

.field private static final CURL_HIDE_DELAY:I = 0x64

.field private static final CURL_START_DELAY:I = 0x258

.field private static MINIMUM_ZOOM_IN:F = 1.05f

.field private static final TIME_BEFORE_LASTFIRSTPAGE_HIDE:I = 0x32

.field private static ZOOM_OUT_TO_GRID_VIEW:F = 0.7f


# instance fields
.field private curlIsHidden:Ljava/lang/Boolean;

.field private final curlIsHiddenLock:Ljava/lang/Object;

.field private curlView:Lcom/amazon/kindle/pagecurl/CurlView;

.field private hasOnGoingCurls:Z

.field lastCurlEndTime:J

.field lastCurlStartTime:J

.field private mActivity:Landroid/app/Activity;

.field private mCanOpenGridView:Z

.field private final mCurlRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

.field private mGridViewController:Lcom/amazon/nwstd/gridview/GridViewController;

.field private mIsAnimationInProgress:Z

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScaledTouchSlop:I

.field private final mViewPagerRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

.field private m_activePointerCount:S

.field private m_deltaScrollX:F

.field private m_downDoubleTapEventX:F

.field private m_downDoubleTapEventY:F

.field private m_gestureDetector:Landroid/view/GestureDetector;

.field private m_ignoreNextMove:Z

.field private m_inPinch:Z

.field private m_isFirstAdjustDelta:Z

.field private m_isFirstPan:Z

.field private m_isPanning:Z

.field private m_touchX:F

.field private m_touchY:F

.field private m_zoom:F

.field private nbCurlsInProgress:Ljava/lang/Integer;

.field private final nbCurlsInProgressLock:Ljava/lang/Object;

.field private replicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

.field protected viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

.field private zoomNotSupportedDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;Lcom/amazon/nwstd/gridview/GridViewController;)V
    .locals 4

    .line 111
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x1

    .line 66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlIsHidden:Ljava/lang/Boolean;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlIsHiddenLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 70
    iput-short v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_activePointerCount:S

    const/4 v1, 0x0

    .line 78
    iput-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->replicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    .line 80
    iput-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->zoomNotSupportedDialog:Landroid/app/AlertDialog;

    .line 84
    iput-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->hasOnGoingCurls:Z

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgress:Ljava/lang/Integer;

    .line 87
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgressLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 88
    iput-wide v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->lastCurlStartTime:J

    .line 89
    iput-wide v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->lastCurlEndTime:J

    .line 99
    new-instance v2, Lcom/amazon/nwstd/utils/RunnableHandler;

    invoke-direct {v2}, Lcom/amazon/nwstd/utils/RunnableHandler;-><init>()V

    iput-object v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mCurlRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    .line 104
    new-instance v2, Lcom/amazon/nwstd/utils/RunnableHandler;

    invoke-direct {v2}, Lcom/amazon/nwstd/utils/RunnableHandler;-><init>()V

    iput-object v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mViewPagerRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    .line 112
    iput-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    .line 113
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_gestureDetector:Landroid/view/GestureDetector;

    .line 114
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 115
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 116
    iput-object p2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mGridViewController:Lcom/amazon/nwstd/gridview/GridViewController;

    .line 117
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mScaledTouchSlop:I

    .line 118
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->zoomNotSupportedDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)Ljava/lang/Integer;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgress:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->hasOnGoingCurls:Z

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)Landroid/app/Activity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->hideCurl()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)Lcom/amazon/kindle/pagecurl/CurlView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    return-object p0
.end method

.method private animatePage(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 753
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->isZoomed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 755
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p1}, Lcom/amazon/kindle/pagecurl/CurlView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 757
    iget-boolean p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mIsAnimationInProgress:Z

    if-nez p1, :cond_0

    .line 759
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v3

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->startPageCurl(IFFF)V

    .line 761
    :cond_0
    iput-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mIsAnimationInProgress:Z

    .line 763
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p2

    invoke-virtual {p1, v1, v2, v3, p2}, Lcom/amazon/kindle/pagecurl/CurlView;->updateFakeDrag(IFFF)V

    goto :goto_0

    .line 768
    :cond_1
    iput-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mIsAnimationInProgress:Z

    .line 769
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->onMove(Landroid/view/MotionEvent;)Z

    :cond_2
    :goto_0
    return v0
.end method

.method private canAnimatePage()Z
    .locals 1

    .line 776
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_inPinch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->isZoomed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_ignoreNextMove:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private endPageCurl(IFFF)V
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/kindle/pagecurl/CurlView;->endFakeDrag(IFFF)V

    return-void
.end method

.method private getCurrentPage()Lcom/amazon/nwstd/replica/IReplicaPage;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    if-nez v0, :cond_0

    return-object v1

    .line 172
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private hideCurl()V
    .locals 4

    .line 1019
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mCurlRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    new-instance v1, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$7;

    invoke-direct {v1, p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$7;-><init>(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/nwstd/utils/RunnableHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private isMultitouchInProgress(Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1086
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private moveToPageAndHideCurl(I)V
    .locals 5

    .line 918
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgress:Ljava/lang/Integer;

    monitor-enter v0

    .line 919
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->hasOnGoingCurls:Z

    if-nez v1, :cond_0

    .line 921
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mViewPagerRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    new-instance v2, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;

    invoke-direct {v2, p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;-><init>(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;I)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/nwstd/utils/RunnableHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 959
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private moveToPageWithoutHideCurl(I)V
    .locals 5

    .line 964
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgress:Ljava/lang/Integer;

    monitor-enter v0

    .line 968
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgress:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 970
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mViewPagerRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    new-instance v2, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$6;

    invoke-direct {v2, p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$6;-><init>(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;I)V

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/nwstd/utils/RunnableHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 992
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private processInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 348
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->getCurrentPage()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;

    move-result-object v0

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto/16 :goto_1

    .line 375
    :cond_0
    iput-short v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_activePointerCount:S

    .line 376
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->replicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    if-eqz v0, :cond_1

    .line 377
    invoke-virtual {v0}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->removeMagnification()V

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->isCurlHidden()Z

    move-result v0

    if-nez v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->endFakeDrag(IFFF)V

    goto :goto_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->onCancel(Landroid/view/MotionEvent;)Z

    .line 384
    :goto_0
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->resetInternalCurlState()V

    goto :goto_1

    .line 353
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_touchX:F

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_touchY:F

    const/4 p1, 0x0

    .line 355
    iput p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_deltaScrollX:F

    const/4 p1, 0x1

    .line 356
    iput-boolean p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_isFirstPan:Z

    .line 357
    iput-boolean p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_isFirstAdjustDelta:Z

    .line 358
    iput-boolean v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_inPinch:Z

    .line 359
    iput-boolean v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_ignoreNextMove:Z

    .line 360
    iput-boolean v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mIsAnimationInProgress:Z

    .line 361
    iput-boolean v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_isPanning:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 362
    iput v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_zoom:F

    .line 365
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->isZoomed()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 366
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IZoomablePage;->stopScrollingAnimation()V

    .line 369
    :cond_4
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 370
    iget-short v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_activePointerCount:S

    if-nez v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    const-string p1, "We shouldn\'t have any active pointer here!"

    invoke-static {v2, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 179
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->getCurrentPage()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 183
    :cond_0
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;

    move-result-object v2

    .line 184
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getBookmarkablePage()Lcom/amazon/nwstd/replica/IBookmarkablePage;

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_15

    if-eq v0, v4, :cond_14

    const/4 v5, 0x2

    if-eq v0, v5, :cond_a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x5

    const-string v3, "The number of active pointer cannot be negative !"

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    goto/16 :goto_6

    .line 234
    :cond_1
    iget-short v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_activePointerCount:S

    sub-int/2addr v0, v4

    int-to-short v0, v0

    iput-short v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_activePointerCount:S

    .line 236
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    iget-short v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_activePointerCount:S

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, v3}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 239
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->isCurlHidden()Z

    move-result v0

    if-nez v0, :cond_19

    .line 240
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->endFakeDrag(IFFF)V

    return v4

    .line 215
    :cond_4
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 216
    iget-short v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_activePointerCount:S

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0, v3}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 218
    :cond_6
    iget-short v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_activePointerCount:S

    add-int/2addr v0, v4

    int-to-short v0, v0

    iput-short v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_activePointerCount:S

    .line 220
    invoke-virtual {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->isCurlHidden()Z

    move-result v0

    if-nez v0, :cond_19

    .line 221
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->beginFakeDrag(IFFF)Z

    return v4

    .line 252
    :cond_7
    iput-short v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_activePointerCount:S

    .line 253
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->replicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    if-eqz v0, :cond_8

    .line 255
    invoke-virtual {v0}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->removeMagnification()V

    .line 257
    :cond_8
    invoke-virtual {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->isCurlHidden()Z

    move-result v0

    if-nez v0, :cond_9

    .line 258
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    invoke-virtual {v0, v2, v3, v4, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->endFakeDrag(IFFF)V

    goto :goto_2

    .line 260
    :cond_9
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->onCancel(Landroid/view/MotionEvent;)Z

    .line 262
    :goto_2
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->resetInternalCurlState()V

    goto/16 :goto_6

    .line 269
    :cond_a
    invoke-virtual {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->isCurlHidden()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->isMultitouchInProgress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 270
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 272
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/amazon/kindle/pagecurl/CurlView;->updateFakeDrag(IFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    return v4

    .line 277
    :cond_c
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->isMultitouchInProgress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 281
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->replicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->isMagnifierVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 282
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->replicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->moveMagnifier(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 286
    :cond_d
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_inPinch:Z

    if-nez v0, :cond_19

    if-eqz v2, :cond_19

    invoke-interface {v2}, Lcom/amazon/nwstd/replica/IZoomablePage;->isZoomed()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 288
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_ignoreNextMove:Z

    if-eqz v0, :cond_e

    return v4

    .line 293
    :cond_e
    iget v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_touchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v0, v5

    .line 294
    iget v5, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_touchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    .line 296
    iget-boolean v6, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_isPanning:Z

    if-nez v6, :cond_f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mScaledTouchSlop:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mScaledTouchSlop:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_f

    return v1

    .line 301
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_touchX:F

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_touchY:F

    .line 303
    iput-boolean v4, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_isPanning:Z

    .line 306
    iget-object v6, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getOverlayController()Lcom/amazon/android/docviewer/IOverlayController;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/amazon/android/docviewer/IOverlayController;->hideOverlaysIfNeeded(Z)V

    .line 317
    iget-boolean v4, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mIsAnimationInProgress:Z

    if-nez v4, :cond_12

    iget-boolean v4, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_isFirstPan:Z

    if-eqz v4, :cond_11

    iget v4, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_10

    .line 318
    invoke-interface {v2}, Lcom/amazon/nwstd/replica/IZoomablePage;->isRightCornerInZoom()Z

    move-result v4

    if-nez v4, :cond_12

    :cond_10
    iget v4, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mScaledTouchSlop:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_11

    .line 319
    invoke-interface {v2}, Lcom/amazon/nwstd/replica/IZoomablePage;->isLeftCornerInZoom()Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_4

    :cond_11
    return v1

    .line 321
    :cond_12
    :goto_4
    iget v4, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_deltaScrollX:F

    add-float/2addr v0, v4

    .line 322
    iput v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_deltaScrollX:F

    .line 324
    invoke-interface {v2, v3, v5}, Lcom/amazon/nwstd/replica/IZoomablePage;->pan(FF)Z

    .line 328
    iget v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_deltaScrollX:F

    mul-float v4, v4, v0

    cmpg-float v0, v4, v3

    if-gez v0, :cond_13

    .line 329
    iput v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_deltaScrollX:F

    .line 330
    iput-boolean v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mIsAnimationInProgress:Z

    .line 331
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->onCancel(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 333
    :cond_13
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->slidePage(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 228
    :cond_14
    iput-short v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_activePointerCount:S

    .line 229
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->onUp(Landroid/view/MotionEvent;)V

    goto :goto_6

    .line 189
    :cond_15
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->getAsin()Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-static {v0, v5, v4}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_touchX:F

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_touchY:F

    .line 193
    iput v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_deltaScrollX:F

    .line 194
    iput-boolean v4, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_isFirstPan:Z

    .line 195
    iput-boolean v4, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_isFirstAdjustDelta:Z

    .line 196
    iput-boolean v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_inPinch:Z

    .line 197
    iput-boolean v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_ignoreNextMove:Z

    .line 198
    iput-boolean v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mIsAnimationInProgress:Z

    .line 199
    iput-boolean v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_isPanning:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 200
    iput p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_zoom:F

    .line 203
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->isZoomed()Z

    move-result p1

    if-eqz p1, :cond_16

    if-eqz v2, :cond_16

    .line 204
    invoke-interface {v2}, Lcom/amazon/nwstd/replica/IZoomablePage;->stopScrollingAnimation()V

    .line 207
    :cond_16
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 208
    iget-short p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_activePointerCount:S

    if-nez p1, :cond_17

    const/4 p1, 0x1

    goto :goto_5

    :cond_17
    const/4 p1, 0x0

    :goto_5
    const-string v0, "We shouldn\'t have any active pointer here!"

    invoke-static {p1, v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 210
    :cond_18
    iget-short p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_activePointerCount:S

    add-int/2addr p1, v4

    int-to-short p1, p1

    iput-short p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_activePointerCount:S

    :cond_19
    :goto_6
    return v1
.end method

.method private resetInternalCurlState()V
    .locals 3

    .line 1069
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1070
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgress:Ljava/lang/Integer;

    .line 1071
    iput-boolean v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->hasOnGoingCurls:Z

    .line 1072
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1073
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlIsHiddenLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    .line 1074
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlIsHidden:Ljava/lang/Boolean;

    .line 1075
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 1072
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private slidePage(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 786
    iput-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mIsAnimationInProgress:Z

    .line 787
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->onMove(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private startFakeCurl(Landroid/view/MotionEvent;)V
    .locals 5

    .line 791
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 794
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->startPageCurl(IFFF)V

    .line 795
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->endPageCurl(IFFF)V

    :cond_0
    return-void
.end method

.method private startPageCurl(IFFF)V
    .locals 2

    .line 996
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->getCurrentIndex()I

    move-result v0

    .line 999
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/amazon/kindle/pagecurl/CurlView;->beginFakeDrag(IFFF)Z

    move-result p1

    if-eqz p1, :cond_0

    if-lez v0, :cond_0

    .line 1005
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getPageCount()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    if-ge v0, p1, :cond_0

    .line 1006
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgress:Ljava/lang/Integer;

    monitor-enter p1

    .line 1007
    :try_start_0
    iput-boolean p2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->hasOnGoingCurls:Z

    .line 1008
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public adjustDelta(I)V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_isFirstAdjustDelta:Z

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 160
    iput p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_deltaScrollX:F

    :cond_0
    const/4 p1, 0x0

    .line 162
    iput-boolean p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_isFirstAdjustDelta:Z

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mViewPagerRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    invoke-virtual {v0}, Lcom/amazon/nwstd/utils/RunnableHandler;->removeCallbacks()V

    const/4 v0, 0x0

    .line 811
    iput-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    .line 812
    iput-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public isCurlHidden()Z
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlIsHiddenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1048
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlIsHidden:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1049
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPointerActive()Z
    .locals 1

    .line 1060
    iget-short v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_activePointerCount:S

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected leftPageTurn(Landroid/view/MotionEvent;)V
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->isZoomed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->startFakeCurl(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 613
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method public onCurlEnded(ILcom/amazon/kindle/pagecurl/CurlStartPosition;Lcom/amazon/kindle/pagecurl/CurlTargetPosition;I)V
    .locals 1

    .line 892
    sget-object p2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->getAsin()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 895
    iget-object p2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgressLock:Ljava/lang/Object;

    monitor-enter p2

    .line 897
    :try_start_0
    iget-object p3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgress:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sub-int/2addr p3, p4

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgress:Ljava/lang/Integer;

    .line 898
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->lastCurlEndTime:J

    .line 900
    iget-object p3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgress:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_0

    .line 901
    iput-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->hasOnGoingCurls:Z

    .line 903
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->moveToPageAndHideCurl(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 903
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onCurlStarted(ILcom/amazon/kindle/pagecurl/CurlStartPosition;)V
    .locals 5

    .line 817
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlIsHiddenLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 818
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlIsHidden:Ljava/lang/Boolean;

    .line 819
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 821
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgressLock:Ljava/lang/Object;

    monitor-enter v1

    .line 823
    :try_start_1
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgress:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->nbCurlsInProgress:Ljava/lang/Integer;

    .line 824
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->lastCurlStartTime:J

    .line 827
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->hasOnGoingCurls:Z

    if-nez v0, :cond_0

    .line 828
    iput-boolean v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->hasOnGoingCurls:Z

    .line 830
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 832
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 833
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    const-wide/16 v3, 0x32

    if-ne p2, v0, :cond_1

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getPageCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 838
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mViewPagerRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    new-instance p2, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$3;

    invoke-direct {p2, p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$3;-><init>(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)V

    invoke-virtual {p1, p2, v3, v4}, Lcom/amazon/nwstd/utils/RunnableHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 846
    :cond_1
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne p2, v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getPageCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 849
    :cond_2
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne p2, v0, :cond_3

    if-ne p1, v2, :cond_3

    .line 854
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mViewPagerRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    new-instance p2, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$4;

    invoke-direct {p2, p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$4;-><init>(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)V

    invoke-virtual {p1, p2, v3, v4}, Lcom/amazon/nwstd/utils/RunnableHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 862
    :cond_3
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne p2, v0, :cond_4

    if-nez p1, :cond_4

    goto :goto_0

    .line 866
    :cond_4
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne p2, v0, :cond_5

    .line 867
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->moveToPageWithoutHideCurl(I)V

    goto :goto_0

    :cond_5
    add-int/2addr p1, v2

    .line 870
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->moveToPageWithoutHideCurl(I)V

    goto :goto_0

    .line 876
    :cond_6
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne p2, v0, :cond_7

    .line 877
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->moveToPageWithoutHideCurl(I)V

    goto :goto_0

    :cond_7
    add-int/lit8 p2, p1, 0x1

    .line 883
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getPageCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-eq p2, v0, :cond_8

    .line 884
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->moveToPageWithoutHideCurl(I)V

    :cond_8
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 830
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 819
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_downDoubleTapEventX:F

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_downDoubleTapEventY:F

    goto/16 :goto_1

    .line 458
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mIsAnimationInProgress:Z

    if-nez v0, :cond_6

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 465
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_6

    .line 466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_downDoubleTapEventX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_6

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_downDoubleTapEventY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_6

    .line 469
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->getCurrentPage()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    .line 470
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;

    move-result-object v3

    if-eqz v0, :cond_6

    .line 472
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->hasFinishedLoading()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 476
    :cond_1
    iget-object v4, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getOverlayController()Lcom/amazon/android/docviewer/IOverlayController;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/amazon/android/docviewer/IOverlayController;->hideOverlaysIfNeeded(Z)V

    .line 477
    invoke-virtual {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->isCurlHidden()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-interface {v0, v4, v5}, Lcom/amazon/nwstd/replica/IReplicaPage;->performDoubleTap(FF)Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v3, :cond_2

    return v1

    .line 481
    :cond_2
    invoke-static {}, Lcom/amazon/nwstd/utils/DeviceRequirements;->doesRamMeetRequirements()Z

    move-result v1

    const-string v4, "NewsstandReplicaView"

    if-eqz v1, :cond_4

    .line 482
    invoke-interface {v3}, Lcom/amazon/nwstd/replica/IZoomablePage;->isZoomed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 483
    invoke-interface {v3}, Lcom/amazon/nwstd/replica/IZoomablePage;->resetZoom()V

    goto :goto_0

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    .line 485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v3, v0, v1, p1}, Lcom/amazon/nwstd/replica/IZoomablePage;->zoom(FFF)V

    .line 486
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "Zoom"

    invoke-virtual {p1, v4, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_4
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/nwstd/utils/NewsstandAlertDialogUtils;->createZoomNotSupportedDialog(Landroid/view/View;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 491
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 492
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "DegradedModeZoomNA_DoubleTap"

    invoke-virtual {p1, v4, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->onDown(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 425
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->getCurrentPage()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    .line 427
    iget-boolean v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mIsAnimationInProgress:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->isZoomed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 429
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getOverlayController()Lcom/amazon/android/docviewer/IOverlayController;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/amazon/android/docviewer/IOverlayController;->hideOverlaysIfNeeded(Z)V

    .line 431
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;

    move-result-object p1

    float-to-int p2, p3

    float-to-int p3, p4

    invoke-interface {p1, p2, p3}, Lcom/amazon/nwstd/replica/IZoomablePage;->fling(II)V

    :cond_0
    return v2

    .line 436
    :cond_1
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->canAnimatePage()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_3

    .line 437
    iget-object p3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getOverlayController()Lcom/amazon/android/docviewer/IOverlayController;

    move-result-object p3

    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-nez v0, :cond_2

    const/4 p4, 0x1

    :cond_2
    invoke-interface {p3, p4}, Lcom/amazon/android/docviewer/IOverlayController;->hideOverlaysIfNeeded(Z)V

    .line 438
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->animatePage(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    .line 439
    invoke-virtual {p0, p2}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->onUp(Landroid/view/MotionEvent;)V

    return v2

    :cond_3
    return p4
.end method

.method public onHideLeftRightPageProcessed()V
    .locals 0

    .line 909
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->resetInternalCurlState()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 122
    invoke-direct {p0, p2}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->processInterceptTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 573
    invoke-virtual {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->isCurlHidden()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_inPinch:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_ignoreNextMove:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->isZoomed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->replicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    if-eqz v0, :cond_3

    .line 575
    invoke-static {}, Lcom/amazon/nwstd/utils/DeviceRequirements;->doesRamMeetRequirements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->getCurrentPage()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 582
    :cond_0
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->hasFinishedLoading()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 586
    :cond_1
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getOverlayController()Lcom/amazon/android/docviewer/IOverlayController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/IOverlayController;->hideOverlaysIfNeeded(Z)V

    .line 588
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getMagnifiablePage()Lcom/amazon/nwstd/replica/IMagnifiablePage;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->replicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->magnifyRegion(Landroid/view/MotionEvent;)V

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method public onOrientationChange()V
    .locals 0

    .line 1056
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->resetInternalCurlState()V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 635
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->getCurrentPage()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 640
    :cond_0
    invoke-static {}, Lcom/amazon/nwstd/utils/DeviceRequirements;->doesRamMeetRequirements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    iget v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_zoom:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float v0, v0, v2

    iput v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_zoom:F

    .line 644
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mCanOpenGridView:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_zoom:F

    sget v3, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->ZOOM_OUT_TO_GRID_VIEW:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mGridViewController:Lcom/amazon/nwstd/gridview/GridViewController;

    sget-object v3, Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;->PINCHIN:Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;

    invoke-virtual {v0, v3}, Lcom/amazon/nwstd/gridview/GridViewController;->openGridView(Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;)V

    .line 646
    iput-boolean v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mCanOpenGridView:Z

    .line 648
    iput-boolean v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mIsAnimationInProgress:Z

    const/4 v0, 0x0

    .line 651
    iput v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_zoom:F

    goto/16 :goto_0

    .line 655
    :cond_2
    iget v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_zoom:F

    sget v3, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->MINIMUM_ZOOM_IN:F

    cmpl-float v3, v0, v3

    if-gez v3, :cond_3

    iget-boolean v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mCanOpenGridView:Z

    if-nez v3, :cond_9

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_9

    .line 656
    :cond_3
    invoke-static {}, Lcom/amazon/nwstd/utils/DeviceRequirements;->doesRamMeetRequirements()Z

    move-result v0

    const-string v3, "NewsstandReplicaView"

    if-nez v0, :cond_7

    .line 657
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    const/high16 v0, 0x3fc00000    # 1.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 658
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->zoomNotSupportedDialog:Landroid/app/AlertDialog;

    if-nez p1, :cond_5

    .line 659
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->getCurrentPage()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/nwstd/replica/IReplicaPage;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/nwstd/utils/NewsstandAlertDialogUtils;->createZoomNotSupportedDialog(Landroid/view/View;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->zoomNotSupportedDialog:Landroid/app/AlertDialog;

    if-nez p1, :cond_4

    return v1

    .line 663
    :cond_4
    new-instance v0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$1;-><init>(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 669
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->zoomNotSupportedDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$2;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$2;-><init>(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 675
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "DegradedModeZoomNA_PinchIn"

    invoke-virtual {p1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_5
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->zoomNotSupportedDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_6
    return v1

    .line 683
    :cond_7
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mCanOpenGridView:Z

    if-eqz v0, :cond_8

    .line 684
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v4, "Zoom"

    invoke-virtual {v0, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :cond_8
    iput-boolean v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mCanOpenGridView:Z

    .line 687
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->getCurrentPage()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    .line 688
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 691
    iget v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_touchX:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_touchY:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-interface {v0, v1, v3}, Lcom/amazon/nwstd/replica/IZoomablePage;->pan(FF)Z

    .line 692
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-interface {v0, v1, v3, v4}, Lcom/amazon/nwstd/replica/IZoomablePage;->zoom(FFF)V

    .line 695
    :cond_9
    :goto_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_touchX:F

    .line 696
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iput p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_touchY:F

    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .line 705
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mIsAnimationInProgress:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->getCurrentPage()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 709
    :cond_0
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->getCurrentPage()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    .line 710
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;

    move-result-object v0

    .line 712
    invoke-static {}, Lcom/amazon/nwstd/utils/DeviceRequirements;->doesRamMeetRequirements()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 713
    iput-boolean v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_inPinch:Z

    .line 717
    iput-boolean v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_ignoreNextMove:Z

    .line 718
    iget-object v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getOverlayController()Lcom/amazon/android/docviewer/IOverlayController;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/amazon/android/docviewer/IOverlayController;->hideOverlaysIfNeeded(Z)V

    .line 721
    iget-object v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->replicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->isMagnifierVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 722
    iget-object v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->replicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    invoke-virtual {v2}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->removeMagnification()V

    :cond_1
    if-eqz v0, :cond_2

    .line 727
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IZoomablePage;->isZoomed()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->getCurrentPage()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/nwstd/replica/IReplicaPage;->hasFinishedLoading()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mCanOpenGridView:Z

    goto :goto_0

    .line 729
    :cond_4
    iput-boolean v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mCanOpenGridView:Z

    .line 734
    :goto_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    iput v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_touchX:F

    .line 735
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iput p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_touchY:F

    if-eqz v0, :cond_5

    .line 736
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IZoomablePage;->getZoom()F

    move-result p1

    goto :goto_1

    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    iput p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_zoom:F

    return v3

    :cond_6
    :goto_2
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    const/4 p1, 0x0

    .line 743
    iput-boolean p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_inPinch:Z

    .line 744
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->getCurrentPage()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object p1

    .line 745
    invoke-interface {p1}, Lcom/amazon/nwstd/replica/IReplicaPage;->getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 747
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IZoomablePage;->isZoomed()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IZoomablePage;->getZoom()F

    move-result p1

    sget v1, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->MINIMUM_ZOOM_IN:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    .line 748
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IZoomablePage;->resetZoom()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 395
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mIsAnimationInProgress:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->isMultitouchInProgress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->getCurrentPage()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    .line 401
    iget-object v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->isZoomed()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 p1, 0x0

    .line 402
    iput p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_deltaScrollX:F

    .line 403
    iget-boolean p2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_isFirstPan:Z

    if-eqz p2, :cond_1

    cmpl-float p1, p3, p1

    if-eqz p1, :cond_1

    .line 405
    iput-boolean v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_isFirstPan:Z

    .line 407
    :cond_1
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 408
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getOverlayController()Lcom/amazon/android/docviewer/IOverlayController;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/amazon/android/docviewer/IOverlayController;->hideOverlaysIfNeeded(Z)V

    .line 410
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/amazon/nwstd/replica/IZoomablePage;->pan(FF)Z

    goto :goto_0

    :cond_2
    const-string p1, "The replica view pager is zoomed however the current page doesn\'t support zoom."

    .line 412
    invoke-static {v1, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_3
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->canAnimatePage()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 415
    iget-object p3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getOverlayController()Lcom/amazon/android/docviewer/IOverlayController;

    move-result-object p3

    iget-object p4, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-nez p4, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-interface {p3, v1}, Lcom/amazon/android/docviewer/IOverlayController;->hideOverlaysIfNeeded(Z)V

    .line 416
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->animatePage(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 507
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_isPanning:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mIsAnimationInProgress:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_inPinch:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_ignoreNextMove:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->getCurrentPage()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    .line 512
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getBookmarkablePage()Lcom/amazon/nwstd/replica/IBookmarkablePage;

    move-result-object v2

    .line 513
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getView()Landroid/view/View;

    move-result-object v3

    .line 516
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/newsstand/core/R$dimen;->single_tap_margin_page_turn_priority:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 517
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/newsstand/core/R$dimen;->replica_bookmark_corner_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 518
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-interface {v0, v6, v3}, Lcom/amazon/nwstd/replica/IReplicaPage;->computeMargins(II)Landroid/graphics/RectF;

    move-result-object v3

    .line 520
    iget-object v6, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->isZoomed()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-nez v6, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 522
    :cond_2
    iget-object v6, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getCurrentItem()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpg-float v6, v6, v4

    if-gez v6, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v8, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v5

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    .line 523
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->leftPageTurn(Landroid/view/MotionEvent;)V

    .line 524
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getOverlayController()Lcom/amazon/android/docviewer/IOverlayController;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/IOverlayController;->hideOverlaysIfNeeded(Z)V

    return v7

    .line 526
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v8, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    cmpl-float v4, v6, v8

    if-lez v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v5

    cmpl-float v3, v4, v3

    if-lez v3, :cond_4

    .line 527
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->rightPageTurn(Landroid/view/MotionEvent;)V

    .line 528
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getOverlayController()Lcom/amazon/android/docviewer/IOverlayController;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/IOverlayController;->hideOverlaysIfNeeded(Z)V

    return v7

    :cond_4
    if-eqz v0, :cond_5

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/amazon/nwstd/replica/IReplicaPage;->performSingleTap(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    return v7

    .line 537
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 539
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    if-eqz v2, :cond_7

    .line 541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/amazon/nwstd/replica/IBookmarkablePage;->performToggleBookmark(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    return v7

    .line 547
    :cond_7
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getNavigationMarginPercent()F

    move-result v2

    mul-float v0, v0, v2

    .line 549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_8

    .line 551
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->leftPageTurn(Landroid/view/MotionEvent;)V

    .line 552
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getOverlayController()Lcom/amazon/android/docviewer/IOverlayController;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/IOverlayController;->hideOverlaysIfNeeded(Z)V

    return v7

    .line 556
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    cmpl-float v0, v2, v3

    if-lez v0, :cond_9

    .line 558
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->rightPageTurn(Landroid/view/MotionEvent;)V

    .line 559
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getOverlayController()Lcom/amazon/android/docviewer/IOverlayController;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/IOverlayController;->hideOverlaysIfNeeded(Z)V

    return v7

    .line 565
    :cond_9
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getOverlayController()Lcom/amazon/android/docviewer/IOverlayController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IOverlayController;->toggleVisibility()V

    return v7

    :cond_a
    :goto_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 129
    invoke-direct {p0, p2}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 132
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->m_gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onUp(Landroid/view/MotionEvent;)V
    .locals 4

    .line 618
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->replicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->removeMagnification()V

    .line 622
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mIsAnimationInProgress:Z

    if-eqz v0, :cond_2

    .line 624
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->isZoomed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 626
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->endPageCurl(IFFF)V

    goto :goto_0

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->onUp(Landroid/view/MotionEvent;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected rightPageTurn(Landroid/view/MotionEvent;)V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->isZoomed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->startFakeCurl(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 602
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method public setCurlView(Lcom/amazon/kindle/pagecurl/CurlView;)V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->mCurlRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    invoke-virtual {v0}, Lcom/amazon/nwstd/utils/RunnableHandler;->removeCallbacks()V

    .line 802
    iput-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    return-void
.end method

.method public setReplicaMagnifierController(Lcom/amazon/nwstd/ui/ReplicaMagnifierController;)V
    .locals 0

    .line 1037
    iput-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->replicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    return-void
.end method
