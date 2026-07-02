.class Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ResultLoaderViewHolder;
.super Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;
.source "ReaderSearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultLoaderViewHolder"
.end annotation


# instance fields
.field final progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 792
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;-><init>(Landroid/view/View;)V

    .line 794
    sget v0, Lcom/amazon/kindle/krl/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ResultLoaderViewHolder;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method
