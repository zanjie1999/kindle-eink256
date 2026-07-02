.class public Lcom/amazon/kcp/library/ui/NestedRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "NestedRecyclerView.java"


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mScrollPointerId:I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/ui/NestedRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/library/ui/NestedRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;->mScrollPointerId:I

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;->mTouchSlop:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 54
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 55
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v0, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 99
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 65
    :cond_0
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;->mScrollPointerId:I

    .line 66
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;->mInitialTouchX:I

    .line 67
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;->mInitialTouchY:I

    .line 68
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 71
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;->mScrollPointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    if-gez v0, :cond_2

    return v2

    .line 76
    :cond_2
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 77
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 78
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    .line 79
    iget v3, p0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;->mInitialTouchX:I

    sub-int/2addr v1, v3

    .line 80
    iget v3, p0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;->mInitialTouchY:I

    sub-int/2addr v0, v3

    .line 81
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 83
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    .line 84
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v5, :cond_4

    .line 86
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;->mTouchSlop:I

    if-le v6, v7, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v6, v7, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_0
    if-eqz v3, :cond_6

    .line 89
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v7, p0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;->mTouchSlop:I

    if-le v3, v7, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    const/4 v6, 0x1

    :cond_6
    if-eqz v6, :cond_7

    .line 92
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2

    .line 95
    :cond_8
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 59
    :cond_9
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;->mScrollPointerId:I

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;->mInitialTouchX:I

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;->mInitialTouchY:I

    .line 62
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setScrollingTouchSlop(I)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v0}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;->mTouchSlop:I

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;->mTouchSlop:I

    :goto_0
    return-void
.end method
