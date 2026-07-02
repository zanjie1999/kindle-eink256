.class Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$EmptyAdapterViewHolder;
.super Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;
.source "ReaderSearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyAdapterViewHolder"
.end annotation


# instance fields
.field final label:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 818
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;-><init>(Landroid/view/View;)V

    .line 820
    sget v0, Lcom/amazon/kindle/krl/R$id;->label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$EmptyAdapterViewHolder;->label:Landroid/widget/TextView;

    .line 821
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->EMBERLIGHT:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, v1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
