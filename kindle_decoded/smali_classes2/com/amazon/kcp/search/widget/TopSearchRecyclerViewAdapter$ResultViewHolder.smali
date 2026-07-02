.class Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$ResultViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TopSearchRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultViewHolder"
.end annotation


# instance fields
.field final iconView:Landroid/widget/TextView;

.field final labelView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 90
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 91
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->top_search_widget_content_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$ResultViewHolder;->iconView:Landroid/widget/TextView;

    .line 92
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->top_search_widget_content_item_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$ResultViewHolder;->labelView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setIconText(Ljava/lang/String;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$ResultViewHolder;->iconView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$ResultViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
