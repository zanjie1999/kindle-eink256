.class public Lcom/amazon/kcp/reader/ui/FontOptionData;
.super Lcom/amazon/kcp/reader/ui/ViewOptionData;
.source "FontOptionData.java"


# instance fields
.field private settings:Lcom/amazon/kcp/application/UserSettingsController;

.field private supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    sget v0, Lcom/amazon/kindle/krl/R$string;->font:I

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ui/ViewOptionData;-><init>(ILandroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/FontOptionData;->updateSupportedFonts()V

    .line 32
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/FontOptionData;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    return-void
.end method

.method private setTypeface(Landroid/widget/TextView;I)V
    .locals 2

    .line 83
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/FontOptionData;->supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p2, 0x0

    .line 87
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    :cond_0
    return-void
.end method

.method private updateSupportedFonts()V
    .locals 5

    .line 92
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getSupportedFonts()[Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/FontOptionData;->supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/FontOptionData;->supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 96
    invoke-virtual {v4}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->setOptions([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getSelectedIndex()I
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FontOptionData;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamilyForBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/FontOptionData;->supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 53
    aget-object v2, v2, v1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method protected inflateDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->inflateDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    sget p3, Lcom/amazon/kindle/krl/R$id;->view_options_drop_down_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 65
    invoke-direct {p0, p3, p1}, Lcom/amazon/kcp/reader/ui/FontOptionData;->setTypeface(Landroid/widget/TextView;I)V

    :cond_0
    return-object p2
.end method

.method protected inflateSelectedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->inflateSelectedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 74
    sget p3, Lcom/amazon/kindle/krl/R$id;->view_options_selected_value:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 76
    invoke-direct {p0, p3, p1}, Lcom/amazon/kcp/reader/ui/FontOptionData;->setTypeface(Landroid/widget/TextView;I)V

    :cond_0
    return-object p2
.end method

.method protected onSpinnerItemSelected(Landroid/widget/AdapterView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;I)V"
        }
    .end annotation

    .line 37
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/FontOptionData;->supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;

    aget-object p1, p1, p2

    .line 38
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getCurrentBookLanguage()Ljava/lang/String;

    move-result-object p2

    .line 42
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->PUBLISHER_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    if-ne p1, v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FontOptionData;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setSecondaryFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FontOptionData;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)V

    return-void
.end method
