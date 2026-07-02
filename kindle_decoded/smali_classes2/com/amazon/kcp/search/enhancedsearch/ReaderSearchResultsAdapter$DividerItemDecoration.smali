.class Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ReaderSearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DividerItemDecoration"
.end annotation


# instance fields
.field private final dividerDrawable:Landroid/graphics/drawable/Drawable;

.field private final resultDividerInset:I

.field final synthetic this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;Landroid/content/Context;)V
    .locals 2

    .line 839
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    .line 840
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 842
    sget v0, Lcom/amazon/kindle/krl/R$attr;->readerSearchListDividerDrawable:I

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 843
    invoke-virtual {p2, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 844
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 845
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 846
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 848
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->reader_search_list_divider_inset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;->resultDividerInset:I

    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;IIII)V
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 919
    iget-object p2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 854
    invoke-super/range {p0 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int v9, v0, v1

    .line 858
    iget-object v0, v6, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 860
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_9

    .line 862
    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 864
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    add-int/lit8 v3, v1, 0x1

    .line 867
    iget-object v4, v6, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-virtual {v4, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getItemViewType(I)I

    move-result v4

    .line 869
    iget-object v5, v6, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-virtual {v5}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getItemCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 870
    iget-object v2, v6, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getItemViewType(I)I

    move-result v2

    .line 873
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 874
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v14, v0, v3

    .line 875
    iget-object v0, v6, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int v15, v14, v0

    const/4 v0, 0x1

    if-ne v4, v0, :cond_2

    if-nez v1, :cond_1

    .line 879
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v4, v9

    move v5, v10

    .line 880
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;->drawDivider(Landroid/graphics/Canvas;IIII)V

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v14

    move v4, v9

    move v5, v15

    .line 883
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;->drawDivider(Landroid/graphics/Canvas;IIII)V

    goto :goto_4

    :cond_2
    const/4 v1, 0x4

    if-eq v4, v1, :cond_7

    const/4 v1, 0x2

    if-ne v4, v1, :cond_3

    if-ne v2, v0, :cond_3

    goto :goto_3

    :cond_3
    const/16 v3, 0x3e8

    if-gt v3, v4, :cond_8

    if-eq v2, v1, :cond_5

    if-gt v3, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 893
    iget v0, v6, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;->resultDividerInset:I

    add-int v1, v8, v0

    sub-int v0, v9, v0

    move v4, v0

    move v2, v1

    goto :goto_2

    :cond_6
    move v2, v8

    move v4, v9

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v14

    move v5, v15

    .line 897
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;->drawDivider(Landroid/graphics/Canvas;IIII)V

    goto :goto_4

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v14

    move v4, v9

    move v5, v15

    .line 886
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;->drawDivider(Landroid/graphics/Canvas;IIII)V

    :cond_8
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
