.class public Lcom/amazon/kcp/font/FontDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FontDividerItemDecoration.java"


# static fields
.field private static final ATTR:[I


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 19
    sget v1, Lcom/amazon/kcp/more/R$attr;->ruby_list_item_divider:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/font/FontDividerItemDecoration;->ATTR:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 23
    sget-object v0, Lcom/amazon/kcp/font/FontDividerItemDecoration;->ATTR:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/font/FontDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 51
    iget-object p2, p0, Lcom/amazon/kcp/font/FontDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 32
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 33
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 35
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 37
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 39
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 40
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 42
    iget-object v2, p0, Lcom/amazon/kcp/font/FontDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 43
    iget-object v5, p0, Lcom/amazon/kcp/font/FontDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 44
    iget-object v1, p0, Lcom/amazon/kcp/font/FontDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
