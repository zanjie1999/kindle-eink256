.class public Lcom/amazon/android/widget/HorizontalPagingView;
.super Landroid/widget/HorizontalScrollView;
.source "HorizontalPagingView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final animatorListener:Landroid/animation/Animator$AnimatorListener;

.field private final buttonViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedPageStartPositions:Landroid/util/SparseIntArray;

.field private dividerWidth:I

.field private firstChild:Landroid/widget/LinearLayout;

.field private volatile isAwaitingPageTurn:Z

.field private volatile isPageTurning:Z

.field private volatile isUserScrolling:Z

.field private pageBreakIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pageLengths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final pageTurnListener:Landroid/view/View$OnClickListener;

.field private paginationComputed:Z

.field private pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

.field private pagingButtonWidth:I

.field private pagingButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/widget/ReversiblePagingCaretView;",
            ">;"
        }
    .end annotation
.end field

.field private passedSlop:Z

.field private scrollStart:I

.field private skipScroll:Z

.field private slop:I

.field private upListener:Landroid/view/View$OnClickListener;

.field private visiblePage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/android/widget/HorizontalPagingView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/widget/HorizontalPagingView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 165
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->buttonViews:Ljava/util/List;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageBreakIndices:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->paginationComputed:Z

    .line 70
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->cachedPageStartPositions:Landroid/util/SparseIntArray;

    .line 75
    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    .line 80
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isUserScrolling:Z

    .line 87
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isAwaitingPageTurn:Z

    .line 93
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isPageTurning:Z

    .line 100
    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->dividerWidth:I

    .line 111
    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidth:I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtons:Ljava/util/List;

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->skipScroll:Z

    .line 134
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->passedSlop:Z

    .line 137
    new-instance p1, Lcom/amazon/android/widget/HorizontalPagingView$1;

    invoke-direct {p1, p0}, Lcom/amazon/android/widget/HorizontalPagingView$1;-><init>(Lcom/amazon/android/widget/HorizontalPagingView;)V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageTurnListener:Landroid/view/View$OnClickListener;

    .line 153
    new-instance p1, Lcom/amazon/android/widget/HorizontalPagingView$2;

    invoke-direct {p1, p0}, Lcom/amazon/android/widget/HorizontalPagingView$2;-><init>(Lcom/amazon/android/widget/HorizontalPagingView;)V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->upListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->buttonViews:Ljava/util/List;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageBreakIndices:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->paginationComputed:Z

    .line 70
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->cachedPageStartPositions:Landroid/util/SparseIntArray;

    .line 75
    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    .line 80
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isUserScrolling:Z

    .line 87
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isAwaitingPageTurn:Z

    .line 93
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isPageTurning:Z

    .line 100
    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->dividerWidth:I

    .line 111
    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidth:I

    .line 113
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtons:Ljava/util/List;

    const/4 p2, 0x1

    .line 125
    iput-boolean p2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->skipScroll:Z

    .line 134
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->passedSlop:Z

    .line 137
    new-instance p1, Lcom/amazon/android/widget/HorizontalPagingView$1;

    invoke-direct {p1, p0}, Lcom/amazon/android/widget/HorizontalPagingView$1;-><init>(Lcom/amazon/android/widget/HorizontalPagingView;)V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageTurnListener:Landroid/view/View$OnClickListener;

    .line 153
    new-instance p1, Lcom/amazon/android/widget/HorizontalPagingView$2;

    invoke-direct {p1, p0}, Lcom/amazon/android/widget/HorizontalPagingView$2;-><init>(Lcom/amazon/android/widget/HorizontalPagingView;)V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->upListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 173
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->buttonViews:Ljava/util/List;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageBreakIndices:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->paginationComputed:Z

    .line 70
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->cachedPageStartPositions:Landroid/util/SparseIntArray;

    .line 75
    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    .line 80
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isUserScrolling:Z

    .line 87
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isAwaitingPageTurn:Z

    .line 93
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isPageTurning:Z

    .line 100
    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->dividerWidth:I

    .line 111
    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidth:I

    .line 113
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtons:Ljava/util/List;

    const/4 p2, 0x1

    .line 125
    iput-boolean p2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->skipScroll:Z

    .line 134
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->passedSlop:Z

    .line 137
    new-instance p1, Lcom/amazon/android/widget/HorizontalPagingView$1;

    invoke-direct {p1, p0}, Lcom/amazon/android/widget/HorizontalPagingView$1;-><init>(Lcom/amazon/android/widget/HorizontalPagingView;)V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageTurnListener:Landroid/view/View$OnClickListener;

    .line 153
    new-instance p1, Lcom/amazon/android/widget/HorizontalPagingView$2;

    invoke-direct {p1, p0}, Lcom/amazon/android/widget/HorizontalPagingView$2;-><init>(Lcom/amazon/android/widget/HorizontalPagingView;)V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->upListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->buttonViews:Ljava/util/List;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageBreakIndices:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->paginationComputed:Z

    .line 70
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->cachedPageStartPositions:Landroid/util/SparseIntArray;

    .line 75
    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    .line 80
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isUserScrolling:Z

    .line 87
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isAwaitingPageTurn:Z

    .line 93
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isPageTurning:Z

    .line 100
    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->dividerWidth:I

    .line 111
    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidth:I

    .line 113
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtons:Ljava/util/List;

    const/4 p2, 0x1

    .line 125
    iput-boolean p2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->skipScroll:Z

    .line 134
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->passedSlop:Z

    .line 137
    new-instance p1, Lcom/amazon/android/widget/HorizontalPagingView$1;

    invoke-direct {p1, p0}, Lcom/amazon/android/widget/HorizontalPagingView$1;-><init>(Lcom/amazon/android/widget/HorizontalPagingView;)V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageTurnListener:Landroid/view/View$OnClickListener;

    .line 153
    new-instance p1, Lcom/amazon/android/widget/HorizontalPagingView$2;

    invoke-direct {p1, p0}, Lcom/amazon/android/widget/HorizontalPagingView$2;-><init>(Lcom/amazon/android/widget/HorizontalPagingView;)V

    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->upListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/widget/HorizontalPagingView;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    return p0
