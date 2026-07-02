.class public final Lcom/amazon/kcp/library/ListDividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RecyclerViewDecorations.kt"


# instance fields
.field private final dividerDrawable:Landroid/graphics/drawable/Drawable;

.field private final numHeadersToSkip:I

.field private final skipFooter:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;IZ)V
    .locals 1

    const-string v0, "dividerDrawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/ListDividerDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/amazon/kcp/library/ListDividerDecoration;->numHeadersToSkip:I

    iput-boolean p3, p0, Lcom/amazon/kcp/library/ListDividerDecoration;->skipFooter:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 64
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/ListDividerDecoration;-><init>(Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    .line 67
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 68
    iget v1, p0, Lcom/amazon/kcp/library/ListDividerDecoration;->numHeadersToSkip:I

    .line 69
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-boolean v3, p0, Lcom/amazon/kcp/library/ListDividerDecoration;->skipFooter:Z

    sub-int/2addr v2, v3

    :goto_0
    if-ge v1, v2, :cond_1

    .line 71
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "child"

    .line 72
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 73
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 74
    iget-object v4, p0, Lcom/amazon/kcp/library/ListDividerDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 75
    iget-object v5, p0, Lcom/amazon/kcp/library/ListDividerDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p3, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    iget-object v3, p0, Lcom/amazon/kcp/library/ListDividerDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
