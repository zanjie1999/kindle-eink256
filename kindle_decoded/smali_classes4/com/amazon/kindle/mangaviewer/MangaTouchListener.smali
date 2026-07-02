.class public Lcom/amazon/kindle/mangaviewer/MangaTouchListener;
.super Ljava/lang/Object;
.source "MangaTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final MAX_DOUBLE_TAP_DISTANCE:F = 1.0f

.field private static final MAX_TAP_DISTANCE:F = 0.5f

.field private static final MAX_TAP_DURATION:I = 0x12c

.field private static SINGLE_TAP_DELAY:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private asyncHandler:Landroid/os/Handler;

.field private final density:F

.field private gestureDetector:Landroid/view/GestureDetector;

.field private newDownEvent:Z

.field private onDownPointX:F

.field private onDownPointY:F

.field private onDownTime:J

.field private onUpPointX:F

.field private onUpPointY:F

.field private pendingSingleTap:Z

.field private touchController:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

.field private viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Landroid/content/Context;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->pendingSingleTap:Z

    .line 63
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->newDownEvent:Z

    const-wide/high16 v1, -0x8000000000000000L

    .line 64
    iput-wide v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onDownTime:J

    const/high16 v1, -0x40800000    # -1.0f

    .line 65
    iput v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onDownPointX:F

    .line 66
    iput v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onDownPointY:F

    .line 67
    iput v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onUpPointX:F

    .line 68
    iput v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onUpPointY:F

    .line 71
    invoke-static {p2}, Lcom/amazon/android/util/UIUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v1

    iput v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->density:F

    .line 72
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    .line 73
    new-instance v1, Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    invoke-direct {v1}, Lcom/amazon/kindle/mangaviewer/MangaTouchController;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->touchController:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    .line 74
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    .line 75
    invoke-virtual {v1, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 76
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {v1, p0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setMangaListener(Lcom/amazon/kindle/mangaviewer/MangaTouchListener;)V

    .line 77
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->asyncHandler:Landroid/os/Handler;

    .line 79
    instance-of v1, p1, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 80
    new-instance v1, Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;

    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->touchController:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    invoke-direct {v1, v2, p1}, Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;-><init>(Lcom/amazon/kindle/mangaviewer/MangaTouchController;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)V

    .line 81
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 84
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    const/16 v1, 0xc8

    if-eqz p1, :cond_1

    const-string p1, "DebugSettings"

    .line 85
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "MangaGestureDelay"

    .line 86
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->SINGLE_TAP_DELAY:I

    goto :goto_0

    .line 88
    :cond_1
    sput v1, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->SINGLE_TAP_DELAY:I

    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kindle/mangaviewer/MangaTouchListener;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->pendingSingleTap:Z

    return p1
.end method

.method static synthetic access$100(Lcom/amazon/kindle/mangaviewer/MangaTouchListener;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->newDownEvent:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private computeInchDistance(FFFF)D
    .locals 2

    sub-float/2addr p1, p3

    .line 346
    invoke-direct {p0, p1}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->square(F)F

    move-result p1

    float-to-double v0, p1

    sub-float/2addr p2, p4

    invoke-direct {p0, p2}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->square(F)F

    move-result p1

    float-to-double p1, p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iget p2, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->density:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    return-wide p1
.end method

.method private recordDownEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onDownTime:J

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onDownPointX:F

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onDownPointY:F

    return-void
.end method

.method private square(F)F
    .locals 0

    mul-float p1, p1, p1

    return p1
.end method


# virtual methods
.method public addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->touchController:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    move-result p1

    return p1
.end method

.method public doubleTapManual(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isInAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    new-instance v1, Lcom/amazon/kindle/mangaviewer/touch/SavedSingleTouchEvent;

    sget-object v2, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;->DOUBLE_TAP:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    invoke-direct {v1, p1, v2}, Lcom/amazon/kindle/mangaviewer/touch/SavedSingleTouchEvent;-><init>(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setBufferedEvent(Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;)V

    const/4 p1, 0x1

    return p1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->touchController:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->doubleTap(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1
.end method

.method public handleBufferedEvent(Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;)V
    .locals 3

    .line 309
    sget-object v0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener$2;->$SwitchMap$com$amazon$kindle$mangaviewer$touch$SavedTouchEvent$TouchEventType:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;->getType()Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    check-cast p1, Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;

    .line 322
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;->getEventOne()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;->getEventTwo()Landroid/view/MotionEvent;

    move-result-object v1

    .line 323
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;->getVelocityX()F

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;->getVelocityY()F

    move-result p1

    .line 322
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    .line 316
    :cond_1
    check-cast p1, Lcom/amazon/kindle/mangaviewer/touch/SavedSingleTouchEvent;

    .line 317
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/touch/SavedSingleTouchEvent;->getEvent()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 311
    :cond_2
    check-cast p1, Lcom/amazon/kindle/mangaviewer/touch/SavedSingleTouchEvent;

    .line 312
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/touch/SavedSingleTouchEvent;->getEvent()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    :goto_0
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isInAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->newDownEvent:Z

    .line 186
    invoke-direct {p0, p1}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->recordDownEvent(Landroid/view/MotionEvent;)V

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    return v1

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->touchController:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->secondPointerDownEvent(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->touchController:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->firstPointerDownEvent(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isInAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    new-instance v1, Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;-><init>(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setBufferedEvent(Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;)V

    const/4 p1, 0x1

    return p1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->touchController:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    iget-object v5, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->swipeEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 291
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 296
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->touchController:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    iget-object p2, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-virtual {p1, p3, p2}, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->keyUpEvent(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1

    .line 293
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->touchController:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    iget-object p2, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-virtual {p1, p3, p2}, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->keyDownEvent(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isInAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->touchController:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->longPress(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 279
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isScrollLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isInAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->touchController:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->singleUpEvent(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 103
    check-cast p1, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 111
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isInAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 115
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    return v2

    .line 155
    :cond_2
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->touchController:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    invoke-virtual {v0, p2, p1}, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->moveEvent(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1

    .line 120
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onDownTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    cmp-long v0, v3, v5

    if-gtz v0, :cond_6

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onDownPointX:F

    iget v5, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onDownPointY:F

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->computeInchDistance(FFFF)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_6

    .line 123
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->pendingSingleTap:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onUpPointX:F

    iget v3, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onUpPointY:F

    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->computeInchDistance(FFFF)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_5

    .line 125
    iput-boolean v2, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->pendingSingleTap:Z

    .line 126
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->doubleTapManual(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 130
    :cond_5
    iput-boolean v2, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->newDownEvent:Z

    .line 131
    iput-boolean v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->pendingSingleTap:Z

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onUpPointX:F

    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onUpPointY:F

    .line 134
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->asyncHandler:Landroid/os/Handler;

    new-instance v0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener$1;-><init>(Lcom/amazon/kindle/mangaviewer/MangaTouchListener;Landroid/view/MotionEvent;)V

    sget p2, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->SINGLE_TAP_DELAY:I

    int-to-long v3, p2

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    .line 152
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->touchController:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    invoke-virtual {v0, p2, p1}, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->upEvent(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1
.end method

.method public singleTapManual(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isInAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    new-instance v1, Lcom/amazon/kindle/mangaviewer/touch/SavedSingleTouchEvent;

    sget-object v2, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;->SINGLE_TAP:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    invoke-direct {v1, p1, v2}, Lcom/amazon/kindle/mangaviewer/touch/SavedSingleTouchEvent;-><init>(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setBufferedEvent(Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;)V

    const/4 p1, 0x1

    return p1

    .line 229
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->newDownEvent:Z

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->touchController:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->singleTap(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
