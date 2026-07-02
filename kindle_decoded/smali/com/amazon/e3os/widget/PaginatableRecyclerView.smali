.class public Lcom/amazon/e3os/widget/PaginatableRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "PaginatableRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/e3os/widget/PaginatableRecyclerView$OnPaginationListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_TAP_DELAY:F = 250.0f

.field private static final MAX_TAP_DIST:F = 20.0f

.field private static final MIN_SCROLL_DIST:F = 50.0f


# instance fields
.field private mIsPaginatable:Z

.field private mLastDown:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPaginationListener:Lcom/amazon/e3os/widget/PaginatableRecyclerView$OnPaginationListener;

.field private mViewHolderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance p1, Landroid/util/Pair;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mLastDown:Landroid/util/Pair;

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mViewHolderMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p1, Landroid/util/Pair;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mLastDown:Landroid/util/Pair;

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mViewHolderMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p1, Landroid/util/Pair;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mLastDown:Landroid/util/Pair;

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mViewHolderMap:Ljava/util/Map;

    return-void
.end method

.method private getFirstVisibleItemPosition()I
    .locals 3

    .line 201
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 202
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 203
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0

    .line 204
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_1

    .line 205
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0

    .line 206
    :cond_1
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 207
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 208
    array-length v1, v0

    if-lez v1, :cond_2

    .line 209
    aget v0, v0, v2

    return v0

    :cond_2
    return v2
.end method

.method private getItemHeight(I)F
    .locals 2

    .line 298
    invoke-direct {p0, p1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    .line 299
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    .line 300
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 301
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 3

    .line 314
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 315
    iget-object v1, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mViewHolderMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v1, :cond_0

    .line 317
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 318
    iget-object v2, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mViewHolderMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 321
    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method private getItemWidth(I)F
    .locals 3

    .line 306
    invoke-direct {p0, p1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 307
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 308
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 309
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private getLastFullyVisibleItemPosition()I
    .locals 3

    .line 220
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 225
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 226
    invoke-direct {p0, v1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->isItemFullyVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getPreviousPagePosition(I)I
    .locals 3

    .line 283
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    if-eqz v0, :cond_1

    .line 286
    invoke-direct {p0, p1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->getItemHeight(I)F

    move-result v2

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->getItemWidth(I)F

    move-result v2

    :goto_2
    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    if-nez v1, :cond_2

    return p1

    :cond_2
    if-gez v1, :cond_3

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private getTouchPointValue(Landroid/view/MotionEvent;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private handleJump(F)V
    .locals 1

    .line 191
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 195
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 197
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private handleScrollbarTouch(Landroid/view/MotionEvent;)V
    .locals 2

    .line 183
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    mul-float p1, p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->handleJump(F)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    mul-float p1, p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->handleJump(F)V

    :goto_0
    return-void
.end method

.method private isItemFullyVisible(Landroid/view/View;)Z
    .locals 3

    .line 234
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSingleTapInScrollbar(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x437a0000    # 250.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mLastDown:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mLastDown:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mLastDown:Landroid/util/Pair;

    .line 162
    invoke-direct {p0, p1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->isTouchInScrollbar(Landroid/util/Pair;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isTouchInScrollbar(Landroid/util/Pair;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 168
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVerticalScrollbarWidth()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    .line 169
    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 171
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 172
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVerticalScrollbarWidth()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    .line 173
    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private onPagination(ZI)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mPaginationListener:Lcom/amazon/e3os/widget/PaginatableRecyclerView$OnPaginationListener;

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0, p1, p2}, Lcom/amazon/e3os/widget/PaginatableRecyclerView$OnPaginationListener;->onPagination(ZI)V

    :cond_0
    return-void
.end method

.method private paginateToPosition(I)V
    .locals 3

    .line 271
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 272
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 273
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 274
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_1

    .line 275
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 276
    :cond_1
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_2

    .line 277
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 279
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->onCancelPendingInputEvents()V

    return-void
.end method

.method private scroll(F)Z
    .locals 3

    .line 141
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 143
    invoke-virtual {p0, v1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->paginate(Z)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0, v2}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->paginate(Z)V

    .line 147
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->onCancelPendingInputEvents()V

    return v2

    :cond_1
    return v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 101
    iget-boolean v0, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mIsPaginatable:Z

    if-eqz v0, :cond_7

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    return v1

    .line 112
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->isSingleTapInScrollbar(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-direct {p0, p1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->handleScrollbarTouch(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mLastDown:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mLastDown:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5

    .line 115
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->getTouchPointValue(Landroid/view/MotionEvent;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mLastDown:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v0, v2

    .line 116
    invoke-direct {p0, p1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->getTouchPointValue(Landroid/view/MotionEvent;)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mLastDown:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    .line 117
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 118
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->scroll(F)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 122
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v2}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->scroll(F)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 127
    :cond_5
    :goto_0
    new-instance v0, Landroid/util/Pair;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mLastDown:Landroid/util/Pair;

    goto :goto_1

    .line 104
    :cond_6
    invoke-direct {p0, p1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->getTouchPointValue(Landroid/view/MotionEvent;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mLastDown:Landroid/util/Pair;

    .line 135
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public paginate(Z)V
    .locals 4

    .line 244
    invoke-direct {p0}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->getFirstVisibleItemPosition()I

    move-result v0

    .line 245
    invoke-direct {p0}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->getLastFullyVisibleItemPosition()I

    move-result v1

    .line 248
    invoke-virtual {p0}, Landroid/view/ViewGroup;->onCancelPendingInputEvents()V

    if-eqz p1, :cond_0

    if-ltz v1, :cond_0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 249
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 250
    invoke-direct {p0, v1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->paginateToPosition(I)V

    .line 251
    invoke-direct {p0, v2, v1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->onPagination(ZI)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 255
    invoke-direct {p0, v0}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->getPreviousPagePosition(I)I

    move-result p1

    if-ge p1, v0, :cond_1

    .line 257
    invoke-direct {p0, p1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->paginateToPosition(I)V

    const/4 v0, 0x0

    .line 258
    invoke-direct {p0, v0, p1}, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->onPagination(ZI)V

    :cond_1
    return-void
.end method

.method public setIsPaginatable(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mIsPaginatable:Z

    return-void
.end method

.method public setOnPaginationListener(Lcom/amazon/e3os/widget/PaginatableRecyclerView$OnPaginationListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amazon/e3os/widget/PaginatableRecyclerView;->mPaginationListener:Lcom/amazon/e3os/widget/PaginatableRecyclerView$OnPaginationListener;

    return-void
.end method
