.class public Lcom/amazon/android/widget/ThumbnailSlider;
.super Landroid/widget/Gallery;
.source "ThumbnailSlider.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final FLING_SPEED_CORRECTION_FACTOR:D = 1.5

.field private static final MAX_ELAPSED_TIME_FOR_SCROLLING:I = 0xfa

.field private static final SCROLL_SPEED_ANIMATION_TIME:I = 0x3e8


# instance fields
.field private mCurrentPageIndex:I

.field private mLastFlingEventTimestamp:J

.field private mLastMotionEventAction:I

.field private mLastOnSelectedItemEventTimestamp:J

.field private mLastScrollEventTimestamp:J

.field private mMotionEventActionUpInvalid:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-virtual {p0, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 p1, 0x3e8

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    return-void
.end method


# virtual methods
.method public getCurrentItemIndex()I
    .locals 2

    .line 101
    iget v0, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mCurrentPageIndex:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    div-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isItemClickValid()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mMotionEventActionUpInvalid:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isMoving()Z
    .locals 7

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 52
    iget-wide v2, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mLastFlingEventTimestamp:J

    iget-wide v4, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mLastScrollEventTimestamp:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 53
    iget-wide v4, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mLastOnSelectedItemEventTimestamp:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mLastFlingEventTimestamp:J

    .line 43
    invoke-virtual {p0}, Landroid/widget/Gallery;->awakenScrollBars()Z

    float-to-double v0, p3

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    div-double/2addr v0, v2

    double-to-float p3, v0

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    .line 159
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mLastOnSelectedItemEventTimestamp:J

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mLastScrollEventTimestamp:J

    .line 36
    invoke-virtual {p0}, Landroid/widget/Gallery;->awakenScrollBars()Z

    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/amazon/android/widget/ThumbnailSlider;->isMoving()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    iput-boolean v2, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mMotionEventActionUpInvalid:Z

    goto :goto_0

    .line 135
    :cond_0
    iput-boolean v1, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mMotionEventActionUpInvalid:Z

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    .line 137
    iget v3, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mLastMotionEventAction:I

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 141
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/android/widget/ThumbnailSlider;->isMoving()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    iput v0, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mLastMotionEventAction:I

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    .line 144
    iput v0, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mLastMotionEventAction:I

    :goto_1
    if-eqz v1, :cond_4

    return v2

    .line 150
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 168
    invoke-super {p0, p1, p2}, Landroid/widget/Gallery;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    .line 173
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->release()V

    :cond_0
    return-void
.end method

.method public setNewSelected(II)V
    .locals 5

    .line 66
    invoke-virtual {p0}, Landroid/widget/Gallery;->getFirstVisiblePosition()I

    move-result v0

    .line 67
    invoke-virtual {p0}, Landroid/widget/Gallery;->getLastVisiblePosition()I

    move-result v1

    .line 68
    iget v2, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mCurrentPageIndex:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    div-int/2addr v2, v3

    :goto_0
    if-ge p2, v3, :cond_1

    move v4, p2

    goto :goto_1

    :cond_1
    add-int/lit8 v4, p2, 0x1

    .line 70
    div-int/2addr v4, v3

    .line 73
    :goto_1
    iget v3, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mCurrentPageIndex:I

    if-eq p2, v3, :cond_2

    .line 74
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setSelection(I)V

    :cond_2
    if-eq v2, v4, :cond_3

    if-lt v2, v0, :cond_3

    if-gt v2, v1, :cond_3

    sub-int/2addr v2, v0

    .line 78
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/widget/ThumbnailItem;

    if-eqz v2, :cond_3

    .line 80
    invoke-virtual {v2, p2}, Lcom/amazon/android/widget/ThumbnailItem;->deselect(I)V

    :cond_3
    if-lt v4, v0, :cond_4

    if-gt v4, v1, :cond_4

    sub-int/2addr v4, v0

    .line 85
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/widget/ThumbnailItem;

    if-eqz v0, :cond_4

    .line 88
    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/widget/ThumbnailItem;->highlight(II)V

    .line 92
    :cond_4
    iput p2, p0, Lcom/amazon/android/widget/ThumbnailSlider;->mCurrentPageIndex:I

    return-void
.end method

.method public showSelectedPage()V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/amazon/android/widget/ThumbnailSlider;->getCurrentItemIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setSelection(I)V

    return-void
.end method

.method public stopScroll()V
    .locals 8

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 109
    invoke-super {p0, v0}, Landroid/widget/Gallery;->onDown(Landroid/view/MotionEvent;)Z

    return-void
.end method
