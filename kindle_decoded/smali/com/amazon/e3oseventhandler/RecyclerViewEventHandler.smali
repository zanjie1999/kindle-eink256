.class public Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;
.super Lcom/amazon/e3oseventhandler/BasePaginationHandler;
.source "RecyclerViewEventHandler.java"


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final WIDGET_CLASS_NAME:Ljava/lang/String; = "com.amazon.e3oseventhandler.RecyclerViewEventHandler"


# instance fields
.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mViewHolderMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;-><init>(Landroid/view/View;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mViewHolderMap:Ljava/util/Map;

    .line 58
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->setWidgetView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->handleNestedScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private getFullVisibleItemPositionRange()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 258
    iget-object v5, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-gez v4, :cond_0

    .line 260
    invoke-direct {p0, v5}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->isFirstCompleteVisibleItem(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    iget-object v4, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    :cond_0
    if-ltz v4, :cond_1

    .line 264
    invoke-direct {p0, v5}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->isLastCompleteVisibleItem(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 265
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    if-gez v2, :cond_4

    if-lez v0, :cond_4

    .line 274
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 276
    :cond_4
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getInitialTouch(Landroidx/recyclerview/widget/RecyclerView;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "Could not access intialTouchValues : "

    .line 157
    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    :try_start_0
    const-string/jumbo v3, "mInitialTouchY"

    .line 161
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-string/jumbo v4, "mInitialTouchX"

    .line 162
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x1

    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 164
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 165
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 166
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 167
    instance-of v1, v3, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 168
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 170
    :goto_0
    :try_start_1
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 171
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    const/4 v1, -0x1

    .line 177
    :goto_1
    sget-object v3, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception p1

    const/4 v1, -0x1

    .line 174
    :goto_2
    sget-object v3, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 180
    :cond_1
    :goto_3
    new-instance p1, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private getItemHeight(I)F
    .locals 2

    .line 390
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->getItemView(I)Landroid/view/View;

    move-result-object p1

    .line 391
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    .line 392
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 393
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mViewHolderMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 422
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mViewHolderMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 425
    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method private getItemWidth(I)F
    .locals 3

    .line 404
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->getItemView(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 405
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 406
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 407
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private getPreviousPagePosition(I)I
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    .line 370
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    if-eqz v0, :cond_1

    .line 372
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->getItemHeight(I)F

    move-result v2

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->getItemWidth(I)F

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

.method private handleNestedScroll(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->isScrolling(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->getInitialTouch(Landroidx/recyclerview/widget/RecyclerView;)Landroid/util/Pair;

    move-result-object v0

    .line 120
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 121
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 125
    :goto_0
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 131
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    move v1, p1

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    .line 136
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_4

    cmpg-float p1, v1, v3

    if-gez p1, :cond_3

    .line 138
    sget-object p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Forward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleFling(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V

    goto :goto_2

    :cond_3
    cmpl-float p1, v1, v3

    if-lez p1, :cond_4

    .line 140
    sget-object p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Backward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleFling(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private isFirstCompleteVisibleItem(Landroid/view/View;)Z
    .locals 3

    .line 347
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 350
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private isLastCompleteVisibleItem(Landroid/view/View;)Z
    .locals 3

    .line 355
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 358
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-gt p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private isScrolling(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 6

    const-string v0, "Could not access mScrollState : "

    .line 192
    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "mScrollState"

    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    .line 195
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 196
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 197
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 198
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 200
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 208
    sget-object v1, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 205
    sget-object v1, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_0
    :goto_0
    return v2
.end method

.method private scrollToPosition(IZ)V
    .locals 4

    .line 436
    sget-boolean v0, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scrolling to position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Scrolling to last page = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 441
    sget-object v2, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->SCROLL:Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    invoke-virtual {v2}, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->getmId()I

    move-result v2

    int-to-float v2, v2

    const-string v3, "Last-Gesture"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mFlashOnLastPage:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->fullFlashOnNextUpdate()V

    .line 446
    :cond_2
    instance-of p2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 447
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 448
    :cond_3
    instance-of p2, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p2, :cond_4

    .line 449
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 450
    :cond_4
    instance-of p2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_5

    .line 451
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 455
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 456
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->onCancelPendingInputEvents()V

    return-void
.end method


# virtual methods
.method protected handleFlingEvent(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 221
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->getFullVisibleItemPositionRange()Landroid/util/Pair;

    move-result-object v0

    .line 225
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_2

    return-void

    .line 228
    :cond_2
    sget-object v2, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Forward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_4

    .line 229
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v2, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-ge p1, v2, :cond_5

    .line 230
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v2, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v0, v2}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->isScrollToLastPage(ILandroid/util/Pair;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 232
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v1}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->scrollToPosition(IZ)V

    return-void

    .line 235
    :cond_3
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v3}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->scrollToPosition(IZ)V

    goto :goto_0

    .line 238
    :cond_4
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->getPreviousPagePosition(I)I

    move-result p1

    .line 239
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 240
    invoke-direct {p0, p1, v3}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->scrollToPosition(IZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected handleFlingEventByPercentage(F)V
    .locals 6

    .line 281
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 284
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 286
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->getFullVisibleItemPositionRange()Landroid/util/Pair;

    move-result-object v0

    .line 290
    iget-object v3, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-lez v1, :cond_2

    .line 292
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_2

    return-void

    .line 296
    :cond_2
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    int-to-float v4, v4

    mul-float v4, v4, p1

    float-to-int p1, v4

    if-nez p1, :cond_4

    if-lez v1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    .line 301
    :cond_4
    :goto_0
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, p1

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p1, v4

    const/4 v4, 0x0

    if-gez p1, :cond_5

    const/4 p1, 0x0

    .line 305
    :cond_5
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq p1, v5, :cond_7

    iget-object v5, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-ge p1, v5, :cond_7

    if-lez v1, :cond_6

    .line 306
    invoke-virtual {p0, p1, v0, v3}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->isScrollToLastPage(ILandroid/util/Pair;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 308
    invoke-direct {p0, p1, v2}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->scrollToPosition(IZ)V

    return-void

    .line 311
    :cond_6
    invoke-direct {p0, p1, v4}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->scrollToPosition(IZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method protected handleJump(FLcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;)V
    .locals 3

    .line 317
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    add-int/lit8 v0, p2, -0x1

    int-to-float v1, v0

    mul-float v1, v1, p1

    .line 318
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-lt p1, p2, :cond_1

    move p1, v0

    .line 324
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->getFullVisibleItemPositionRange()Landroid/util/Pair;

    move-result-object p2

    .line 325
    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 326
    sget-boolean p1, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 327
    sget-object p1, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string p2, "Ignoring tap to scroll action as scrolling to same page as current page."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 332
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->isScrollToLastPage(ILandroid/util/Pair;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 333
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->isOnLastPage(II)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 334
    sget-boolean p1, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz p1, :cond_4

    .line 335
    sget-object p1, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string p2, "Not scrolling by tap as the scrolled position is already on last page."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    const/4 p2, 0x1

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->scrollToPosition(IZ)V

    return-void

    .line 343
    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->scrollToPosition(IZ)V

    return-void
.end method

.method protected isOnLastPage(II)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isScrollToLastPage(ILandroid/util/Pair;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 475
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr v0, p2

    const/4 p2, 0x1

    add-int/2addr v0, p2

    add-int/2addr p1, v0

    sub-int/2addr p1, p2

    if-lt p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public setFilter(Landroid/view/View;)V
    .locals 0

    .line 62
    new-instance p1, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler$1;

    invoke-direct {p1, p0}, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler$1;-><init>(Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;)V

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mScrollFilter:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setWidgetViewInternal(Landroid/view/View;)V
    .locals 1

    .line 461
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 462
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/RecyclerViewEventHandler;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_0
    return-void
.end method
