.class public Lcom/amazon/klo/list/TermListView;
.super Landroid/widget/ScrollView;
.source "TermListView.java"

# interfaces
.implements Lcom/amazon/klo/list/ITermListViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;,
        Lcom/amazon/klo/list/TermListView$ScrollState;,
        Lcom/amazon/klo/list/TermListView$OnScrollListener;,
        Lcom/amazon/klo/list/TermListView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final DELTA_TIME_UNIT_CONVERTER:F = 1.0E9f

.field private static final MAX_SCROLL_PER_FRAME:I = 0x12c

.field private static final MINIMUM_INITIAL_PLACEHOLDERS_CALCULATED:I = 0x28

.field private static final NOT_SCROLLING:I = 0x0

.field private static final SCROLLING_DOWN:I = 0x1

.field private static final SCROLLING_UP:I = -0x1

.field private static final SCROLL_ACCELERATION:I = 0xfa0

.field private static final SCROLL_FRICTION:F = 0.5f

.field private static final SCROLL_MAX_VELOCITY:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bufferColumnsOnNextUpdate:Z

.field private columns:Lcom/amazon/klo/list/TermListViewColumns;

.field private currentTaskId:I

.field private flingVelocity:I

.field private itemClickListener:Lcom/amazon/klo/list/TermListView$OnItemClickListener;

.field private maxOverscroll:I

.field private placeholderCalculator:Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;

.field private placeholders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/klo/list/TermListItemPlaceholder;",
            ">;"
        }
    .end annotation
.end field

.field private plannedScrollExists:Z

.field private plannedScrollY:I

.field private savedColumnWidth:I

.field private scrollBuffer:I

.field private scrollListener:Lcom/amazon/klo/list/TermListView$OnScrollListener;

.field private terms:Lcom/amazon/klo/list/TermListAdapter;

.field private timeOfLastUpdate:J

.field private viewUpdateEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/klo/list/TermListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/klo/list/TermListView;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/amazon/klo/list/TermListView;->currentTaskId:I

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcom/amazon/klo/list/TermListView;->viewUpdateEnabled:Z

    .line 45
    iput-boolean v0, p0, Lcom/amazon/klo/list/TermListView;->plannedScrollExists:Z

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/amazon/klo/list/TermListView;->initializeView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/amazon/klo/list/TermListView;->currentTaskId:I

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcom/amazon/klo/list/TermListView;->viewUpdateEnabled:Z

    .line 45
    iput-boolean v0, p0, Lcom/amazon/klo/list/TermListView;->plannedScrollExists:Z

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/amazon/klo/list/TermListView;->initializeView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 42
    iput p3, p0, Lcom/amazon/klo/list/TermListView;->currentTaskId:I

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/amazon/klo/list/TermListView;->viewUpdateEnabled:Z

    .line 45
    iput-boolean p3, p0, Lcom/amazon/klo/list/TermListView;->plannedScrollExists:Z

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/amazon/klo/list/TermListView;->initializeView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/klo/list/TermListView;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/amazon/klo/list/TermListView;->plannedScrollExists:Z

    return p1
.end method

