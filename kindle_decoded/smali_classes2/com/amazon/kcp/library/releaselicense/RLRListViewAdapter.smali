.class public Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "RLRListViewAdapter.java"


# instance fields
.field private isEligibleList:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;I[",
            "Ljava/lang/String;",
            "[IZ)V"
        }
    .end annotation

    .line 21
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 22
    iput-boolean p6, p0, Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;->isEligibleList:Z

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 28
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 29
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p2

    .line 31
    iget-boolean p3, p0, Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;->isEligibleList:Z

    if-eqz p3, :cond_0

    .line 32
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->rlr_list_device_name:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBERMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p2, v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->rlr_list_date_subtitle:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p2, v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 35
    :cond_0
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->rlr_ineligible_list_device_name:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBERMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p2, v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->rlr_ineligible_list_date_subtitle:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p2, v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-object p1
.end method