.end method

.method static synthetic access$002(Lcom/amazon/android/widget/HorizontalPagingView;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    return p1
.end method

.method static synthetic access$100(Lcom/amazon/android/widget/HorizontalPagingView;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtons:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/android/widget/HorizontalPagingView;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/android/widget/HorizontalPagingView;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/HorizontalPagingView;->scrollToPageIndex(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/amazon/android/widget/HorizontalPagingView;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isPageTurning:Z

    return p1
.end method

.method static boundFloat(FFF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpg-float p1, p0, p2

    if-gez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method static boundInt(III)I
    .locals 0

    if-le p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-ge p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private calculatePagination(I)I
    .locals 11

    .line 394
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->upListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 396
    iget v3, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidth:I

    iget v4, p0, Lcom/amazon/android/widget/HorizontalPagingView;->dividerWidth:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 398
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 399
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 401
    :goto_2
    iget-object v7, p0, Lcom/amazon/android/widget/HorizontalPagingView;->buttonViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 402
    iget-object v7, p0, Lcom/amazon/android/widget/HorizontalPagingView;->buttonViews:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 404
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/amazon/android/widget/HorizontalPagingView;->dividerWidth:I

    add-int/2addr v8, v9

    .line 406
    iget-object v9, p0, Lcom/amazon/android/widget/HorizontalPagingView;->buttonViews:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v1

    if-ne v6, v9, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    .line 407
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    :goto_4
    if-nez v9, :cond_4

    .line 408
    iget v9, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidth:I

    goto :goto_5

    :cond_4
    const/4 v9, 0x0

    :goto_5
    add-int/2addr v9, v8

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidth:I

    goto :goto_6

    :cond_5
    const/4 v10, 0x0

    :goto_6
    add-int/2addr v9, v10

    if-eqz v0, :cond_6

    .line 413
    iget v10, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidth:I

    goto :goto_7

    :cond_6
    const/4 v10, 0x0

    :goto_7
    sub-int v10, p1, v10

    if-le v9, v10, :cond_7

    const/16 v8, 0x8

    .line 422
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_7
    add-int/2addr v9, v3

    if-le v9, p1, :cond_a

    .line 432
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto :goto_8

    :cond_8
    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_9

    .line 436
    iget v7, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidth:I

    mul-int/lit8 v7, v7, 0x2

    goto :goto_9

    :cond_9
    iget v7, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidth:I

    :goto_9
    add-int/2addr v3, v7

    .line 438
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :cond_a
    add-int/2addr v3, v8

    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_b
    if-lez v3, :cond_d

    .line 450
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_c

    iget v2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidth:I

    :cond_c
    add-int/2addr v3, v2

    .line 451
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_d
    iput-object v5, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageBreakIndices:Ljava/util/List;

    .line 455
    iput-object v4, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    .line 456
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method private getPageIndexOfChild(Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 324
    :goto_0
    iget-object v2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 325
    iget-object v2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 327
    instance-of v3, v2, Lcom/amazon/android/widget/ReversiblePagingCaretView;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    if-ne p1, v2, :cond_2

    .line 331
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method private getPageStart(I)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->cachedPageStartPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 567
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    .line 568
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 572
    iget-object v3, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 573
    iget-object v3, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidth:I

    iget v5, p0, Lcom/amazon/android/widget/HorizontalPagingView;->dividerWidth:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    mul-int/lit8 v1, p1, 0x2

    .line 578
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    :goto_1
    add-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->dividerWidth:I

    mul-int v0, v0, v1

    add-int/2addr v2, v0

    .line 580
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->cachedPageStartPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return v2
.end method

.method private getPercentBetweenPages()F
    .locals 8

    .line 655
    iget-boolean v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->skipScroll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 659
    :cond_0
    iget v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/HorizontalPagingView;->getPageStart(I)I

    move-result v0

    .line 660
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    .line 661
    invoke-direct {p0}, Lcom/amazon/android/widget/HorizontalPagingView;->isGoingRight()Z

    move-result v3

    .line 662
    iget v4, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, -0x1

    :goto_0
    add-int/2addr v4, v6

    invoke-direct {p0, v4}, Lcom/amazon/android/widget/HorizontalPagingView;->getPageStart(I)I

    move-result v4

    if-eqz v3, :cond_2

    .line 664
    iget v6, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    add-int/2addr v6, v5

    iget-object v7, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageBreakIndices:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v5

    if-lt v6, v7, :cond_3

    :cond_2
    if-nez v3, :cond_5

    iget v3, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    sub-int/2addr v3, v5

    if-ltz v3, :cond_5

    :cond_3
    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    sub-int/2addr v2, v0

    int-to-float v2, v2

    sub-int/2addr v4, v0

    int-to-float v0, v4

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 674
    invoke-static {v2, v0, v1}, Lcom/amazon/android/widget/HorizontalPagingView;->boundFloat(FFF)F

    move-result v0

    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method private insertPageNavButtons()V
    .locals 7

    .line 343
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 344
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageBreakIndices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_2

    .line 347
    iget-object v4, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageBreakIndices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 350
    sget v5, Lcom/amazon/kindle/wl/R$layout;->prev_next_button:I

    iget-object v6, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/amazon/android/widget/ReversiblePagingCaretView;

    .line 353
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result v6

    if-ne v6, v2, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->setProgress(F)V

    .line 354
    iget-object v6, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

    iget v6, v6, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->mButtonTextColor:I

    invoke-virtual {v5, v6}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->setCaretColor(I)V

    .line 355
    iget-object v6, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageTurnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v6, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 357
    iget-object v4, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtons:Ljava/util/List;

    invoke-interface {v4, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 363
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 364
    iget-object v3, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageBreakIndices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v1, 0x1

    move v4, v1

    .line 371
    :goto_2
    invoke-direct {p0, v4}, Lcom/amazon/android/widget/HorizontalPagingView;->getPageStart(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/amazon/android/widget/HorizontalPagingView;->getPageStart(I)I

    move-result v3

    invoke-virtual {v5, v4, v3}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->setScrollBounds(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 374
    :cond_2
    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->upListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_3

    .line 376
    sget v1, Lcom/amazon/kindle/wl/R$layout;->up_button:I

    iget-object v2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/widget/ReversiblePagingCaretView;

    .line 377
    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

    iget v1, v1, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->mButtonTextColor:I

    invoke-virtual {v0, v1}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->setCaretColor(I)V

    .line 378
    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->upListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_3
    return-void
.end method

.method private interpolateChildWidth()I
    .locals 5

    .line 620
    invoke-direct {p0}, Lcom/amazon/android/widget/HorizontalPagingView;->isGoingRight()Z

    move-result v0

    .line 621
    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    iget v2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 622
    invoke-direct {p0}, Lcom/amazon/android/widget/HorizontalPagingView;->getPercentBetweenPages()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    return v1

    .line 628
    :cond_0
    iget-object v3, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    iget v4, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    add-int/2addr v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v3, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, v2

    add-float/2addr v3, v0

    float-to-int v0, v3

    return v0
.end method

.method private isGoingRight()Z
    .locals 2

    .line 641
    iget v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/HorizontalPagingView;->getPageStart(I)I

    move-result v0

    .line 642
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInStartingPosition()Z
    .locals 6

    .line 305
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 309
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 310
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 312
    :cond_2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iget-object v3, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private scrollToPageIndex(I)V
    .locals 4

    .line 590
    iget-boolean v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isPageTurning:Z

    if-eqz v0, :cond_0

    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 595
    sget-object p1, Lcom/amazon/android/widget/HorizontalPagingView;->TAG:Ljava/lang/String;

    const-string v0, "Trying to scroll to a page that doesn\'t exist. Bailing."

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 599
    iput-boolean v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isPageTurning:Z

    .line 600
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    .line 601
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/HorizontalPagingView;->getPageStart(I)I

    move-result p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    aput p1, v2, v0

    const-string/jumbo p1, "scrollX"

    .line 602
    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 604
    invoke-direct {p0}, Lcom/amazon/android/widget/HorizontalPagingView;->getPercentBetweenPages()F

    move-result v0

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-long v1, v1

    .line 605
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 606
    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 608
    sget-object v0, Lcom/amazon/android/widget/PagingButtonWidget;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 610
    :cond_2
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private scrolledToPosition(I)V
    .locals 10

    .line 685
    iget v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/HorizontalPagingView;->getPageStart(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 688
    iget v4, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageBreakIndices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v2

    if-lt v4, v5, :cond_2

    :cond_1
    if-nez v3, :cond_c

    iget v4, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    sub-int/2addr v4, v2

    if-ltz v4, :cond_c

    :cond_2
    if-eq v0, p1, :cond_c

    .line 691
    iget-object v4, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    iget v5, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v3, :cond_3

    .line 695
    iget v5, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    add-int/2addr v5, v2

    invoke-direct {p0, v5}, Lcom/amazon/android/widget/HorizontalPagingView;->getPageStart(I)I

    move-result v5

    goto :goto_1

    :cond_3
    move v5, v0

    .line 696
    :goto_1
    iget-object v6, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    iget v7, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    const/4 v8, -0x1

    if-eqz v3, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, -0x1

    :goto_2
    add-int/2addr v7, v9

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v4, v6, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    if-eqz v3, :cond_7

    if-eqz v7, :cond_6

    .line 700
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    if-lt p1, v0, :cond_9

    goto :goto_4

    :cond_6
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    if-lt p1, v0, :cond_9

    :goto_4
    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    if-eqz v7, :cond_8

    .line 704
    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    if-gt p1, v5, :cond_9

    goto :goto_4

    :cond_8
    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-gt p1, v5, :cond_9

    goto :goto_4

    :cond_9
    :goto_5
    if-eqz v1, :cond_b

    .line 710
    iget p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    if-eqz v3, :cond_a

    const/4 v8, 0x1

    :cond_a
    add-int/2addr p1, v8

    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    .line 711
    iput-boolean v2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isAwaitingPageTurn:Z

    .line 714
    :cond_b
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_c
    return-void
.end method

.method private sendMotionEventToButtons(Landroid/view/MotionEvent;)V
    .locals 3

    .line 510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 510
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 512
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private sendMotionEventToSelf(Landroid/view/MotionEvent;)V
    .locals 2

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 522
    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/HorizontalPagingView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method


# virtual methods
.method protected addButtons(Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->buttonViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 748
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->buttonViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 749
    iput-object p2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->upListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x0

    .line 750
    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    .line 751
    iget-object p2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->cachedPageStartPositions:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    .line 752
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->paginationComputed:Z

    .line 753
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method protected clearButtons()V
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->buttonViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 761
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 762
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageBreakIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 763
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->cachedPageStartPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    .line 764
    iput-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->upListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 765
    iput v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    .line 766
    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 767
    iput-boolean v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->paginationComputed:Z

    .line 768
    invoke-virtual {p0, v0, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lcom/amazon/android/widget/HorizontalPagingView;->scrollStart:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/amazon/android/widget/HorizontalPagingView;->slop:I

    if-lt v0, v3, :cond_0

    .line 467
    iput-boolean v2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->passedSlop:Z

    .line 471
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 472
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 473
    invoke-direct {p0, v0}, Lcom/amazon/android/widget/HorizontalPagingView;->sendMotionEventToButtons(Landroid/view/MotionEvent;)V

    .line 474
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 477
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/HorizontalPagingView;->sendMotionEventToSelf(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->scrollStart:I

    .line 480
    iput-boolean v3, p0, Lcom/amazon/android/widget/HorizontalPagingView;->passedSlop:Z

    .line 482
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/HorizontalPagingView;->sendMotionEventToButtons(Landroid/view/MotionEvent;)V

    .line 483
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/HorizontalPagingView;->sendMotionEventToSelf(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_4

    .line 486
    iget-boolean v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->passedSlop:Z

    if-nez v0, :cond_3

    .line 487
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/HorizontalPagingView;->sendMotionEventToButtons(Landroid/view/MotionEvent;)V

    .line 491
    iput-boolean v3, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isUserScrolling:Z

    goto :goto_0

    .line 493
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/HorizontalPagingView;->sendMotionEventToSelf(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_5

    .line 497
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/HorizontalPagingView;->sendMotionEventToButtons(Landroid/view/MotionEvent;)V

    .line 498
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/HorizontalPagingView;->sendMotionEventToSelf(Landroid/view/MotionEvent;)V

    :cond_5
    :goto_0
    return v2
.end method

.method public fling(I)V
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isAwaitingPageTurn:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 208
    iget v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    goto :goto_0

    .line 210
    :cond_1
    iget p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageBreakIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    .line 213
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 182
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 184
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->slop:I

    .line 192
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setSmoothScrollingEnabled(Z)V

    .line 194
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    .line 195
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/wl/R$dimen;->paging_widget_nav_button_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidth:I

    return-void

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should have exactly one child that\'s a subclass of ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 270
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    const/4 p1, 0x0

    if-lez p4, :cond_0

    sub-int/2addr p5, p3

    if-lez p5, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 273
    :goto_0
    iget-boolean p3, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isUserScrolling:Z

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    .line 274
    iget p2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    invoke-direct {p0, p2}, Lcom/amazon/android/widget/HorizontalPagingView;->scrollToPageIndex(I)V

    .line 277
    :cond_1
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isAwaitingPageTurn:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->buttonViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    .line 222
    invoke-direct {p0}, Lcom/amazon/android/widget/HorizontalPagingView;->isInStartingPosition()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->paginationComputed:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->paginationComputed:Z

    .line 226
    iget-object v2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 227
    iget-object v2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->buttonViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 228
    iget-object v4, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 232
    iget-object v3, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 233
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 234
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/HorizontalPagingView;->calculatePagination(I)I

    move-result v3

    if-gtz v3, :cond_1

    .line 237
    sget-object p1, Lcom/amazon/android/widget/HorizontalPagingView;->TAG:Ljava/lang/String;

    const-string p2, "Went to measure pages, but no pages were created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0, v1, v1}, Landroid/widget/HorizontalScrollView;->setMeasuredDimension(II)V

    return-void

    .line 242
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result v4

    if-ne v4, v0, :cond_2

    sub-int/2addr v3, v0

    .line 243
    iput v3, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    .line 244
    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_1

    .line 246
    :cond_2
    iput v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    .line 249
    :goto_1
    invoke-direct {p0}, Lcom/amazon/android/widget/HorizontalPagingView;->insertPageNavButtons()V

    .line 250
    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->cachedPageStartPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 252
    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 253
    iput-boolean v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->skipScroll:Z

    .line 255
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    iget v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_2

    .line 258
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An individual child is wider than the widget"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/amazon/android/widget/HorizontalPagingView;->interpolateChildWidth()I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->setMeasuredDimension(II)V

    goto :goto_3

    .line 264
    :cond_5
    invoke-virtual {p0, v1, v1}, Landroid/widget/HorizontalScrollView;->setMeasuredDimension(II)V

    :goto_3
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 544
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 546
    iget p2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    const/4 p4, 0x0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    iget p4, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    add-int/2addr p4, p3

    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    if-gt p2, p4, :cond_1

    .line 547
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result p4

    if-ne p4, p3, :cond_0

    iget-object p4, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtons:Ljava/util/List;

    .line 548
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, p3

    sub-int p4, p2, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    goto :goto_1

    :cond_0
    move p4, p2

    .line 549
    :goto_1
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtons:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/android/widget/ReversiblePagingCaretView;

    invoke-virtual {p4, p1}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->setXScrollOffset(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 552
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 528
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 531
    iput-boolean v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isUserScrolling:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 533
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/HorizontalPagingView;->scrolledToPosition(I)V

    .line 534
    iput-boolean v2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isUserScrolling:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 536
    iput-boolean v2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isUserScrolling:Z

    .line 539
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1000

    if-ne p1, v2, :cond_0

    .line 787
    iget p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    add-int/2addr p1, v1

    iget-object p2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2, v0}, Lcom/amazon/android/widget/HorizontalPagingView;->boundInt(III)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    .line 788
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/HorizontalPagingView;->scrollToPageIndex(I)V

    return v1

    :cond_0
    const/16 v2, 0x2000

    if-ne p1, v2, :cond_1

    .line 791
    iget p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    sub-int/2addr p1, v1

    iget-object p2, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2, v0}, Lcom/amazon/android/widget/HorizontalPagingView;->boundInt(III)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    .line 792
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/HorizontalPagingView;->scrollToPageIndex(I)V

    return v1

    :cond_1
    const/16 v2, 0x40

    if-ne p1, v2, :cond_3

    .line 799
    iget-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 801
    invoke-static {p1, v2, p2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 805
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 288
    instance-of v0, p2, Lcom/amazon/android/widget/ReversiblePagingCaretView;

    if-nez v0, :cond_0

    .line 289
    invoke-direct {p0, p2}, Lcom/amazon/android/widget/HorizontalPagingView;->getPageIndexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 290
    iget v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pageLengths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    .line 291
    iput-boolean v1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->isUserScrolling:Z

    .line 292
    iput v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->visiblePage:I

    .line 293
    invoke-direct {p0, v0}, Lcom/amazon/android/widget/HorizontalPagingView;->scrollToPageIndex(I)V

    .line 296
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method protected setButtonDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 778
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 779
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView;->firstChild:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 780
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->dividerWidth:I

    .line 781
    iget-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->cachedPageStartPositions:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public setPagingButtonWidgetAttrs(Lcom/amazon/android/widget/PagingButtonWidgetAttrs;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

    return-void
.end method

.method public setSkipScroll(Z)V
    .locals 0

    .line 818
    iput-boolean p1, p0, Lcom/amazon/android/widget/HorizontalPagingView;->skipScroll:Z

    return-void
.end method
