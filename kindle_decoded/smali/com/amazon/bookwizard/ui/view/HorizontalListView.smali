.class public Lcom/amazon/bookwizard/ui/view/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Landroid/widget/ListAdapter;

.field private config:Landroid/view/ViewConfiguration;

.field private currentX:I

.field private dataChanged:Z

.field private dataObserver:Landroid/database/DataSetObserver;

.field private displayOffset:I

.field private gesture:Landroid/view/GestureDetector;

.field private initialX:F

.field private initialY:F

.field private leftViewIndex:I

.field private maxX:I

.field private nextX:I

.field private onGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private onItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private onItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private relayoutRunnable:Ljava/lang/Runnable;

.field private removedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private rightViewIndex:I

.field private scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->leftViewIndex:I

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->rightViewIndex:I

    const p2, 0x7fffffff

    .line 56
    iput p2, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->maxX:I

    .line 57
    iput p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->displayOffset:I

    .line 63
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->removedViewQueue:Ljava/util/Queue;

    .line 67
    new-instance p1, Lcom/amazon/bookwizard/ui/view/HorizontalListView$1;

    invoke-direct {p1, p0}, Lcom/amazon/bookwizard/ui/view/HorizontalListView$1;-><init>(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)V

    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->dataObserver:Landroid/database/DataSetObserver;

    .line 82
    new-instance p1, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;

    invoke-direct {p1, p0}, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;-><init>(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)V

    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->onGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 156
    new-instance p1, Lcom/amazon/bookwizard/ui/view/HorizontalListView$3;

    invoke-direct {p1, p0}, Lcom/amazon/bookwizard/ui/view/HorizontalListView$3;-><init>(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)V

    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->relayoutRunnable:Ljava/lang/Runnable;

    .line 174
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->initView()V

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/bookwizard/ui/view/HorizontalListView;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->dataChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->onItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/bookwizard/ui/view/HorizontalListView;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->requestParentDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/Scroller;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->scroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->nextX:I

    return p0
.end method

.method static synthetic access$402(Lcom/amazon/bookwizard/ui/view/HorizontalListView;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->nextX:I

    return p1
.end method

.method static synthetic access$500(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->maxX:I

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->onItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->leftViewIndex:I

    return p0
.end method

.method static synthetic access$800(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/ListAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->adapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->onItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 2

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    const/4 v1, 0x1

    .line 277
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/AdapterView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 278
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private fillList(I)V
    .locals 2

    .line 337
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 341
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->fillListRight(II)V

    .line 344
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 348
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->fillListLeft(II)V

    return-void
.end method

.method private fillListLeft(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    if-lez v0, :cond_0

    .line 386
    iget v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->leftViewIndex:I

    if-ltz v0, :cond_0

    .line 387
    iget-object v1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->adapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->removedViewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v0, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 388
    invoke-direct {p0, v0, v1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 390
    iget v1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->leftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->leftViewIndex:I

    .line 391
    iget v1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->displayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->displayOffset:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fillListRight(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    .line 360
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->rightViewIndex:I

    iget-object v1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 361
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->adapter:Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->rightViewIndex:I

    iget-object v2, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->removedViewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v0, v1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    .line 362
    invoke-direct {p0, v0, v1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 363
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 365
    iget v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->rightViewIndex:I

    iget-object v1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 366
    iget v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->currentX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->maxX:I

    .line 369
    :cond_0
    iget v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->maxX:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 370
    iput v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->maxX:I

    .line 372
    :cond_1
    iget v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->rightViewIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->rightViewIndex:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private declared-synchronized initView()V
    .locals 3

    monitor-enter p0

    .line 181
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->config:Landroid/view/ViewConfiguration;

    const/4 v0, -0x1

    .line 182
    iput v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->leftViewIndex:I

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->rightViewIndex:I

    .line 184
    iput v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->displayOffset:I

    .line 185
    iput v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->currentX:I

    .line 186
    iput v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->nextX:I

    const v0, 0x7fffffff

    .line 187
    iput v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->maxX:I

    .line 188
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->scroller:Landroid/widget/Scroller;

    .line 189
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->onGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->gesture:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private positionItems(I)V
    .locals 6

    .line 427
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 431
    :cond_0
    iget v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->displayOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->displayOffset:I

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 433
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 434
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 435
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v4, v0, v3

    .line 436
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2, v0, p1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 437
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeNonVisibleItems(I)V
    .locals 4

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, p1

    if-gtz v2, :cond_0

    .line 404
    iget v2, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->displayOffset:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->displayOffset:I

    .line 405
    iget-object v2, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->removedViewQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 406
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->removeViewInLayout(Landroid/view/View;)V

    .line 407
    iget v1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->leftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->leftViewIndex:I

    .line 408
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 411
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 413
    iget-object v1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->removedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeViewInLayout(Landroid/view/View;)V

    .line 415
    iget v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->rightViewIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->rightViewIndex:I

    .line 416
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 479
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 483
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 484
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method private declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 196
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->initView()V

    .line 197
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 198
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 446
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 447
    iget-object v1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->gesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->adapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 468
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 463
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->initialX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->initialY:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 465
    iget-object v2, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->config:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->config:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    .line 458
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->initialX:F

    .line 459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->initialY:F

    .line 460
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 0

    monitor-enter p0

    .line 286
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 288
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->adapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 289
    monitor-exit p0

    return-void

    .line 292
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->dataChanged:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 293
    iget p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->currentX:I

    .line 294
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->initView()V

    .line 295
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 296
    iput p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->nextX:I

    .line 297
    iput-boolean p2, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->dataChanged:Z

    .line 300
    :cond_1
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 301
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    iput p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->nextX:I

    .line 304
    :cond_2
    iget p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->nextX:I

    const/4 p3, 0x1

    if-gtz p1, :cond_3

    .line 305
    iput p2, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->nextX:I

    .line 306
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1, p3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 307
    invoke-direct {p0, p2}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 309
    :cond_3
    iget p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->nextX:I

    iget p4, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->maxX:I

    if-lt p1, p4, :cond_4

    .line 310
    iget p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->maxX:I

    iput p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->nextX:I

    .line 311
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1, p3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 312
    invoke-direct {p0, p2}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 315
    :cond_4
    iget p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->currentX:I

    iget p2, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->nextX:I

    sub-int/2addr p1, p2

    .line 317
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->removeNonVisibleItems(I)V

    .line 318
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->fillList(I)V

    .line 319
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->positionItems(I)V

    .line 321
    iget p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->nextX:I

    iput p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->currentX:I

    .line 323
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    .line 324
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->relayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 325
    invoke-direct {p0, p3}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->requestParentDisallowInterceptTouchEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 49
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->adapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 250
    :cond_0
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->adapter:Landroid/widget/ListAdapter;

    .line 251
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 252
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->reset()V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->onItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->onItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->onItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    return-void
.end method