.method static synthetic access$100(Lcom/amazon/klo/list/TermListView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/amazon/klo/list/TermListView;->plannedScrollY:I

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/klo/list/TermListView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListView;->disableViewUpdates()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/klo/list/TermListView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/amazon/klo/list/TermListView;->savedColumnWidth:I

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/klo/list/TermListView;Lcom/amazon/klo/list/TermListItemPlaceholder;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/amazon/klo/list/TermListView;->processCalculatedPlaceholder(Lcom/amazon/klo/list/TermListItemPlaceholder;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/klo/list/TermListView;)Z
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListView;->minimumInitialCalculatedPlaceholdersReached()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/klo/list/TermListView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListView;->enableViewUpdates()V

    return-void
.end method

.method private calculatePlaceholders()V
    .locals 6

    .line 593
    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListView;->cancelPlaceholderCalculationTask()V

    .line 595
    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView;->columns:Lcom/amazon/klo/list/TermListViewColumns;

    .line 598
    iget-object v1, p0, Lcom/amazon/klo/list/TermListView;->terms:Lcom/amazon/klo/list/TermListAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v0}, Lcom/amazon/klo/list/TermListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 600
    new-instance v4, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;

    invoke-direct {v4, p0, v2}, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;-><init>(Lcom/amazon/klo/list/TermListView;Lcom/amazon/klo/list/TermListView$1;)V

    iput-object v4, p0, Lcom/amazon/klo/list/TermListView;->placeholderCalculator:Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;

    .line 601
    iget v2, p0, Lcom/amazon/klo/list/TermListView;->currentTaskId:I

    invoke-virtual {v4, v2}, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;->setId(I)V

    .line 602
    iget-object v2, p0, Lcom/amazon/klo/list/TermListView;->placeholderCalculator:Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/klo/list/TermListView;->terms:Lcom/amazon/klo/list/TermListAdapter;

    aput-object v5, v4, v3

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/amazon/klo/list/TermListView;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    aput-object v0, v4, v3

    const/4 v0, 0x3

    aput-object v1, v4, v0

    invoke-virtual {v2, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private clearColumns()V
    .locals 2

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/amazon/klo/list/TermListView;->bufferColumnsOnNextUpdate:Z

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListView;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/klo/list/TermListView;->placeholders:Ljava/util/ArrayList;

    .line 129
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView;->columns:Lcom/amazon/klo/list/TermListViewColumns;

    invoke-virtual {v0}, Lcom/amazon/klo/list/TermListViewColumns;->clearPlaceholders()V

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setScrollY(I)V

    return-void
.end method

.method private disableViewUpdates()V
    .locals 1

    const/4 v0, 0x0

    .line 613
    iput-boolean v0, p0, Lcom/amazon/klo/list/TermListView;->viewUpdateEnabled:Z

    return-void
.end method

.method private enableViewUpdates()V
    .locals 1

    .line 618
    iget-boolean v0, p0, Lcom/amazon/klo/list/TermListView;->viewUpdateEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 620
    iput-boolean v0, p0, Lcom/amazon/klo/list/TermListView;->viewUpdateEnabled:Z

    .line 621
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListView;->updateView()V

    :cond_0
    return-void
.end method

.method private getDeltaTime()F
    .locals 4

    .line 319
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 320
    iget-wide v2, p0, Lcom/amazon/klo/list/TermListView;->timeOfLastUpdate:J

    sub-long v2, v0, v2

    .line 321
    iput-wide v0, p0, Lcom/amazon/klo/list/TermListView;->timeOfLastUpdate:J

    long-to-float v0, v2

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    return v0
.end method

.method public static getDirectionOfVelocity(I)I
    .locals 0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getMaxScrollY()I
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView;->columns:Lcom/amazon/klo/list/TermListViewColumns;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private initializeView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 97
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v0

    iput v0, p0, Lcom/amazon/klo/list/TermListView;->maxOverscroll:I

    .line 104
    sget-object v0, Lcom/amazon/klo/R$styleable;->TermListView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 107
    :try_start_0
    sget v0, Lcom/amazon/klo/R$styleable;->TermListView_numColumns:I

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 108
    sget v2, Lcom/amazon/klo/R$styleable;->TermListView_listSelector:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    iput v1, p0, Lcom/amazon/klo/list/TermListView;->savedColumnWidth:I

    .line 117
    new-instance p2, Lcom/amazon/klo/list/TermListViewColumns;

    invoke-direct {p2, p1, p0, v2, v0}, Lcom/amazon/klo/list/TermListViewColumns;-><init>(Landroid/content/Context;Lcom/amazon/klo/list/ITermListViewProvider;Landroid/graphics/drawable/Drawable;I)V

    iput-object p2, p0, Lcom/amazon/klo/list/TermListView;->columns:Lcom/amazon/klo/list/TermListViewColumns;

    .line 118
    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-void

    :catchall_0
    move-exception p1

    .line 112
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    throw p1
.end method

.method private minimumInitialCalculatedPlaceholdersReached()Z
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private planScrollTo(I)V
    .locals 1

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/amazon/klo/list/TermListView;->plannedScrollExists:Z

    .line 143
    iput p1, p0, Lcom/amazon/klo/list/TermListView;->plannedScrollY:I

    return-void
.end method

.method private processCalculatedPlaceholder(Lcom/amazon/klo/list/TermListItemPlaceholder;I)V
    .locals 1

    .line 491
    iget v0, p0, Lcom/amazon/klo/list/TermListView;->currentTaskId:I

    if-ne p2, v0, :cond_0

    .line 493
    iget-object p2, p0, Lcom/amazon/klo/list/TermListView;->columns:Lcom/amazon/klo/list/TermListViewColumns;

    iget-boolean v0, p0, Lcom/amazon/klo/list/TermListView;->viewUpdateEnabled:Z

    invoke-virtual {p2, p1, v0}, Lcom/amazon/klo/list/TermListViewColumns;->addPlaceholder(Lcom/amazon/klo/list/TermListItemPlaceholder;Z)V

    .line 494
    iget-object p2, p0, Lcom/amazon/klo/list/TermListView;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private reassignColumns(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/klo/list/TermListItemPlaceholder;",
            ">;)V"
        }
    .end annotation

    .line 510
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListView;->clearColumns()V

    const/4 v0, 0x0

    .line 513
    iput-boolean v0, p0, Lcom/amazon/klo/list/TermListView;->viewUpdateEnabled:Z

    .line 514
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/klo/list/TermListItemPlaceholder;

    .line 516
    iget v1, p0, Lcom/amazon/klo/list/TermListView;->currentTaskId:I

    invoke-direct {p0, v0, v1}, Lcom/amazon/klo/list/TermListView;->processCalculatedPlaceholder(Lcom/amazon/klo/list/TermListItemPlaceholder;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 518
    iput-boolean p1, p0, Lcom/amazon/klo/list/TermListView;->viewUpdateEnabled:Z

    return-void
.end method

.method private updateView()V
    .locals 3

    .line 239
    iget-boolean v0, p0, Lcom/amazon/klo/list/TermListView;->viewUpdateEnabled:Z

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListView;->getScrollRangeStart()I

    move-result v0

    .line 242
    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListView;->getScrollRangeEnd()I

    move-result v1

    .line 245
    iget-boolean v2, p0, Lcom/amazon/klo/list/TermListView;->bufferColumnsOnNextUpdate:Z

    if-eqz v2, :cond_0

    sub-int v2, v1, v0

    sub-int/2addr v0, v2

    sub-int v2, v1, v0

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 249
    iput-boolean v2, p0, Lcom/amazon/klo/list/TermListView;->bufferColumnsOnNextUpdate:Z

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/amazon/klo/list/TermListView;->columns:Lcom/amazon/klo/list/TermListViewColumns;

    invoke-virtual {v2, v0, v1}, Lcom/amazon/klo/list/TermListViewColumns;->updateViewRange(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public cancelPlaceholderCalculationTask()V
    .locals 3

    .line 500
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView;->placeholderCalculator:Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;

    if-eqz v0, :cond_0

    .line 502
    iget v1, p0, Lcom/amazon/klo/list/TermListView;->currentTaskId:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/amazon/klo/list/TermListView;->currentTaskId:I

    .line 503
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcom/amazon/klo/list/TermListView;->placeholderCalculator:Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 13

    .line 374
    iget v0, p0, Lcom/amazon/klo/list/TermListView;->flingVelocity:I

    invoke-static {v0}, Lcom/amazon/klo/list/TermListView;->getDirectionOfVelocity(I)I

    move-result v0

    .line 375
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListView;->getDeltaTime()F

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 379
    iget v5, p0, Lcom/amazon/klo/list/TermListView;->scrollBuffer:I

    .line 380
    iget v3, p0, Lcom/amazon/klo/list/TermListView;->flingVelocity:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcom/amazon/klo/list/TermListView;->scrollBuffer:I

    if-gez v3, :cond_0

    const/16 v4, -0x12c

    .line 385
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/amazon/klo/list/TermListView;->scrollBuffer:I

    goto :goto_0

    :cond_0
    const/16 v4, 0x12c

    .line 389
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/amazon/klo/list/TermListView;->scrollBuffer:I

    .line 392
    :goto_0
    iget v3, p0, Lcom/amazon/klo/list/TermListView;->flingVelocity:I

    int-to-float v4, v3

    mul-int/lit16 v6, v0, 0xfa0

    int-to-float v6, v6

    int-to-float v3, v3

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v3, v3, v7

    add-float/2addr v6, v3

    mul-float v6, v6, v1

    sub-float/2addr v4, v6

    float-to-int v1, v4

    iput v1, p0, Lcom/amazon/klo/list/TermListView;->flingVelocity:I

    .line 393
    invoke-static {v1}, Lcom/amazon/klo/list/TermListView;->getDirectionOfVelocity(I)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 395
    iput v2, p0, Lcom/amazon/klo/list/TermListView;->flingVelocity:I

    :cond_1
    if-eqz v5, :cond_3

    .line 400
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 401
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListView;->getMaxScrollY()I

    move-result v9

    const/4 v10, 0x0

    iget v11, p0, Lcom/amazon/klo/list/TermListView;->maxOverscroll:I

    const/4 v12, 0x0

    move-object v3, p0

    move v7, v0

    invoke-virtual/range {v3 .. v12}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    iput v2, p0, Lcom/amazon/klo/list/TermListView;->flingVelocity:I

    .line 405
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v3, v5

    .line 411
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/klo/list/TermListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 414
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v2, v1, v2, v0}, Lcom/amazon/klo/list/TermListView;->onScrollChanged(IIII)V

    goto :goto_1

    .line 419
    :cond_3
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListView;->updateView()V

    .line 422
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_2

    .line 426
    :cond_4
    iput v2, p0, Lcom/amazon/klo/list/TermListView;->scrollBuffer:I

    .line 427
    invoke-super {p0}, Landroid/widget/ScrollView;->computeScroll()V

    :goto_2
    return-void
.end method

.method public fling(I)V
    .locals 4

    .line 435
    iget v0, p0, Lcom/amazon/klo/list/TermListView;->flingVelocity:I

    invoke-static {v0}, Lcom/amazon/klo/list/TermListView;->getDirectionOfVelocity(I)I

    move-result v0

    .line 436
    invoke-static {p1}, Lcom/amazon/klo/list/TermListView;->getDirectionOfVelocity(I)I

    move-result v1

    if-nez v0, :cond_0

    .line 442
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amazon/klo/list/TermListView;->timeOfLastUpdate:J

    :cond_0
    const v2, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 447
    iget v1, p0, Lcom/amazon/klo/list/TermListView;->flingVelocity:I

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    mul-int p1, p1, v0

    iput p1, p0, Lcom/amazon/klo/list/TermListView;->flingVelocity:I

    goto :goto_0

    .line 451
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    mul-int p1, p1, v1

    iput p1, p0, Lcom/amazon/klo/list/TermListView;->flingVelocity:I

    .line 455
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    return-void
.end method

.method public getAdapter()Lcom/amazon/klo/list/TermListAdapter;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView;->terms:Lcom/amazon/klo/list/TermListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView;->terms:Lcom/amazon/klo/list/TermListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 290
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getSavedState()Landroid/os/Parcelable;
    .locals 1

    .line 528
    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getScrollBufferEnd()I
    .locals 2

    .line 210
    iget v0, p0, Lcom/amazon/klo/list/TermListView;->flingVelocity:I

    invoke-static {v0}, Lcom/amazon/klo/list/TermListView;->getDirectionOfVelocity(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 212
    iget v0, p0, Lcom/amazon/klo/list/TermListView;->scrollBuffer:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollBufferStart()I
    .locals 2

    .line 200
    iget v0, p0, Lcom/amazon/klo/list/TermListView;->flingVelocity:I

    invoke-static {v0}, Lcom/amazon/klo/list/TermListView;->getDirectionOfVelocity(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 202
    iget v0, p0, Lcom/amazon/klo/list/TermListView;->scrollBuffer:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollRangeEnd()I
    .locals 2

    .line 230
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListView;->getScrollBufferEnd()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getScrollRangeStart()I
    .locals 2

    .line 221
    iget-boolean v0, p0, Lcom/amazon/klo/list/TermListView;->plannedScrollExists:Z

    if-eqz v0, :cond_0

    .line 223
    iget v0, p0, Lcom/amazon/klo/list/TermListView;->plannedScrollY:I

    return v0

    .line 225
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListView;->getScrollBufferStart()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTermListView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;)Landroid/view/View;
    .locals 6

    .line 259
    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListView;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView;->terms:Lcom/amazon/klo/list/TermListAdapter;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/klo/list/TermListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public itemClicked(Landroid/view/View;I)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView;->itemClickListener:Lcom/amazon/klo/list/TermListView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v0, p1, p2}, Lcom/amazon/klo/list/TermListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    iget v0, p0, Lcom/amazon/klo/list/TermListView;->flingVelocity:I

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 340
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 152
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 154
    iget-boolean p1, p0, Lcom/amazon/klo/list/TermListView;->plannedScrollExists:Z

    if-eqz p1, :cond_0

    .line 157
    new-instance p1, Lcom/amazon/klo/list/TermListView$1;

    invoke-direct {p1, p0}, Lcom/amazon/klo/list/TermListView$1;-><init>(Lcom/amazon/klo/list/TermListView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 304
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 306
    iget-object p1, p0, Lcom/amazon/klo/list/TermListView;->terms:Lcom/amazon/klo/list/TermListAdapter;

    if-eqz p1, :cond_0

    .line 308
    iget p1, p0, Lcom/amazon/klo/list/TermListView;->savedColumnWidth:I

    iget-object p2, p0, Lcom/amazon/klo/list/TermListView;->columns:Lcom/amazon/klo/list/TermListViewColumns;

    invoke-virtual {p2}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnWidth()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 310
    iget-object p1, p0, Lcom/amazon/klo/list/TermListView;->columns:Lcom/amazon/klo/list/TermListViewColumns;

    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnWidth()I

    move-result p1

    iput p1, p0, Lcom/amazon/klo/list/TermListView;->savedColumnWidth:I

    .line 311
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListView;->clearColumns()V

    .line 312
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListView;->calculatePlaceholders()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 562
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 563
    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListView;->cancelPlaceholderCalculationTask()V

    .line 567
    iget-object p1, p0, Lcom/amazon/klo/list/TermListView;->terms:Lcom/amazon/klo/list/TermListAdapter;

    if-nez p1, :cond_0

    .line 569
    sget-object p1, Lcom/amazon/klo/list/TermListView;->TAG:Ljava/lang/String;

    const-string v0, "Attempting to restore scroll state without data to scroll over. Forgetting saved scroll state..."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    :cond_0
    sget-boolean p1, Lcom/amazon/klo/list/TermListView$ScrollState;->scrollStateSaved:Z

    if-eqz p1, :cond_2

    .line 573
    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListView;->scrollStateValid()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 575
    sget p1, Lcom/amazon/klo/list/TermListView$ScrollState;->columnWidth:I

    iput p1, p0, Lcom/amazon/klo/list/TermListView;->savedColumnWidth:I

    .line 576
    sget-object p1, Lcom/amazon/klo/list/TermListView$ScrollState;->placeholders:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/amazon/klo/list/TermListView;->reassignColumns(Ljava/util/ArrayList;)V

    .line 577
    sget p1, Lcom/amazon/klo/list/TermListView$ScrollState;->scrollPosition:F

    iget-object v1, p0, Lcom/amazon/klo/list/TermListView;->columns:Lcom/amazon/klo/list/TermListViewColumns;

    invoke-virtual {v1, v0}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnHeight(I)I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/amazon/klo/list/TermListView;->planScrollTo(I)V

    goto :goto_0

    .line 581
    :cond_1
    sput-boolean v0, Lcom/amazon/klo/list/TermListView$ScrollState;->scrollStateSaved:Z

    .line 584
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListView;->calculatePlaceholders()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 548
    invoke-super {p0}, Landroid/widget/ScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/amazon/klo/list/TermListView;->placeholders:Ljava/util/ArrayList;

    sput-object v1, Lcom/amazon/klo/list/TermListView$ScrollState;->placeholders:Ljava/util/ArrayList;

    .line 550
    iget v1, p0, Lcom/amazon/klo/list/TermListView;->savedColumnWidth:I

    sput v1, Lcom/amazon/klo/list/TermListView$ScrollState;->columnWidth:I

    .line 551
    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListView;->getScrollRangeStart()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/amazon/klo/list/TermListView;->columns:Lcom/amazon/klo/list/TermListViewColumns;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnHeight(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sput v1, Lcom/amazon/klo/list/TermListView$ScrollState;->scrollPosition:F

    const/4 v1, 0x1

    .line 552
    sput-boolean v1, Lcom/amazon/klo/list/TermListView$ScrollState;->scrollStateSaved:Z

    .line 554
    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListView;->saveScrollStateValidityInformation()V

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .line 461
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 463
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListView;->updateView()V

    .line 465
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView;->scrollListener:Lcom/amazon/klo/list/TermListView$OnScrollListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 467
    invoke-interface/range {v0 .. v5}, Lcom/amazon/klo/list/TermListView$OnScrollListener;->onScrollChanged(Lcom/amazon/klo/list/TermListView;IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 351
    iput v0, p0, Lcom/amazon/klo/list/TermListView;->flingVelocity:I

    .line 355
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;)V
    .locals 0

    .line 523
    invoke-virtual {p0, p1}, Lcom/amazon/klo/list/TermListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected saveScrollStateValidityInformation()V
    .locals 1

    .line 542
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    sput v0, Lcom/amazon/klo/list/TermListView$ScrollState;->fontScale:F

    return-void
.end method

.method protected scrollStateValid()Z
    .locals 2

    .line 537
    sget v0, Lcom/amazon/klo/list/TermListView$ScrollState;->fontScale:F

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAdapter(Lcom/amazon/klo/list/TermListAdapter;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/amazon/klo/list/TermListView;->terms:Lcom/amazon/klo/list/TermListAdapter;

    .line 194
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListView;->clearColumns()V

    .line 195
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListView;->calculatePlaceholders()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/amazon/klo/list/TermListView$OnItemClickListener;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/amazon/klo/list/TermListView;->itemClickListener:Lcom/amazon/klo/list/TermListView$OnItemClickListener;

    return-void
.end method

.method public setOnScrollChangedListener(Lcom/amazon/klo/list/TermListView$OnScrollListener;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/amazon/klo/list/TermListView;->scrollListener:Lcom/amazon/klo/list/TermListView$OnScrollListener;

    return-void
.end method
