.class public final Lcom/amazon/kcp/library/GridHorizontalSpacingDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RecyclerViewDecorations.kt"


# instance fields
.field private final centerGapWidth:I

.field private final spacing:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/amazon/kcp/library/GridHorizontalSpacingDecoration;->spacing:I

    iput p2, p0, Lcom/amazon/kcp/library/GridHorizontalSpacingDecoration;->centerGapWidth:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string/jumbo v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    .line 23
    instance-of v0, p4, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_2

    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/amazon/kcp/library/GridHorizontalSpacingDecoration;->centerGapWidth:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p4

    .line 30
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 31
    rem-int/2addr p2, p4

    div-int/lit8 p4, p4, 0x2

    if-ge p2, p4, :cond_1

    .line 32
    iget p2, p0, Lcom/amazon/kcp/library/GridHorizontalSpacingDecoration;->spacing:I

    div-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 33
    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/amazon/kcp/library/GridHorizontalSpacingDecoration;->centerGapWidth:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 35
    :cond_1
    iget p2, p0, Lcom/amazon/kcp/library/GridHorizontalSpacingDecoration;->spacing:I

    div-int/lit8 p3, p2, 0x2

    iget p4, p0, Lcom/amazon/kcp/library/GridHorizontalSpacingDecoration;->centerGapWidth:I

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 36
    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void

    .line 24
    :cond_2
    :goto_1
    iget p2, p0, Lcom/amazon/kcp/library/GridHorizontalSpacingDecoration;->spacing:I

    div-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 25
    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
