.class public Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;
.super Landroid/view/ViewGroup;
.source "NWSTViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;,
        Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$PagerObserver;,
        Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;,
        Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnAdapterChangeListener;,
        Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnCompleteScrollAfterSetItemSmoothListener;,
        Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;,
        Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sElasticInterpolator:Landroid/view/animation/Interpolator;

.field private static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

.field private mAdapterChangeListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultTouchSlop:I

.field private mElasticScroller:Landroid/widget/Scroller;

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFlingDistance:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsSetItemSmoothTransition:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

.field private mLinearScroller:Landroid/widget/Scroller;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNWSTDTouchSlop:I

.field private mObserver:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnCompleteScrollAfterSetItemSmoothListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnCompleteScrollAfterSetItemSmoothListener;

.field private mOnPageChangeListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field private mTopPageBounds:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    .line 93
    sput-object v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->LAYOUT_ATTRS:[I

    .line 103
    new-instance v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$1;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$1;-><init>()V

    sput-object v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 110
    new-instance v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$2;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$2;-><init>()V

    sput-object v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->sElasticInterpolator:Landroid/view/animation/Interpolator;

    .line 117
    new-instance v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$3;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$3;-><init>()V

    sput-object v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 294
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 127
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 129
    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x1

    .line 148
    iput v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOffscreenPageLimit:I

    .line 163
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    .line 183
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mFirstLayout:Z

    .line 190
    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOnCompleteScrollAfterSetItemSmoothListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnCompleteScrollAfterSetItemSmoothListener;

    const/4 p1, 0x0

    .line 210
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScrollState:I

    .line 295
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 299
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 127
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    .line 128
    iput-object p2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 129
    iput-object p2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const/4 v0, 0x1

    .line 148
    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOffscreenPageLimit:I

    .line 163
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    .line 183
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mFirstLayout:Z

    .line 190
    iput-object p2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOnCompleteScrollAfterSetItemSmoothListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnCompleteScrollAfterSetItemSmoothListener;

    const/4 p1, 0x0

    .line 210
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScrollState:I

    .line 300
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->initViewPager()V

    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 83
    sget-object v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private completeScroll()V
    .locals 6

    .line 1332
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScrolling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1335
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setScrollingCacheEnabled(Z)V

    .line 1336
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1337
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    .line 1338
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    .line 1339
    iget-object v4, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1340
    iget-object v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_1

    .line 1342
    :cond_0
    invoke-virtual {p0, v4, v5}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1345
    :cond_1
    iget-boolean v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsSetItemSmoothTransition:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOnCompleteScrollAfterSetItemSmoothListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnCompleteScrollAfterSetItemSmoothListener;

    if-eqz v2, :cond_2

    .line 1346
    invoke-interface {v2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnCompleteScrollAfterSetItemSmoothListener;->onCompleteScroll()V

    .line 1348
    :cond_2
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsSetItemSmoothTransition:Z

    .line 1350
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setScrollState(I)V

    .line 1352
    :cond_3
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPopulatePending:Z

    .line 1353
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScrolling:Z

    .line 1355
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mElasticScroller:Landroid/widget/Scroller;

    iput-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    .line 1356
    :goto_0
    iget-object v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1357
    iget-object v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    .line 1358
    iget-boolean v4, v3, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->scrolling:Z

    if-eqz v4, :cond_4

    .line 1360
    iput-boolean v1, v3, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->scrolling:Z

    const/4 v0, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 1364
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->populate()V

    :cond_6
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 1

    .line 1849
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mFlingDistance:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mMinimumVelocity:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    add-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    :goto_0
    return p1
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    .line 2056
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    .line 2057
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsUnableToDrag:Z

    .line 2059
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2060
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2061
    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2041
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2042
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2043
    iget v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2047
    :goto_0
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    .line 2048
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    .line 2049
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 2050
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private pageScrolled(I)V
    .locals 3

    .line 1249
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPageMargin:I

    add-int/2addr v0, v1

    .line 1250
    div-int v1, p1, v0

    .line 1251
    rem-int/2addr p1, v0

    int-to-float v2, p1

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/4 v0, 0x0

    .line 1254
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCalledSuper:Z

    .line 1255
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->onPageScrolled(IFI)V

    .line 1256
    iget-boolean p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCalledSuper:Z

    if-eqz p1, :cond_0

    return-void

    .line 1257
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "onPageScrolled did not call superclass implementation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 6

    add-int/2addr p1, p3

    if-lez p2, :cond_0

    .line 1114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    add-int/2addr p2, p4

    .line 1116
    div-int p4, p3, p2

    .line 1117
    rem-int/2addr p3, p2

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p2, p4

    add-float/2addr p2, p3

    int-to-float p3, p1

    mul-float p2, p2, p3

    float-to-int v1, p2

    .line 1119
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1120
    iget-object p2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1122
    iget-object p2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getDuration()I

    move-result p2

    iget-object p3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    move-result p3

    sub-int v5, p2, p3

    .line 1123
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget p2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    mul-int v3, p2, p1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1126
    :cond_0
    iget p2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    mul-int p2, p2, p1

    .line 1127
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    if-eq p2, p1, :cond_1

    .line 1128
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->completeScroll()V

    .line 1129
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private removeNonDecorViews()V
    .locals 2

    const/4 v0, 0x0

    .line 387
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 388
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 389
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;

    .line 390
    iget-boolean v1, v1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_0

    .line 391
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    .line 330
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 334
    :cond_0
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScrollState:I

    .line 335
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOnPageChangeListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 336
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 2066
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2067
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2214
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2216
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 2219
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2220
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2221
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2222
    invoke-virtual {p0, v3}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->infoForChild(Landroid/view/View;)Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2223
    iget v4, v4, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 2224
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 2236
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 2239
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 2243
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 2247
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method addNewItem(IIZ)V
    .locals 2

    .line 710
    new-instance v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;-><init>()V

    .line 711
    iput p1, v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    .line 712
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    invoke-virtual {v1, p0, p1, p3}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;IZ)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->object:Ljava/lang/Object;

    if-gez p2, :cond_0

    .line 714
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 716
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2260
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2261
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2262
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2263
    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->infoForChild(Landroid/view/View;)Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2264
    iget v2, v2, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    iget v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    .line 2265
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 974
    invoke-virtual {p0, p3}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 975
    invoke-virtual {p0, p3}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 977
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;

    .line 978
    iget-boolean v1, v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;->isDecor:Z

    or-int/lit8 v1, v1, 0x0

    iput-boolean v1, v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;->isDecor:Z

    .line 979
    iget-boolean v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mInLayout:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 981
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 983
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 984
    iget p2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mChildWidthMeasureSpec:I

    iget p3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 986
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 5

    .line 2154
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    .line 2160
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x42

    const/16 v4, 0x11

    if-eqz v2, :cond_4

    if-eq v2, v0, :cond_4

    if-ne p1, v4, :cond_2

    if-eqz v0, :cond_1

    .line 2166
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 2167
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->pageLeft()Z

    move-result v1

    goto :goto_1

    .line 2169
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_8

    if-eqz v0, :cond_3

    .line 2174
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gt v1, v0, :cond_3

    .line 2175
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->pageRight()Z

    move-result v1

    goto :goto_1

    .line 2177
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_1

    :cond_4
    if-eq p1, v4, :cond_7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    if-eq p1, v3, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 2185
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->pageRight()Z

    move-result v1

    goto :goto_1

    .line 2182
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->pageLeft()Z

    move-result v1

    :cond_8
    :goto_1
    if-eqz v1, :cond_9

    .line 2188
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_9
    return v1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 2097
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2098
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2099
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2100
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2101
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 2106
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 2107
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 2108
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 2109
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 2110
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 2109
    invoke-virtual/range {v6 .. v11}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 2116
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 2338
    instance-of v0, p1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 4

    .line 1224
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1225
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 1229
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 1230
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1231
    iget-object v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1234
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1235
    invoke-direct {p0, v2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->pageScrolled(I)V

    .line 1239
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    .line 1245
    :cond_2
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->completeScroll()V

    return-void
.end method

.method dataSetChanged()V
    .locals 10

    .line 723
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 727
    :goto_1
    iget-object v7, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_7

    .line 728
    iget-object v7, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    .line 729
    iget-object v8, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    iget-object v9, v7, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, v3, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    .line 736
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    if-nez v5, :cond_2

    .line 740
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    invoke-virtual {v0, p0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v5, 0x1

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    iget v8, v7, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    iget-object v9, v7, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v0, p0, v8, v9}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 747
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    iget v7, v7, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    if-ne v0, v7, :cond_3

    .line 749
    iget-object v6, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_3
    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    .line 754
    :cond_4
    iget v9, v7, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_6

    .line 755
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    if-ne v9, v0, :cond_5

    move v6, v8

    .line 760
    :cond_5
    iput v8, v7, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v4, v2

    goto :goto_1

    :cond_7
    if-eqz v5, :cond_8

    .line 766
    iget-object v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    invoke-virtual {v3, p0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 769
    :cond_8
    iget-object v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v4, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-ltz v6, :cond_9

    .line 773
    invoke-virtual {p0, v6, v1, v2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_4

    :cond_9
    move v2, v0

    :goto_4
    if-eqz v2, :cond_a

    .line 777
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->populate()V

    .line 778
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_a
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 2311
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2313
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2314
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2315
    invoke-virtual {p0, v3}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->infoForChild(Landroid/view/View;)Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2316
    iget v4, v4, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 2317
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double v0, v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 641
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1860
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1863
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    if-eqz v0, :cond_0

    .line 1866
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 1891
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    .line 1892
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    goto/16 :goto_1

    .line 1867
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1868
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1869
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x43870000    # 270.0f

    .line 1871
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v3

    .line 1872
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1873
    iget-object v4, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 1874
    iget-object v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1875
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1877
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1878
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1879
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 1880
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1881
    iget-object v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v1

    :cond_3
    const/high16 v5, 0x42b40000    # 90.0f

    .line 1883
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1884
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v1, v1

    iget v6, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPageMargin:I

    add-int v7, v3, v6

    mul-int v1, v1, v7

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1886
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1, v4, v3}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 1887
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v2, v1

    .line 1888
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 1897
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_5
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 627
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 628
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 2129
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 2130
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2138
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 2141
    invoke-static {p1}, Landroidx/core/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 2142
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 2143
    invoke-static {p1, v0}, Landroidx/core/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2144
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/16 p1, 0x42

    .line 2135
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x11

    .line 2132
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2328
    new-instance v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2343
    new-instance v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2333
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 449
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 535
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 593
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;
    .locals 1

    .line 1010
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 1011
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 1014
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 1016
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->infoForChild(Landroid/view/View;)Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method infoForChild(Landroid/view/View;)Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    .line 999
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1000
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    .line 1001
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    iget-object v3, v1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method initViewPager()V
    .locals 4

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 v1, 0x40000

    .line 305
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v1, 0x1

    .line 306
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 307
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 308
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->sElasticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mElasticScroller:Landroid/widget/Scroller;

    .line 309
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLinearScroller:Landroid/widget/Scroller;

    .line 311
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mElasticScroller:Landroid/widget/Scroller;

    iput-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScroller:Landroid/widget/Scroller;

    .line 312
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 318
    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mNWSTDTouchSlop:I

    .line 319
    invoke-static {v2}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mDefaultTouchSlop:I

    .line 320
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mMinimumVelocity:I

    .line 321
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mMaximumVelocity:I

    .line 322
    new-instance v0, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 323
    new-instance v0, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 325
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 326
    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mFlingDistance:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1021
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1022
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mFirstLayout:Z

    return-void
.end method

.method public onCancel(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1669
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1676
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1682
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1686
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 1687
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1689
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1691
    iget-boolean p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_5

    .line 1692
    iget p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    invoke-virtual {p0, p1, v1, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItemInternal(IZZ)V

    const/4 p1, -0x1

    .line 1693
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    .line 1694
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->endDrag()V

    .line 1695
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1697
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1506
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1513
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1519
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1523
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 1524
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1526
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1531
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->completeScroll()V

    .line 1534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    .line 1535
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1903
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1906
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPageMargin:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1907
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 1908
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 1909
    iget v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPageMargin:I

    add-int v3, v1, v2

    rem-int v3, v0, v3

    if-eqz v3, :cond_0

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 1913
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mTopPageBounds:I

    add-int/2addr v2, v0

    iget v4, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mBottomPageBounds:I

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1915
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_d

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v0, :cond_2

    .line 1395
    iget-boolean v4, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_1

    return v3

    .line 1400
    :cond_1
    iget-boolean v4, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsUnableToDrag:Z

    if-eqz v4, :cond_2

    return v2

    :cond_2
    const/4 v4, 0x2

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    .line 1486
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1417
    :cond_4
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    if-ne v0, v1, :cond_5

    goto/16 :goto_0

    .line 1423
    :cond_5
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1424
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1425
    iget v4, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    sub-float v4, v1, v4

    .line 1426
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1427
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1428
    iget v6, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionY:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v9, 0x0

    float-to-int v10, v4

    float-to-int v11, v1

    float-to-int v12, v0

    move-object v7, p0

    move-object v8, p0

    .line 1432
    invoke-virtual/range {v7 .. v12}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1434
    iput v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    iput v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mInitialMotionX:F

    .line 1435
    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionY:F

    return v2

    .line 1438
    :cond_6
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mDefaultTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_7

    cmpl-float v0, v5, v6

    if-lez v0, :cond_7

    .line 1441
    iput-boolean v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    .line 1442
    invoke-direct {p0, v3}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setScrollState(I)V

    .line 1443
    iput v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    .line 1444
    invoke-direct {p0, v3}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 1446
    :cond_7
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mDefaultTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_a

    .line 1453
    iput-boolean v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsUnableToDrag:Z

    goto :goto_0

    .line 1463
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    .line 1464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionY:F

    .line 1465
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    .line 1467
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScrollState:I

    if-ne v0, v4, :cond_9

    .line 1469
    iput-boolean v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    .line 1470
    iput-boolean v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsUnableToDrag:Z

    .line 1471
    invoke-direct {p0, v3}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setScrollState(I)V

    goto :goto_0

    .line 1473
    :cond_9
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->completeScroll()V

    .line 1474
    iput-boolean v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    .line 1475
    iput-boolean v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsUnableToDrag:Z

    .line 1490
    :cond_a
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_c

    .line 1493
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 1494
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1496
    :cond_b
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1502
    :cond_c
    iget-boolean p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    return p1

    .line 1382
    :cond_d
    :goto_1
    iput-boolean v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    .line 1383
    iput-boolean v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsUnableToDrag:Z

    .line 1384
    iput v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    .line 1385
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_e

    .line 1386
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1387
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_e
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1136
    iput-boolean v1, v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mInLayout:Z

    .line 1137
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->populate()V

    const/4 v2, 0x0

    .line 1138
    iput-boolean v2, v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mInLayout:Z

    .line 1140
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    .line 1143
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    .line 1144
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    .line 1145
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    .line 1146
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    .line 1147
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v11, v3, :cond_8

    .line 1152
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1153
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_7

    .line 1154
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;

    .line 1158
    iget-boolean v15, v14, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_6

    .line 1159
    iget v14, v14, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;->gravity:I

    and-int/lit8 v15, v14, 0x7

    and-int/lit8 v14, v14, 0x70

    if-eq v15, v1, :cond_2

    const/4 v1, 0x3

    if-eq v15, v1, :cond_1

    const/4 v1, 0x5

    if-eq v15, v1, :cond_0

    move v1, v6

    goto :goto_2

    :cond_0
    sub-int v1, v4, v8

    .line 1174
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v1, v15

    .line 1175
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v8, v15

    goto :goto_1

    .line 1167
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    goto :goto_2

    .line 1170
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v4, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_1
    move/from16 v17, v6

    move v6, v1

    move/from16 v1, v17

    :goto_2
    const/16 v15, 0x10

    if-eq v14, v15, :cond_5

    const/16 v15, 0x30

    if-eq v14, v15, :cond_4

    const/16 v15, 0x50

    if-eq v14, v15, :cond_3

    move v14, v7

    goto :goto_4

    :cond_3
    sub-int v14, v5, v9

    .line 1191
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1192
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v9, v15

    goto :goto_3

    .line 1184
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v7

    goto :goto_4

    .line 1187
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int v14, v5, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_3
    move/from16 v17, v14

    move v14, v7

    move/from16 v7, v17

    :goto_4
    add-int/2addr v6, v10

    add-int/lit8 v12, v12, 0x1

    .line 1198
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v6

    .line 1199
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v2, v7, v16

    .line 1197
    invoke-virtual {v13, v6, v7, v15, v2}, Landroid/view/View;->layout(IIII)V

    move v6, v1

    move v7, v14

    goto :goto_5

    .line 1200
    :cond_6
    invoke-virtual {v0, v13}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->infoForChild(Landroid/view/View;)Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1201
    iget v2, v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPageMargin:I

    add-int/2addr v2, v4

    iget v1, v1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    mul-int v2, v2, v1

    add-int/2addr v2, v6

    .line 1209
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v2

    .line 1210
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v7

    .line 1208
    invoke-virtual {v13, v2, v7, v1, v14}, Landroid/view/View;->layout(IIII)V

    :cond_7
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1214
    :cond_8
    iput v7, v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mTopPageBounds:I

    sub-int/2addr v5, v9

    .line 1215
    iput v5, v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mBottomPageBounds:I

    .line 1216
    iput v12, v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mDecorChildCount:I

    const/4 v1, 0x0

    .line 1217
    iput-boolean v1, v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    const/4 v0, 0x0

    .line 1032
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    .line 1033
    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    .line 1032
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 1036
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 1037
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1043
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    if-ge v2, v1, :cond_8

    .line 1045
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1046
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_7

    .line 1047
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;

    if-eqz v3, :cond_7

    .line 1048
    iget-boolean v7, v3, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;->isDecor:Z

    if-eqz v7, :cond_7

    .line 1049
    iget v7, v3, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    .line 1051
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gravity: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;->gravity:I

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hgrav: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " vgrav: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v3, 0x30

    if-eq v7, v3, :cond_1

    const/16 v3, 0x50

    if-ne v7, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    const/4 v7, 0x3

    if-eq v8, v7, :cond_3

    const/4 v7, 0x5

    if-ne v8, v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_3
    const/high16 v7, -0x80000000

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    const/high16 v4, -0x80000000

    if-eqz v5, :cond_5

    const/high16 v7, 0x40000000    # 2.0f

    .line 1063
    :cond_5
    :goto_4
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1064
    invoke-static {p2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1065
    invoke-virtual {v6, v4, v7}, Landroid/view/View;->measure(II)V

    if-eqz v3, :cond_6

    .line 1068
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_7

    .line 1070
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1076
    :cond_8
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mChildWidthMeasureSpec:I

    .line 1077
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mChildHeightMeasureSpec:I

    .line 1080
    iput-boolean v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mInLayout:Z

    .line 1081
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->populate()V

    .line 1082
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mInLayout:Z

    .line 1085
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_6
    if-ge v0, p1, :cond_b

    .line 1087
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1088
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_a

    .line 1093
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;

    if-eqz v1, :cond_9

    .line 1094
    iget-boolean v1, v1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_a

    .line 1095
    :cond_9
    iget v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mChildWidthMeasureSpec:I

    iget v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    return-void
.end method

.method public onMove(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1540
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1547
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1553
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 1557
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 1558
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1560
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1563
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_4

    .line 1564
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1565
    iget v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1567
    iget v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1570
    iget v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mNWSTDTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 1573
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    .line 1574
    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    .line 1575
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setScrollState(I)V

    .line 1576
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setScrollingCacheEnabled(Z)V

    .line 1579
    :cond_4
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_9

    .line 1581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 1582
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 1583
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    .line 1584
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 1586
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 1587
    iget v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPageMargin:I

    add-int/2addr v3, v0

    .line 1589
    iget-object v4, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    .line 1590
    iget v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    sub-int/2addr v5, v1

    mul-int v5, v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    .line 1591
    iget v6, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    add-int/2addr v6, v1

    .line 1592
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int v6, v6, v3

    int-to-float v6, v6

    cmpg-float v7, p1, v5

    if-gez v7, :cond_6

    const/4 v3, 0x0

    cmpl-float v3, v5, v3

    if-nez v3, :cond_5

    neg-float p1, p1

    .line 1596
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_5
    move p1, v5

    goto :goto_0

    :cond_6
    cmpl-float v5, p1, v6

    if-lez v5, :cond_8

    mul-int v4, v4, v3

    int-to-float v3, v4

    cmpl-float v3, v6, v3

    if-nez v3, :cond_7

    sub-float/2addr p1, v6

    .line 1602
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_7
    move p1, v6

    .line 1607
    :cond_8
    :goto_0
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    float-to-int v3, p1

    int-to-float v4, v3

    sub-float/2addr p1, v4

    add-float/2addr v0, p1

    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    .line 1608
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1609
    invoke-direct {p0, v3}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->pageScrolled(I)V

    :cond_9
    if-eqz v2, :cond_a

    .line 1613
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_a
    return v1

    :cond_b
    :goto_1
    return v2
.end method

.method protected onPageScrolled(IFI)V
    .locals 11

    .line 1278
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mDecorChildCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_5

    .line 1279
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 1280
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    .line 1281
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    .line 1282
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 1283
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    .line 1285
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1286
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;

    .line 1287
    iget-boolean v9, v8, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_0

    goto :goto_3

    .line 1290
    :cond_0
    iget v8, v8, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v8, 0x7

    if-eq v8, v1, :cond_3

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    const/4 v9, 0x5

    if-eq v8, v9, :cond_1

    move v8, v2

    goto :goto_2

    :cond_1
    sub-int v8, v4, v3

    .line 1305
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    .line 1306
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    goto :goto_1

    .line 1298
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    goto :goto_2

    .line 1301
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v4, v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_1
    move v10, v8

    move v8, v2

    move v2, v10

    :goto_2
    add-int/2addr v2, v0

    .line 1311
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v2, v9

    if-eqz v2, :cond_4

    .line 1313
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v2, v8

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1318
    :cond_5
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOnPageChangeListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;

    if-eqz v0, :cond_6

    .line 1319
    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1321
    :cond_6
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mInternalPageChangeListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 1322
    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1324
    :cond_7
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCalledSuper:Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 2280
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    if-eq v0, v3, :cond_2

    .line 2291
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2292
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2293
    invoke-virtual {p0, v5}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->infoForChild(Landroid/view/View;)Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2294
    iget v6, v6, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    iget v7, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    .line 2295
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 954
    instance-of v0, p1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;

    if-nez v0, :cond_0

    .line 955
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 959
    :cond_0
    check-cast p1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;

    .line 960
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 962
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    if-eqz v0, :cond_1

    .line 963
    iget-object v1, p1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 964
    iget p1, p1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 966
    :cond_1
    iget v0, p1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;->position:I

    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredCurItem:I

    .line 967
    iget-object v0, p1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 968
    iget-object p1, p1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 943
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 944
    new-instance v1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 945
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    iput v0, v1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;->position:I

    .line 946
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 1107
    iget p2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p2, p2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1705
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1712
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1718
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 1723
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 1724
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1726
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_e

    const/4 v3, -0x1

    if-eq v0, v1, :cond_d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    goto/16 :goto_2

    .line 1836
    :cond_4
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1837
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    .line 1838
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1837
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    goto/16 :goto_2

    .line 1829
    :cond_5
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1830
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1831
    iput v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    .line 1832
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    goto/16 :goto_2

    .line 1821
    :cond_6
    iget-boolean p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_f

    .line 1822
    iget p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    invoke-virtual {p0, p1, v1, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItemInternal(IZZ)V

    .line 1823
    iput v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    .line 1824
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->endDrag()V

    .line 1825
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    goto/16 :goto_1

    .line 1744
    :cond_7
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_8

    .line 1745
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1746
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1747
    iget v4, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1748
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1749
    iget v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionY:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1752
    iget v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mNWSTDTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_8

    cmpl-float v0, v4, v0

    if-lez v0, :cond_8

    .line 1755
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    .line 1756
    iput v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    .line 1757
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setScrollState(I)V

    .line 1758
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setScrollingCacheEnabled(Z)V

    .line 1761
    :cond_8
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_f

    .line 1763
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1765
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1766
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 1767
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    .line 1768
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 1770
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 1771
    iget v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPageMargin:I

    add-int/2addr v3, v0

    .line 1773
    iget-object v4, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    .line 1774
    iget v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    sub-int/2addr v5, v1

    mul-int v5, v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    .line 1775
    iget v6, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    add-int/2addr v6, v1

    .line 1776
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int v6, v6, v3

    int-to-float v6, v6

    cmpg-float v7, p1, v5

    if-gez v7, :cond_a

    const/4 v3, 0x0

    cmpl-float v3, v5, v3

    if-nez v3, :cond_9

    neg-float p1, p1

    .line 1780
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_9
    move p1, v5

    goto :goto_0

    :cond_a
    cmpl-float v5, p1, v6

    if-lez v5, :cond_c

    mul-int v4, v4, v3

    int-to-float v3, v4

    cmpl-float v3, v6, v3

    if-nez v3, :cond_b

    sub-float/2addr p1, v6

    .line 1786
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_b
    move p1, v6

    .line 1791
    :cond_c
    :goto_0
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    float-to-int v3, p1

    int-to-float v4, v3

    sub-float/2addr p1, v4

    add-float/2addr v0, p1

    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    .line 1792
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1793
    invoke-direct {p0, v3}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->pageScrolled(I)V

    goto :goto_2

    .line 1797
    :cond_d
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_f

    .line 1798
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    .line 1799
    iget v4, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1800
    iget v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    invoke-static {v0, v2}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 1802
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPopulatePending:Z

    .line 1803
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPageMargin:I

    add-int/2addr v2, v4

    .line 1804
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    .line 1805
    div-int v5, v4, v2

    .line 1806
    rem-int/2addr v4, v2

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    .line 1807
    iget v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    .line 1808
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1809
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1810
    iget v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mInitialMotionX:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    .line 1811
    invoke-direct {p0, v5, v4, v0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->determineTargetPage(IFII)I

    move-result p1

    .line 1813
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItemInternal(IZZI)V

    .line 1815
    iput v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    .line 1816
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->endDrag()V

    .line 1817
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    :goto_1
    or-int v2, p1, v0

    goto :goto_2

    .line 1736
    :cond_e
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->completeScroll()V

    .line 1739
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLastMotionX:F

    .line 1740
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    :cond_f
    :goto_2
    if-eqz v2, :cond_10

    .line 1842
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_10
    return v1

    :cond_11
    :goto_3
    return v2
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1620
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1627
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1633
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1637
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 1638
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1640
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1642
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 1643
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    .line 1644
    iget v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1645
    iget v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    invoke-static {v0, v2}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 1647
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPopulatePending:Z

    .line 1648
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPageMargin:I

    add-int/2addr v2, v3

    .line 1649
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 1650
    div-int v4, v3, v2

    .line 1651
    rem-int/2addr v3, v2

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 1653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 1654
    iget v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mInitialMotionX:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    .line 1655
    invoke-direct {p0, v4, v3, v0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->determineTargetPage(IFII)I

    move-result p1

    .line 1657
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItemInternal(IZZI)V

    const/4 p1, -0x1

    .line 1659
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mActivePointerId:I

    .line 1660
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->endDrag()V

    .line 1661
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1662
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v2
.end method

.method pageLeft()Z
    .locals 2

    .line 2194
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2195
    invoke-virtual {p0, v0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method pageRight()Z
    .locals 3

    .line 2202
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 2203
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method populate()V
    .locals 10

    .line 783
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 791
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPopulatePending:Z

    if-eqz v0, :cond_1

    return-void

    .line 800
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 804
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    invoke-virtual {v0, p0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 806
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOffscreenPageLimit:I

    .line 807
    iget v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 808
    iget-object v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 809
    iget v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    add-int/2addr v5, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 816
    :goto_0
    iget-object v7, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 817
    iget-object v7, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    .line 818
    iget v8, v7, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    if-lt v8, v1, :cond_3

    if-le v8, v0, :cond_4

    :cond_3
    iget-boolean v8, v7, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->scrolling:Z

    if-nez v8, :cond_4

    .line 821
    iget-object v6, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    .line 823
    iget-object v6, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    iget v8, v7, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    iget-object v9, v7, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v6, p0, v8, v9}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    if-ge v6, v0, :cond_7

    .line 824
    iget v8, v7, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    if-le v8, v1, :cond_7

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v1, :cond_5

    move v6, v1

    :cond_5
    :goto_1
    if-gt v6, v0, :cond_7

    .line 832
    iget v8, v7, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    if-ge v6, v8, :cond_7

    .line 835
    iget v8, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    if-ne v6, v8, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {p0, v6, v5, v8}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->addNewItem(IIZ)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 840
    :cond_7
    :goto_3
    iget v6, v7, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    add-int/2addr v5, v4

    goto :goto_0

    .line 844
    :cond_8
    iget-object v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    iget v5, v5, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    goto :goto_4

    :cond_9
    const/4 v5, -0x1

    :goto_4
    if-ge v5, v0, :cond_c

    add-int/2addr v5, v4

    if-le v5, v1, :cond_a

    move v1, v5

    :cond_a
    :goto_5
    if-gt v1, v0, :cond_c

    .line 851
    iget v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    if-ne v1, v5, :cond_b

    const/4 v5, 0x1

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {p0, v1, v3, v5}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->addNewItem(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    .line 864
    :goto_7
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_e

    .line 865
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    iget v1, v1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    if-ne v1, v4, :cond_d

    .line 866
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    goto :goto_8

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    move-object v0, v3

    .line 870
    :goto_8
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    iget v4, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_9

    :cond_f
    move-object v0, v3

    :goto_9
    invoke-virtual {v1, p0, v4, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 872
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    invoke-virtual {v0, p0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 874
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 875
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 876
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    move-result-object v3

    :cond_10
    if-eqz v3, :cond_11

    .line 877
    iget v0, v3, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    iget v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    if-eq v0, v1, :cond_13

    .line 878
    :cond_11
    :goto_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_13

    .line 879
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 880
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->infoForChild(Landroid/view/View;)Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 881
    iget v1, v1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    iget v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    if-ne v1, v3, :cond_12

    const/4 v1, 0x2

    .line 882
    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_b

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_13
    :goto_b
    return-void
.end method

.method public setAdapter(Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;)V
    .locals 6

    .line 347
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 348
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mObserver:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$PagerObserver;

    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 349
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    invoke-virtual {v0, p0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .line 350
    :goto_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    .line 352
    iget-object v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    iget v4, v2, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    iget-object v2, v2, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    invoke-virtual {v0, p0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 355
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 356
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->removeNonDecorViews()V

    .line 357
    iput v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    .line 358
    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    .line 362
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    if-eqz p1, :cond_4

    .line 365
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mObserver:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$PagerObserver;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 366
    new-instance v2, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$PagerObserver;

    invoke-direct {v2, p0, v3}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$PagerObserver;-><init>(Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$1;)V

    iput-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mObserver:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$PagerObserver;

    .line 368
    :cond_2
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    iget-object v4, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mObserver:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$PagerObserver;

    invoke-virtual {v2, v4}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 369
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPopulatePending:Z

    .line 370
    iget v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredCurItem:I

    if-ltz v2, :cond_3

    .line 371
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    iget-object v4, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v5, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v4, v5}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 372
    iget v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredCurItem:I

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v1, v4}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v1, -0x1

    .line 373
    iput v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredCurItem:I

    .line 374
    iput-object v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 375
    iput-object v3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 377
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->populate()V

    .line 381
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapterChangeListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_5

    if-eq v0, p1, :cond_5

    .line 382
    invoke-interface {v1, v0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;)V

    :cond_5
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPopulatePending:Z

    .line 419
    iget-boolean v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 433
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mIsSetItemSmoothTransition:Z

    .line 439
    iget-boolean v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPopulatePending:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPopulatePending:Z

    goto :goto_0

    .line 442
    :cond_0
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPopulatePending:Z

    .line 445
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4

    .line 457
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p3, :cond_1

    .line 461
    iget p3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 462
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 468
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapter:Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 470
    :cond_3
    :goto_0
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOffscreenPageLimit:I

    .line 471
    iget v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    .line 475
    :goto_1
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 476
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    iput-boolean p3, v2, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 479
    :cond_5
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    if-eq v0, p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    .line 480
    :goto_2
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mCurItem:I

    .line 481
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->populate()V

    .line 482
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPageMargin:I

    add-int/2addr v0, v2

    mul-int v0, v0, p1

    if-eqz p2, :cond_8

    .line 484
    invoke-virtual {p0, v0, v1, p4}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->smoothScrollTo(III)V

    if-eqz p3, :cond_7

    .line 485
    iget-object p2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOnPageChangeListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;

    if-eqz p2, :cond_7

    .line 486
    invoke-interface {p2, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_7
    if-eqz p3, :cond_b

    .line 488
    iget-object p2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mInternalPageChangeListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;

    if-eqz p2, :cond_b

    .line 489
    invoke-interface {p2, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_3

    :cond_8
    if-eqz p3, :cond_9

    .line 492
    iget-object p2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOnPageChangeListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;

    if-eqz p2, :cond_9

    .line 493
    invoke-interface {p2, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_9
    if-eqz p3, :cond_a

    .line 495
    iget-object p2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mInternalPageChangeListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;

    if-eqz p2, :cond_a

    .line 496
    invoke-interface {p2, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 498
    :cond_a
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->completeScroll()V

    .line 499
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_b
    :goto_3
    return-void

    .line 458
    :cond_c
    :goto_4
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 562
    :cond_0
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 563
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOffscreenPageLimit:I

    .line 564
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->populate()V

    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnAdapterChangeListener;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mAdapterChangeListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnAdapterChangeListener;

    return-void
.end method

.method public setOnCompleteScrollListener(Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnCompleteScrollAfterSetItemSmoothListener;)V
    .locals 0

    .line 1328
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOnCompleteScrollAfterSetItemSmoothListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnCompleteScrollAfterSetItemSmoothListener;

    return-void
.end method

.method public setOnPageChangeListener(Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mOnPageChangeListener:Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 578
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPageMargin:I

    .line 579
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPageMargin:I

    .line 581
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 582
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->recomputeScrollPosition(IIII)V

    .line 584
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 617
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 605
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 606
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 607
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 8

    .line 667
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 669
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 672
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 673
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    .line 677
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->completeScroll()V

    .line 678
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 682
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setScrollingCacheEnabled(Z)V

    .line 683
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScrolling:Z

    const/4 p1, 0x2

    .line 684
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setScrollState(I)V

    .line 686
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 687
    div-int/lit8 p2, p1, 0x2

    .line 688
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float v2, p1

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    .line 690
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    mul-float v0, v0, p2

    add-float/2addr p2, v0

    .line 693
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 697
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x6

    goto :goto_0

    .line 699
    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mPageMargin:I

    add-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p2, p1

    add-float/2addr p2, v1

    const/high16 p1, 0x43160000    # 150.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 702
    iget-object p2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mLinearScroller:Landroid/widget/Scroller;

    iput-object p2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScroller:Landroid/widget/Scroller;

    :goto_0
    const/16 p2, 0x258

    .line 704
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 705
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 706
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 622
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
