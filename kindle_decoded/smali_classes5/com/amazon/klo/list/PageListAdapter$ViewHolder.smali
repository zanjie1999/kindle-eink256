.class Lcom/amazon/klo/list/PageListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/list/PageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field final chapterTitle:Landroid/widget/TextView;

.field final pageLabel:Landroid/widget/TextView;

.field final thumbnailContainer:Landroid/widget/FrameLayout;

.field final thumbnailSelector:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 413
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 415
    sget v0, Lcom/amazon/klo/R$id;->klo_page_item_thumbnail_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;->thumbnailContainer:Landroid/widget/FrameLayout;

    .line 416
    sget v0, Lcom/amazon/klo/R$id;->klo_page_item_thumbnail_selector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;->thumbnailSelector:Landroid/view/View;

    .line 417
    sget v0, Lcom/amazon/klo/R$id;->klo_page_item_chapter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;->chapterTitle:Landroid/widget/TextView;

    .line 418
    sget v0, Lcom/amazon/klo/R$id;->klo_page_item_page:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;->pageLabel:Landroid/widget/TextView;

    return-void
.end method
