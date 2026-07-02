.class public Lcom/amazon/whispersync/android/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;,
        Lcom/amazon/whispersync/android/support/v4/view/ViewPager$PagerObserver;,
        Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;,
        Lcom/amazon/whispersync/android/support/v4/view/ViewPager$Decor;,
        Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnAdapterChangeListener;,
        Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SimpleOnPageChangeListener;,
        Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;,
        Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;",
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

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFlingDistance:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLeftEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mObserver:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    .line 90
    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    .line 100
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 106
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$2;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$2;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 271
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 117
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 119
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const/4 v0, 0x1

    .line 136
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 151
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    .line 172
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mFirstLayout:Z

    const/4 p1, 0x0

    .line 196
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScrollState:I

    .line 272
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 117
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    .line 118
    iput-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 119
    iput-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const/4 p2, 0x1

    .line 136
    iput p2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 151
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    .line 172
    iput-boolean p2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mFirstLayout:Z

    const/4 p1, 0x0

    .line 196
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScrollState:I

    .line 277
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->initViewPager()V

    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 80
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private completeScroll()V
    .locals 6

    .line 1256
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScrolling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1259
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1260
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1261
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    .line 1262
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    .line 1263
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1264
    iget-object v5, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_1

    .line 1266
    :cond_0
    invoke-virtual {p0, v4, v5}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1268
    :cond_1
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1270
    :cond_2
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1271
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScrolling:Z

    const/4 v2, 0x0

    .line 1272
    :goto_0
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1273
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    .line 1274
    iget-boolean v4, v3, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v4, :cond_3

    .line 1276
    iput-boolean v1, v3, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 1280
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->populate()V

    :cond_5
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 1

    .line 1563
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mFlingDistance:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mMinimumVelocity:I

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

    .line 1766
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1767
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1769
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1770
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1771
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1751
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1752
    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1753
    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1757
    :goto_0
    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1758
    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1759
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 1760
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private pageScrolled(I)V
    .locals 3

    .line 1180
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v0, v1

    .line 1181
    div-int v1, p1, v0

    .line 1182
    rem-int/2addr p1, v0

    int-to-float v2, p1

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/4 v0, 0x0

    .line 1185
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1186
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1187
    iget-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCalledSuper:Z

    if-eqz p1, :cond_0

    return-void

    .line 1188
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onPageScrolled did not call superclass implementation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 6

    add-int/2addr p1, p3

    if-lez p2, :cond_0

    .line 1048
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    add-int/2addr p2, p4

    .line 1050
    div-int p4, p3, p2

    .line 1051
    rem-int/2addr p3, p2

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p2, p4

    add-float/2addr p2, p3

    int-to-float p3, p1

    mul-float p2, p2, p3

    float-to-int v1, p2

    .line 1053
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1054
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1056
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getDuration()I

    move-result p2

    iget-object p3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    move-result p3

    sub-int v5, p2, p3

    .line 1057
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    mul-int v3, p2, p1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1060
    :cond_0
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    mul-int p2, p2, p1

    .line 1061
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    if-eq p2, p1, :cond_1

    .line 1062
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->completeScroll()V

    .line 1063
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

    .line 354
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 355
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 356
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;

    .line 357
    iget-boolean v1, v1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_0

    .line 358
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

    .line 298
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 302
    :cond_0
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScrollState:I

    .line 303
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mOnPageChangeListener:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 304
    invoke-interface {v0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1776
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1777
    iput-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

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

    .line 1924
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1926
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 1929
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1930
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1931
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1932
    invoke-virtual {p0, v3}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1933
    iget v4, v4, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 1934
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 1944
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 1950
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 1953
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 1958
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method addNewItem(II)V
    .locals 2

    .line 647
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;-><init>()V

    .line 648
    iput p1, v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 649
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    if-gez p2, :cond_0

    .line 651
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 653
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

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

    .line 1971
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1972
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1973
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1974
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1975
    iget v2, v2, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    .line 1976
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 908
    invoke-virtual {p0, p3}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 909
    invoke-virtual {p0, p3}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 911
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;

    .line 912
    iget-boolean v1, v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 913
    iget-boolean v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 915
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 917
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 918
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    iget p3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 920
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 5

    .line 1865
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    .line 1870
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

    .line 1876
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 1877
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->pageLeft()Z

    move-result v1

    goto :goto_1

    .line 1879
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_8

    if-eqz v0, :cond_3

    .line 1884
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gt v1, v0, :cond_3

    .line 1885
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_1

    .line 1887
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

    .line 1895
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_1

    .line 1892
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->pageLeft()Z

    move-result v1

    :cond_8
    :goto_1
    if-eqz v1, :cond_9

    .line 1898
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_9
    return v1
.end method

.method public beginFakeDrag()Z
    .locals 12

    .line 1652
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 1655
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mFakeDragging:Z

    .line 1656
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setScrollState(I)V

    const/4 v1, 0x0

    .line 1657
    iput v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    iput v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInitialMotionX:F

    .line 1658
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 1659
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1661
    :cond_1
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 1663
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    .line 1664
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1665
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1666
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1667
    iput-wide v10, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 1802
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1803
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1804
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 1805
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 1806
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 1811
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 1812
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

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

    .line 1821
    invoke-static {p1, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

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

    .line 2049
    instance-of v0, p1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;

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

    .line 1156
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1157
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1159
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 1160
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 1161
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1162
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1165
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1166
    invoke-direct {p0, v2}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->pageScrolled(I)V

    .line 1170
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    .line 1176
    :cond_2
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->completeScroll()V

    return-void
.end method

.method dataSetChanged()V
    .locals 10

    .line 660
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getCount()I

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

    .line 664
    :goto_1
    iget-object v7, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_7

    .line 665
    iget-object v7, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    .line 666
    iget-object v8, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    iget-object v9, v7, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, v3, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    .line 673
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    if-nez v5, :cond_2

    .line 677
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v5, 0x1

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    iget v8, v7, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v9, v7, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v0, p0, v8, v9}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 684
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    iget v7, v7, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v0, v7, :cond_3

    .line 686
    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getCount()I

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

    .line 691
    :cond_4
    iget v9, v7, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_6

    .line 692
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    if-ne v9, v0, :cond_5

    move v6, v8

    .line 697
    :cond_5
    iput v8, v7, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v4, v2

    goto :goto_1

    :cond_7
    if-eqz v5, :cond_8

    .line 703
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    invoke-virtual {v3, p0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 706
    :cond_8
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v4, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-ltz v6, :cond_9

    .line 710
    invoke-virtual {p0, v6, v1, v2}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_4

    :cond_9
    move v2, v0

    :goto_4
    if-eqz v2, :cond_a

    .line 714
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->populate()V

    .line 715
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1827
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 2022
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2024
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2025
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2026
    invoke-virtual {p0, v3}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2027
    iget v4, v4, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

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

    .line 586
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1574
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1577
    invoke-static {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 1605
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLeftEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1606
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRightEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;->finish()V

    goto/16 :goto_1

    .line 1581
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLeftEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1583
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x43870000    # 270.0f

    .line 1585
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v3

    .line 1586
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1587
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLeftEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1588
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLeftEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1589
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1591
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRightEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1592
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1593
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 1594
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1595
    iget-object v5, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    :cond_3
    const/high16 v5, 0x42b40000    # 90.0f

    .line 1597
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1598
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v1, v1

    iget v6, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPageMargin:I

    add-int v7, v3, v6

    mul-int v1, v1, v7

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1600
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRightEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, v4, v3}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1601
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRightEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v2, v1

    .line 1602
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 1611
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_5
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 572
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 573
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 6

    .line 1678
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 1683
    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1684
    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    .line 1686
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1687
    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    iget v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1688
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 1689
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v4, v5

    .line 1690
    div-int v5, v3, v4

    .line 1691
    rem-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1692
    invoke-direct {p0, v5, v3, v0, v2}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v2

    .line 1693
    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 1694
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->endDrag()V

    const/4 v0, 0x0

    .line 1696
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mFakeDragging:Z

    return-void

    .line 1679
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1840
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 1841
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1849
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 1852
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 1853
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 1854
    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1855
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/16 p1, 0x42

    .line 1846
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x11

    .line 1843
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public fakeDragBy(F)V
    .locals 10

    .line 1707
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_2

    .line 1711
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1712
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 1713
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 1714
    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr p1, v1

    const/4 v1, 0x0

    .line 1716
    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v2, v2, -0x1

    mul-int v2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 1717
    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int v2, v2, p1

    int-to-float p1, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    cmpl-float v1, v0, p1

    if-lez v1, :cond_1

    move v0, p1

    .line 1725
    :cond_1
    :goto_0
    iget p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1726
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1727
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->pageScrolled(I)V

    .line 1730
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1731
    iget-wide v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    iget v7, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1733
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1734
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 1708
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2039
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2054
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2044
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 401
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 485
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 541
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;
    .locals 1

    .line 944
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 945
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 948
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 950
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method infoForChild(Landroid/view/View;)Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    .line 933
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 934
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    .line 935
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    iget-object v3, v1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

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
    .locals 3

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 282
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 283
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 284
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 285
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 286
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 287
    invoke-static {v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mTouchSlop:I

    .line 288
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mMinimumVelocity:I

    .line 289
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mMaximumVelocity:I

    .line 290
    new-instance v1, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLeftEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    .line 291
    new-instance v1, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRightEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    .line 293
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 294
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mFlingDistance:I

    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .line 1747
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 955
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 956
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1617
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1620
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPageMargin:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1621
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 1622
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 1623
    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPageMargin:I

    add-int v3, v1, v2

    rem-int v3, v0, v3

    if-eqz v3, :cond_0

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 1627
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mTopPageBounds:I

    add-int/2addr v2, v0

    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mBottomPageBounds:I

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1629
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1292
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

    .line 1311
    iget-boolean v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_1

    return v3

    .line 1315
    :cond_1
    iget-boolean v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v4, :cond_2

    return v2

    :cond_2
    const/4 v4, 0x2

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    .line 1398
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1332
    :cond_4
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    if-ne v0, v1, :cond_5

    goto/16 :goto_0

    .line 1338
    :cond_5
    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1339
    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1340
    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v4, v1, v4

    .line 1341
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1342
    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1343
    iget v6, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionY:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v9, 0x0

    float-to-int v10, v4

    float-to-int v11, v1

    float-to-int v12, v0

    move-object v7, p0

    move-object v8, p0

    .line 1346
    invoke-virtual/range {v7 .. v12}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1348
    iput v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    iput v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInitialMotionX:F

    .line 1349
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionY:F

    return v2

    .line 1352
    :cond_6
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_7

    cmpl-float v0, v5, v6

    if-lez v0, :cond_7

    .line 1354
    iput-boolean v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1355
    invoke-direct {p0, v3}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1356
    iput v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1357
    invoke-direct {p0, v3}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 1359
    :cond_7
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_a

    .line 1365
    iput-boolean v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    goto :goto_0

    .line 1376
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1378
    invoke-static {p1, v2}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1380
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScrollState:I

    if-ne v0, v4, :cond_9

    .line 1382
    iput-boolean v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1383
    iput-boolean v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1384
    invoke-direct {p0, v3}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_0

    .line 1386
    :cond_9
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->completeScroll()V

    .line 1387
    iput-boolean v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1388
    iput-boolean v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1402
    :cond_a
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_c

    .line 1405
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 1406
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1408
    :cond_b
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1415
    :cond_c
    iget-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsBeingDragged:Z

    return p1

    .line 1298
    :cond_d
    :goto_1
    iput-boolean v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1299
    iput-boolean v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1300
    iput v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1301
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_e

    .line 1302
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1303
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_e
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1070
    iput-boolean v1, v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInLayout:Z

    .line 1071
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->populate()V

    const/4 v2, 0x0

    .line 1072
    iput-boolean v2, v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInLayout:Z

    .line 1074
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    .line 1077
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    .line 1078
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    .line 1079
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    .line 1080
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    .line 1081
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v11, v3, :cond_8

    .line 1086
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1087
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_7

    .line 1088
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;

    .line 1092
    iget-boolean v15, v14, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_6

    .line 1093
    iget v14, v14, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;->gravity:I

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

    .line 1108
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v1, v15

    .line 1109
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v8, v15

    goto :goto_1

    .line 1101
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    goto :goto_2

    .line 1104
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

    .line 1125
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1126
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v9, v15

    goto :goto_3

    .line 1118
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v7

    goto :goto_4

    .line 1121
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

    .line 1131
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v2, v7, v16

    invoke-virtual {v13, v6, v7, v15, v2}, Landroid/view/View;->layout(IIII)V

    move v6, v1

    move v7, v14

    goto :goto_5

    .line 1134
    :cond_6
    invoke-virtual {v0, v13}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1135
    iget v2, v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v2, v4

    iget v1, v1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    mul-int v2, v2, v1

    add-int/2addr v2, v6

    .line 1141
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13, v2, v7, v1, v14}, Landroid/view/View;->layout(IIII)V

    :cond_7
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1147
    :cond_8
    iput v7, v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mTopPageBounds:I

    sub-int/2addr v5, v9

    .line 1148
    iput v5, v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mBottomPageBounds:I

    .line 1149
    iput v12, v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mDecorChildCount:I

    const/4 v1, 0x0

    .line 1150
    iput-boolean v1, v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    const/4 v0, 0x0

    .line 966
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 970
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 971
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 978
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    if-ge v2, v1, :cond_8

    .line 980
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 981
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_7

    .line 982
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;

    if-eqz v3, :cond_7

    .line 983
    iget-boolean v7, v3, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v7, :cond_7

    .line 984
    iget v7, v3, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    .line 986
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gravity: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;->gravity:I

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

    .line 998
    :cond_5
    :goto_4
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 999
    invoke-static {p2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1000
    invoke-virtual {v6, v4, v7}, Landroid/view/View;->measure(II)V

    if-eqz v3, :cond_6

    .line 1003
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_7

    .line 1005
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1011
    :cond_8
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    .line 1012
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    .line 1015
    iput-boolean v5, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInLayout:Z

    .line 1016
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->populate()V

    .line 1017
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInLayout:Z

    .line 1020
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_6
    if-ge v0, p1, :cond_b

    .line 1022
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1023
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_a

    .line 1027
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;

    if-eqz v1, :cond_9

    .line 1028
    iget-boolean v1, v1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_a

    .line 1029
    :cond_9
    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 11

    .line 1207
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mDecorChildCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_5

    .line 1208
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 1209
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    .line 1210
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    .line 1211
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 1212
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    .line 1214
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1215
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;

    .line 1216
    iget-boolean v9, v8, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_0

    goto :goto_3

    .line 1218
    :cond_0
    iget v8, v8, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$LayoutParams;->gravity:I

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

    .line 1233
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    .line 1234
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    goto :goto_1

    .line 1226
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    goto :goto_2

    .line 1229
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

    .line 1239
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v2, v9

    if-eqz v2, :cond_4

    .line 1241
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v2, v8

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1246
    :cond_5
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mOnPageChangeListener:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_6

    .line 1247
    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1249
    :cond_6
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInternalPageChangeListener:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 1250
    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1252
    :cond_7
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCalledSuper:Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1991
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

    .line 2002
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2003
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2004
    invoke-virtual {p0, v5}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2005
    iget v6, v6, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v7, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    .line 2006
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

    .line 888
    instance-of v0, p1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 889
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 893
    :cond_0
    check-cast p1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;

    .line 894
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 896
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 897
    iget-object v1, p1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 898
    iget p1, p1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 900
    :cond_1
    iget v0, p1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;->position:I

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 901
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 902
    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 877
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 878
    new-instance v1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 879
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    iput v0, v1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;->position:I

    .line 880
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1037
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 1041
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p2, p2}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1420
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1427
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1433
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 1438
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 1439
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1441
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1443
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

    .line 1550
    :cond_4
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1551
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_2

    .line 1543
    :cond_5
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1544
    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1545
    iput v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1546
    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    goto/16 :goto_2

    .line 1535
    :cond_6
    iget-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_f

    .line 1536
    iget p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, p1, v1, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1537
    iput v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1538
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->endDrag()V

    .line 1539
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLeftEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRightEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    goto/16 :goto_1

    .line 1460
    :cond_7
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_8

    .line 1461
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1462
    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1463
    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1464
    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1465
    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionY:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1467
    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_8

    cmpl-float v0, v4, v0

    if-lez v0, :cond_8

    .line 1469
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1470
    iput v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1471
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1472
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1475
    :cond_8
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_f

    .line 1477
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1479
    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1480
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 1481
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1482
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 1484
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 1485
    iget v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v3, v0

    .line 1487
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    .line 1488
    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v5, v1

    mul-int v5, v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    .line 1489
    iget v6, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v6, v1

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

    .line 1494
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLeftEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

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

    .line 1500
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRightEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_b
    move p1, v6

    .line 1505
    :cond_c
    :goto_0
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v3, p1

    int-to-float v4, v3

    sub-float/2addr p1, v4

    add-float/2addr v0, p1

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1506
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1507
    invoke-direct {p0, v3}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->pageScrolled(I)V

    goto :goto_2

    .line 1511
    :cond_d
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_f

    .line 1512
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    .line 1513
    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1514
    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {v0, v2}, Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 1516
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1517
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v2, v4

    .line 1518
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    .line 1519
    div-int v5, v4, v2

    .line 1520
    rem-int/2addr v4, v2

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    .line 1521
    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {p1, v2}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1523
    invoke-static {p1, v2}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1524
    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    .line 1525
    invoke-direct {p0, v5, v4, v0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result p1

    .line 1527
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 1529
    iput v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1530
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->endDrag()V

    .line 1531
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLeftEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRightEdge:Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    :goto_1
    or-int v2, p1, v0

    goto :goto_2

    .line 1452
    :cond_e
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->completeScroll()V

    .line 1455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1456
    invoke-static {p1, v2}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mActivePointerId:I

    :cond_f
    :goto_2
    if-eqz v2, :cond_10

    .line 1556
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_10
    return v1

    :cond_11
    :goto_3
    return v2
.end method

.method pageLeft()Z
    .locals 2

    .line 1904
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1905
    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method pageRight()Z
    .locals 3

    .line 1912
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 1913
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method populate()V
    .locals 9

    .line 720
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 728
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPopulatePending:Z

    if-eqz v0, :cond_1

    return-void

    .line 736
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 740
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 742
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 743
    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 744
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 745
    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 751
    :goto_0
    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 752
    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    .line 753
    iget v7, v6, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v7, v1, :cond_3

    if-le v7, v0, :cond_4

    :cond_3
    iget-boolean v7, v6, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v7, :cond_4

    .line 755
    iget-object v5, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    .line 757
    iget-object v5, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    iget v7, v6, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v8, v6, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v7, v8}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-ge v5, v0, :cond_6

    .line 758
    iget v7, v6, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v7, v1, :cond_6

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_5

    move v5, v1

    :cond_5
    :goto_1
    if-gt v5, v0, :cond_6

    .line 766
    iget v7, v6, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v5, v7, :cond_6

    .line 768
    invoke-virtual {p0, v5, v4}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->addNewItem(II)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 773
    :cond_6
    :goto_2
    iget v5, v6, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 777
    :cond_7
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    iget v4, v4, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    goto :goto_3

    :cond_8
    const/4 v4, -0x1

    :goto_3
    if-ge v4, v0, :cond_a

    add-int/lit8 v4, v4, 0x1

    if-le v4, v1, :cond_9

    move v1, v4

    :cond_9
    :goto_4
    if-gt v1, v0, :cond_a

    .line 783
    invoke-virtual {p0, v1, v3}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->addNewItem(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    .line 796
    :goto_5
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_c

    .line 797
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    iget v1, v1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    if-ne v1, v4, :cond_b

    .line 798
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    goto :goto_6

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    move-object v0, v3

    .line 802
    :goto_6
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_7

    :cond_d
    move-object v0, v3

    :goto_7
    invoke-virtual {v1, p0, v4, v0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 804
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 806
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 807
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 808
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    :cond_e
    if-eqz v3, :cond_f

    .line 809
    iget v0, v3, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    if-eq v0, v1, :cond_11

    .line 810
    :cond_f
    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_11

    .line 811
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 812
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 813
    iget v1, v1, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    if-ne v1, v3, :cond_10

    const/4 v1, 0x2

    .line 814
    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_11
    :goto_9
    return-void
.end method

.method public setAdapter(Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;)V
    .locals 6

    .line 314
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 315
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mObserver:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 316
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .line 317
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    .line 319
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    iget v4, v2, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v2, v2, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 322
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 323
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->removeNonDecorViews()V

    .line 324
    iput v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    .line 325
    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    .line 329
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    if-eqz p1, :cond_4

    .line 332
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mObserver:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$PagerObserver;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 333
    new-instance v2, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$PagerObserver;

    invoke-direct {v2, p0, v3}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$PagerObserver;-><init>(Lcom/amazon/whispersync/android/support/v4/view/ViewPager;Lcom/amazon/whispersync/android/support/v4/view/ViewPager$1;)V

    iput-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mObserver:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$PagerObserver;

    .line 335
    :cond_2
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mObserver:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v2, v4}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 336
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 337
    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredCurItem:I

    if-ltz v2, :cond_3

    .line 338
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v5, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v4, v5}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 339
    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredCurItem:I

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v1, v4}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v1, -0x1

    .line 340
    iput v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 341
    iput-object v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 342
    iput-object v3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 344
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->populate()V

    .line 348
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapterChangeListener:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_5

    if-eq v0, p1, :cond_5

    .line 349
    invoke-interface {v1, v0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;)V

    :cond_5
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 385
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 386
    iget-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 396
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 397
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 405
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p3, :cond_1

    .line 413
    iget p3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 414
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 420
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapter:Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 422
    :cond_3
    :goto_0
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 423
    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    .line 427
    :goto_1
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 428
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;

    iput-boolean p3, v2, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 431
    :cond_5
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    if-eq v0, p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    .line 432
    :goto_2
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mCurItem:I

    .line 433
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->populate()V

    .line 434
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v0, v2

    mul-int v0, v0, p1

    if-eqz p2, :cond_8

    .line 436
    invoke-virtual {p0, v0, v1, p4}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->smoothScrollTo(III)V

    if-eqz p3, :cond_7

    .line 437
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mOnPageChangeListener:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_7

    .line 438
    invoke-interface {p2, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_7
    if-eqz p3, :cond_b

    .line 440
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInternalPageChangeListener:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_b

    .line 441
    invoke-interface {p2, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_3

    :cond_8
    if-eqz p3, :cond_9

    .line 444
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mOnPageChangeListener:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_9

    .line 445
    invoke-interface {p2, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_9
    if-eqz p3, :cond_a

    .line 447
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInternalPageChangeListener:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_a

    .line 448
    invoke-interface {p2, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 450
    :cond_a
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->completeScroll()V

    .line 451
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_b
    :goto_3
    return-void

    .line 410
    :cond_c
    :goto_4
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method setInternalPageChangeListener(Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;)Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInternalPageChangeListener:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;

    .line 473
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mInternalPageChangeListener:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 507
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

    .line 511
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 512
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 513
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->populate()V

    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mAdapterChangeListener:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnAdapterChangeListener;

    return-void
.end method

.method public setOnPageChangeListener(Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mOnPageChangeListener:Lcom/amazon/whispersync/android/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 526
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPageMargin:I

    .line 527
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPageMargin:I

    .line 529
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 530
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 532
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 562
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 551
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 552
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 553
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1

    const/4 v0, 0x0

    .line 596
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 8

    .line 607
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 609
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 612
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 613
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    .line 617
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->completeScroll()V

    .line 618
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 622
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 623
    iput-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScrolling:Z

    const/4 p1, 0x2

    .line 624
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->setScrollState(I)V

    .line 626
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 627
    div-int/lit8 p2, p1, 0x2

    .line 628
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

    .line 629
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    mul-float v0, v0, p2

    add-float/2addr p2, v0

    .line 633
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 635
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 637
    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p2, p1

    add-float/2addr p2, v1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    :goto_0
    const/16 p2, 0x258

    .line 640
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 642
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 643
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 567
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

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
