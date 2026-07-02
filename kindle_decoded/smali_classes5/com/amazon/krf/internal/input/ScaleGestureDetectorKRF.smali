.class public Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorKRF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$SimpleOnScaleGestureListenerKRF;,
        Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$OnScaleGestureListenerKRF;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_MODE_IN_PROGRESS:I = 0x1

.field private static final DOUBLE_TAP_MODE_NONE:I = 0x0

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetectorKRF"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mDoubleTapEvent:Landroid/view/MotionEvent;

.field private mDoubleTapMode:I

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mListener:Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$OnScaleGestureListenerKRF;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private mSpanSlop:I

.field private mTouchHistoryDirection:I

.field private mTouchHistoryLastAccepted:F

.field private mTouchHistoryLastAcceptedTime:J

.field private mTouchLower:F

.field private mTouchMinMajor:I

.field private mTouchUpper:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$OnScaleGestureListenerKRF;)V
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;-><init>(Landroid/content/Context;Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$OnScaleGestureListenerKRF;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$OnScaleGestureListenerKRF;Landroid/os/Handler;)V
    .locals 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mDoubleTapMode:I

    .line 213
    iput-object p1, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mContext:Landroid/content/Context;

    .line 214
    iput-object p2, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mListener:Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$OnScaleGestureListenerKRF;

    .line 221
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    .line 222
    div-int/lit8 p2, p1, 0x4

    iput p2, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mSpanSlop:I

    .line 232
    div-int/lit8 p2, p1, 0x2

    iput p2, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchMinMajor:I

    mul-int/lit8 p1, p1, 0x5

    .line 233
    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mMinSpan:I

    .line 235
    iput-object p3, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mDoubleTapEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$102(Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mDoubleTapMode:I

    return p1
.end method

.method private addTouchHistory(Landroid/view/MotionEvent;)V
    .locals 14

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 253
    iget-wide v3, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchHistoryLastAcceptedTime:J

    sub-long/2addr v0, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x80

    cmp-long v7, v0, v5

    if-ltz v7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v2, :cond_b

    .line 257
    iget v7, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchHistoryLastAccepted:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    xor-int/2addr v7, v3

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    add-int/lit8 v9, v8, 0x1

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_a

    if-ge v10, v8, :cond_1

    .line 263
    invoke-virtual {p1, v5, v10}, Landroid/view/MotionEvent;->getHistoricalTouchMajor(II)F

    move-result v11

    goto :goto_3

    .line 265
    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v11

    .line 267
    :goto_3
    iget v12, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchMinMajor:I

    int-to-float v13, v12

    cmpg-float v13, v11, v13

    if-gez v13, :cond_2

    int-to-float v11, v12

    :cond_2
    add-float/2addr v1, v11

    .line 270
    iget v12, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchUpper:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_3

    iget v12, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchUpper:F

    cmpl-float v12, v11, v12

    if-lez v12, :cond_4

    .line 271
    :cond_3
    iput v11, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchUpper:F

    .line 273
    :cond_4
    iget v12, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchLower:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_5

    iget v12, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchLower:F

    cmpg-float v12, v11, v12

    if-gez v12, :cond_6

    .line 274
    :cond_5
    iput v11, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchLower:F

    :cond_6
    if-eqz v7, :cond_9

    .line 278
    iget v12, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchHistoryLastAccepted:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v11

    float-to-int v11, v11

    .line 279
    iget v12, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchHistoryDirection:I

    if-ne v11, v12, :cond_7

    if-nez v11, :cond_9

    if-nez v12, :cond_9

    .line 281
    :cond_7
    iput v11, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchHistoryDirection:I

    if-ge v10, v8, :cond_8

    .line 282
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v11

    goto :goto_4

    .line 283
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    .line 284
    :goto_4
    iput-wide v11, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchHistoryLastAcceptedTime:J

    const/4 v0, 0x0

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_a
    add-int/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_b
    int-to-float v2, v6

    div-float/2addr v1, v2

    if-eqz v0, :cond_c

    .line 295
    iget v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchUpper:F

    iget v2, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchLower:F

    add-float v3, v0, v2

    add-float/2addr v3, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 296
    iput v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchUpper:F

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 297
    iput v2, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchLower:F

    .line 298
    iput v3, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchHistoryLastAccepted:F

    .line 299
    iput v4, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchHistoryDirection:I

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchHistoryLastAcceptedTime:J

    :cond_c
    return-void
.end method

.method private clearTouchHistory()V
    .locals 2

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 309
    iput v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchUpper:F

    .line 310
    iput v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchLower:F

    .line 311
    iput v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchHistoryLastAccepted:F

    const/4 v0, 0x0

    .line 312
    iput v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchHistoryDirection:I

    const-wide/16 v0, 0x0

    .line 313
    iput-wide v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchHistoryLastAcceptedTime:J

    return-void
.end method

.method private inDoubleTapMode()Z
    .locals 2

    .line 483
    iget v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mDoubleTapMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 1

    .line 559
    iget v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpan:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .line 569
    iget v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpanX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .line 579
    iget v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpanY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .line 649
    iget-wide v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .line 535
    iget v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .line 549
    iget v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    .line 589
    iget v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpan:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .line 599
    iget v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpanX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .line 609
    iget v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpanY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 5

    .line 620
    invoke-direct {p0}, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->inDoubleTapMode()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 624
    iget-boolean v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpan:F

    iget v3, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpan:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpan:F

    iget v3, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpan:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 627
    :goto_0
    iget v3, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpan:F

    iget v4, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpan:F

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    .line 628
    iget v4, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpan:F

    cmpg-float v1, v4, v1

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    add-float/2addr v2, v3

    goto :goto_1

    :cond_4
    sub-float/2addr v2, v3

    :goto_1
    return v2

    .line 630
    :cond_5
    iget v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpan:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    iget v1, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpan:F

    div-float v2, v1, v0

    :cond_6
    return v2
.end method

.method public getTimeDelta()J
    .locals 4

    .line 640
    iget-wide v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrTime:J

    iget-wide v2, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 521
    iget-boolean v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .locals 1

    .line 514
    iget-boolean v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mQuickScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrTime:J

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 340
    iget-boolean v3, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mQuickScaleEnabled:Z

    if-eqz v3, :cond_0

    .line 341
    iget-object v3, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eqz v5, :cond_6

    .line 351
    :cond_3
    iget-boolean v7, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mInProgress:Z

    if-eqz v7, :cond_4

    .line 352
    iget-object v7, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mListener:Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$OnScaleGestureListenerKRF;

    invoke-interface {v7, v0}, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$OnScaleGestureListenerKRF;->onScaleEnd(Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;)V

    .line 353
    iput-boolean v3, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mInProgress:Z

    .line 354
    iput v6, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mInitialSpan:F

    .line 355
    iput v3, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mDoubleTapMode:I

    goto :goto_2

    .line 356
    :cond_4
    iget v7, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mDoubleTapMode:I

    if-ne v7, v4, :cond_5

    if-eqz v5, :cond_5

    .line 357
    iput-boolean v3, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mInProgress:Z

    .line 358
    iput v6, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mInitialSpan:F

    .line 359
    iput v3, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mDoubleTapMode:I

    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->clearTouchHistory()V

    return v4

    :cond_6
    const/4 v5, 0x6

    if-eqz v2, :cond_8

    if-eq v2, v5, :cond_8

    const/4 v7, 0x5

    if-ne v2, v7, :cond_7

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v7, 0x1

    :goto_4
    if-ne v2, v5, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_a

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    goto :goto_6

    :cond_a
    const/4 v8, -0x1

    .line 378
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-eqz v5, :cond_b

    add-int/lit8 v5, v9, -0x1

    goto :goto_7

    :cond_b
    move v5, v9

    .line 382
    :goto_7
    iget v10, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mDoubleTapMode:I

    if-ne v10, v4, :cond_d

    .line 385
    iget-object v10, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mDoubleTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 386
    iget-object v11, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mDoubleTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    cmpg-float v12, v12, v11

    if-gez v12, :cond_c

    .line 388
    iput-boolean v4, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_a

    .line 390
    :cond_c
    iput-boolean v3, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_a

    :cond_d
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_8
    if-ge v10, v9, :cond_f

    if-ne v8, v10, :cond_e

    goto :goto_9

    .line 395
    :cond_e
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v11, v13

    .line 396
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_f
    int-to-float v10, v5

    div-float/2addr v11, v10

    div-float v10, v12, v10

    move/from16 v16, v11

    move v11, v10

    move/from16 v10, v16

    .line 403
    :goto_a
    invoke-direct/range {p0 .. p1}, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->addTouchHistory(Landroid/view/MotionEvent;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_b
    const/high16 v14, 0x40000000    # 2.0f

    if-ge v13, v9, :cond_11

    if-ne v8, v13, :cond_10

    goto :goto_c

    .line 411
    :cond_10
    iget v15, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mTouchHistoryLastAccepted:F

    div-float/2addr v15, v14

    .line 412
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    sub-float/2addr v14, v10

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v14, v15

    add-float/2addr v6, v14

    .line 413
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    sub-float/2addr v14, v11

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v14, v15

    add-float/2addr v12, v14

    :goto_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_11
    int-to-float v1, v5

    div-float/2addr v6, v1

    div-float/2addr v12, v1

    mul-float v6, v6, v14

    mul-float v12, v12, v14

    .line 424
    invoke-direct/range {p0 .. p0}, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->inDoubleTapMode()Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v12

    goto :goto_d

    :cond_12
    mul-float v1, v6, v6

    mul-float v5, v12, v12

    add-float/2addr v1, v5

    float-to-double v8, v1

    .line 427
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v1, v8

    .line 433
    :goto_d
    iget-boolean v5, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mInProgress:Z

    .line 434
    iput v10, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mFocusX:F

    .line 435
    iput v11, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mFocusY:F

    .line 436
    invoke-direct/range {p0 .. p0}, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->inDoubleTapMode()Z

    move-result v8

    if-nez v8, :cond_14

    iget-boolean v8, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mInProgress:Z

    if-eqz v8, :cond_14

    iget v8, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mMinSpan:I

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-ltz v8, :cond_13

    if-eqz v7, :cond_14

    .line 437
    :cond_13
    iget-object v8, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mListener:Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$OnScaleGestureListenerKRF;

    invoke-interface {v8, v0}, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$OnScaleGestureListenerKRF;->onScaleEnd(Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;)V

    .line 438
    iput-boolean v3, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mInProgress:Z

    .line 439
    iput v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mInitialSpan:F

    .line 440
    iput v3, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mDoubleTapMode:I

    :cond_14
    if-eqz v7, :cond_15

    .line 443
    iput v6, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpanX:F

    iput v6, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpanX:F

    .line 444
    iput v12, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpanY:F

    iput v12, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpanY:F

    .line 445
    iput v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpan:F

    iput v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpan:F

    iput v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mInitialSpan:F

    .line 448
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->inDoubleTapMode()Z

    move-result v3

    if-eqz v3, :cond_16

    iget v3, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mSpanSlop:I

    goto :goto_e

    :cond_16
    iget v3, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mMinSpan:I

    .line 449
    :goto_e
    iget-boolean v7, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mInProgress:Z

    if-nez v7, :cond_18

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_18

    if-nez v5, :cond_17

    iget v3, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mInitialSpan:F

    sub-float v3, v1, v3

    .line 450
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mSpanSlop:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_18

    .line 451
    :cond_17
    iput v6, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpanX:F

    iput v6, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpanX:F

    .line 452
    iput v12, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpanY:F

    iput v12, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpanY:F

    .line 453
    iput v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpan:F

    iput v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpan:F

    .line 454
    iget-wide v7, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrTime:J

    iput-wide v7, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevTime:J

    .line 455
    iget-object v3, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mListener:Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$OnScaleGestureListenerKRF;

    invoke-interface {v3, v0}, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$OnScaleGestureListenerKRF;->onScaleBegin(Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mInProgress:Z

    :cond_18
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    .line 460
    iput v6, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpanX:F

    .line 461
    iput v12, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpanY:F

    .line 462
    iput v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpan:F

    .line 466
    iget-boolean v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mInProgress:Z

    if-eqz v1, :cond_19

    .line 467
    iget-object v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mListener:Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$OnScaleGestureListenerKRF;

    invoke-interface {v1, v0}, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$OnScaleGestureListenerKRF;->onScale(Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;)Z

    move-result v1

    goto :goto_f

    :cond_19
    const/4 v1, 0x1

    :goto_f
    if-eqz v1, :cond_1a

    .line 471
    iget v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpanX:F

    iput v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpanX:F

    .line 472
    iget v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpanY:F

    iput v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpanY:F

    .line 473
    iget v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrSpan:F

    iput v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevSpan:F

    .line 474
    iget-wide v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mCurrTime:J

    iput-wide v1, v0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mPrevTime:J

    :cond_1a
    return v4
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 3

    .line 493
    iput-boolean p1, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mQuickScaleEnabled:Z

    if-eqz p1, :cond_0

    .line 494
    iget-object p1, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez p1, :cond_0

    .line 495
    new-instance p1, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$1;

    invoke-direct {p1, p0}, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$1;-><init>(Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;)V

    .line 505
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_0
    return-void
.end method
