.class public final Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "StickyHeaderItemDecoration.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStickyHeaderItemDecoration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickyHeaderItemDecoration.kt\ncom/amazon/kcp/search/views/StickyHeaderItemDecoration\n+ 2 StickyHeaderItemDecoration.kt\ncom/amazon/kcp/search/views/StickyHeaderItemDecorationKt\n*L\n1#1,182:1\n179#2,4:183\n*E\n*S KotlinDebug\n*F\n+ 1 StickyHeaderItemDecoration.kt\ncom/amazon/kcp/search/views/StickyHeaderItemDecoration\n*L\n39#1,4:183\n*E\n"
.end annotation


# instance fields
.field private currentHeader:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Landroidx/recyclerview/widget/RecyclerView;

.field private final shouldFadeOutHeader:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean p2, p0, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->shouldFadeOutHeader:Z

    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration$1;-><init>(Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    .line 183
    new-instance p2, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration$$special$$inlined$doOnEachNextLayout$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration$$special$$inlined$doOnEachNextLayout$1;-><init>(Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static final synthetic access$setCurrentHeader$p(Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;Lkotlin/Pair;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->currentHeader:Lkotlin/Pair;

    return-void
.end method

.method private final drawHeader(Landroid/graphics/Canvas;Landroid/view/View;I)V
    .locals 1

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float p3, p3

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final fixLayoutSize(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5

    .line 148
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 150
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 155
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 156
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 153
    invoke-static {v0, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 160
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    add-int/2addr v3, p1

    .line 161
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    invoke-static {v1, v3, p1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    .line 164
    invoke-virtual {p2, v0, p1}, Landroid/view/View;->measure(II)V

    .line 165
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p2, v2, v2, p1, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private final getChildInContact(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;
    .locals 5

    .line 127
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 128
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 129
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 130
    invoke-virtual {p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 131
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    if-le v4, p2, :cond_0

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v3, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method private final getHeaderPositionForItem(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 1

    :goto_0
    if-ltz p2, :cond_1

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->isHeader(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private final getHeaderViewForItem(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 4

    .line 73
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 76
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->getHeaderPositionForItem(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-object v1

    .line 78
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 80
    iget-object v2, p0, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->currentHeader:Lkotlin/Pair;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->currentHeader:Lkotlin/Pair;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 81
    iget-object p1, p0, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->currentHeader:Lkotlin/Pair;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz p1, :cond_2

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_2
    return-object v1

    .line 84
    :cond_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    .line 86
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 87
    :cond_5
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "headerHolder.itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->fixLayoutSize(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->currentHeader:Lkotlin/Pair;

    :cond_6
    if-eqz v0, :cond_7

    .line 91
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_7
    return-object v1
.end method

.method private final isHeader(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 0

    .line 45
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->isHeader(I)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.amazon.kcp.search.views.SearchResultsRecyclerAdapter"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final moveHeader(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;I)V
    .locals 9

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    iget-boolean v0, p0, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->shouldFadeOutHeader:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p4

    invoke-virtual {p1, v0, p4, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 106
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/16 v3, 0xff

    if-lt v0, v2, :cond_1

    .line 108
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v1, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 109
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, p4

    int-to-float p4, v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p4, v2

    int-to-float v2, v3

    mul-float p4, p4, v2

    float-to-int p4, p4

    .line 107
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v6, v2

    .line 114
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, p4

    int-to-float p4, v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p4, v2

    int-to-float v2, v3

    mul-float p4, p4, v2

    float-to-int v7, p4

    const/16 v8, 0x1f

    move-object v2, p1

    move v3, v0

    .line 112
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 119
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    int-to-float p3, p3

    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 51
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    int-to-float p3, p3

    .line 52
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    .line 50
    invoke-virtual {p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string v0, "parent.findChildViewUnde\u2026oat()\n        ) ?: return"

    .line 53
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->getHeaderViewForItem(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 61
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    invoke-direct {p0, p2, v0}, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->getChildInContact(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->isHeader(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->moveHeader(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;I)V

    return-void

    .line 69
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->drawHeader(Landroid/graphics/Canvas;Landroid/view/View;I)V

    :cond_2
    return-void
.end method
