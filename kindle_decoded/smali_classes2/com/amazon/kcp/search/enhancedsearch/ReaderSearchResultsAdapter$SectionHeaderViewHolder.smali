.class Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionHeaderViewHolder;
.super Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;
.source "ReaderSearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SectionHeaderViewHolder"
.end annotation


# instance fields
.field final titleLabel:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 2

    .line 746
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;-><init>(Landroid/view/View;)V

    .line 748
    sget v0, Lcom/amazon/kindle/krl/R$id;->titleLabel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionHeaderViewHolder;->titleLabel:Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    .line 752
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, v1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 755
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionHeaderViewHolder;->titleLabel:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    .line 757
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionHeaderViewHolder;->titleLabel:Landroid/widget/TextView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextDirection(I)V

    :goto_0
    return-void
.end method
