.class public Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "PageFlipRecyclerView.java"


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final INFLEXION:F = 0.35f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private center:I

.field private childWidth:I

.field private mPhysicalCoeff:F

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private pageLabelTextSize:I

.field private pagePadding:I

.field private scale:F

.field private scroller:Landroidx/core/widget/ScrollerCompat;

.field private smoothScrollLock:Z

.field private thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

.field private xScrollOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    const-class v0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->TAG:Ljava/lang/String;

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->DECELERATION_RATE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->smoothScrollLock:Z

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->xScrollOffset:I

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->childWidth:I

    .line 47
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->center:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 49
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->scale:F

    .line 61
    invoke-direct {p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->smoothScrollLock:Z

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->xScrollOffset:I

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->childWidth:I

    .line 47
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->center:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 49
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->scale:F

    .line 66
    invoke-direct {p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->smoothScrollLock:Z

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->xScrollOffset:I

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->childWidth:I

    .line 47
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->center:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 49
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->scale:F

    .line 71
    invoke-direct {p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->init()V

    return-void
.end method

.method private getDuration(I)I
    .locals 6

    .line 273
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 274
    sget p1, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 275
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private getSplineDeceleration(I)D
    .locals 2

    .line 283
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333    # 0.35f

    mul-float p1, p1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iget v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->mPhysicalCoeff:F

    mul-float v0, v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private init()V
    .locals 3

    .line 76
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->nln_breadcrumb_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 77
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->nln_small_label_vert_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->pageLabelTextSize:I

    .line 78
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->page_flip_page_total_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 79
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->nln_divider_weight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->pagePadding:I

    return-void
.end method

.method private initChildWidth()I
    .locals 6

    .line 231
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 233
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 234
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    .line 239
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 240
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 244
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 245
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v4, :cond_1

    goto :goto_0

    .line 249
    :cond_1
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 251
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 252
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->childWidth:I

    .line 254
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->center:I

    .line 256
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 257
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 259
    iget v4, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->center:I

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->center:I

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 260
    iget v2, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->center:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->xScrollOffset:I

    return v1

    .line 263
    :cond_2
    iget v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->center:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->xScrollOffset:I

    return v3

    :cond_3
    :goto_0
    return v1
.end method

.method private initPhysicalCoeff()V
    .locals 2

    .line 291
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float v0, v0, v1

    const v1, 0x43c10b3d

    mul-float v0, v0, v1

    const v1, 0x3f570a3d    # 0.84f

    mul-float v0, v0, v1

    .line 292
    iput v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->mPhysicalCoeff:F

    return-void
.end method

.method private initializeScroller()Z
    .locals 5

    const/4 v0, 0x0

    .line 207
    :try_start_0
    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "mViewFlinger"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 209
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 213
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mScroller"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 214
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 215
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/ScrollerCompat;

    iput-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->scroller:Landroidx/core/widget/ScrollerCompat;

    .line 216
    invoke-direct {p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->initPhysicalCoeff()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    .line 221
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    return v0
.end method

.method private isShowingPlaceholders(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 1

    .line 126
    instance-of v0, p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->isShowingPlaceholders()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private publishScale(F)V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;

    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-direct {v1, v2, p1}, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;-><init>(Lcom/amazon/kindle/nln/NonLinearNavigationMode;F)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private updateScale(F)V
    .locals 3

    .line 105
    iget v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->scale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 110
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 111
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    sub-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    if-ltz v1, :cond_2

    if-ltz v0, :cond_2

    if-lez v2, :cond_2

    .line 114
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 117
    invoke-direct {p0, v0}, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->isShowingPlaceholders(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->smoothScrollLock:Z

    if-nez v0, :cond_2

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    .line 118
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 122
    :cond_2
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->scale:F

    return-void
.end method


# virtual methods
.method public fling(II)Z
    .locals 12

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fling velocity(dx, dy): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 142
    invoke-direct {p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->initializeScroller()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    invoke-direct {p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->initChildWidth()I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->scroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getFinalX()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->scroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    sub-int/2addr v1, v2

    .line 146
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    invoke-virtual {v2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getMRPRAdapterPosition()I

    move-result v2

    .line 148
    iget v3, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->childWidth:I

    div-int/lit8 v3, v3, 0x2

    if-gez v1, :cond_0

    mul-int/lit8 v3, v3, -0x1

    .line 152
    :cond_0
    iget v4, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->xScrollOffset:I

    add-int v5, v1, v4

    add-int/2addr v5, v3

    .line 153
    iget v3, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->childWidth:I

    rem-int v6, v5, v3

    sub-int/2addr v5, v6

    .line 154
    div-int v3, v5, v3

    if-eqz v3, :cond_5

    const/4 v6, -0x1

    if-eq v0, v6, :cond_5

    if-eq v2, v6, :cond_5

    add-int/2addr v3, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v0, v2, :cond_1

    int-to-float v4, v4

    .line 162
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    int-to-float v8, v1

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    or-int/2addr v4, v7

    if-ge v0, v2, :cond_2

    if-lt v2, v3, :cond_4

    :cond_2
    if-le v0, v2, :cond_3

    if-le v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :cond_4
    :goto_1
    or-int v0, v4, v6

    if-eqz v0, :cond_5

    sub-int/2addr v2, v3

    .line 166
    iget v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->childWidth:I

    mul-int v2, v2, v0

    add-int/2addr v5, v2

    .line 169
    :cond_5
    iget v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->xScrollOffset:I

    sub-int/2addr v5, v0

    .line 170
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->scroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v0

    add-int v9, v0, v5

    .line 171
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->getDuration(I)I

    move-result p1

    .line 172
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v0, v2, :cond_6

    int-to-float p1, p1

    int-to-float v0, v5

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    :cond_6
    move v11, p1

    .line 176
    iget-object v6, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->scroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v6}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v7

    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->scroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {p1}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v8

    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->scroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {p1}, Landroidx/core/widget/ScrollerCompat;->getFinalY()I

    move-result v10

    invoke-virtual/range {v6 .. v11}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIIII)V

    :cond_7
    return p2
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 184
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 188
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->smoothScrollLock:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 88
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 90
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->setShouldPadEnds(I)V

    .line 92
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p1

    .line 98
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 99
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->pageLabelTextSize:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->pagePadding:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 100
    invoke-direct {p0, p2}, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->updateScale(F)V

    .line 101
    invoke-direct {p0, p2}, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->publishScale(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->smoothScrollLock:Z

    .line 198
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setThumbnailManager(Lcom/amazon/kindle/nln/IThumbnailManager;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    return-void
.end method
