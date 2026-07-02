.class public Lcom/amazon/ku/ui/view/KuUpsellBannerView;
.super Lcom/amazon/kindle/krx/ui/ColorCodedView;
.source "KuUpsellBannerView.java"


# static fields
.field private static final STORE_REF_TAG:Ljava/lang/String; = "kuconv_kfa_bar_ku_lp"


# instance fields
.field private final barTitle:Landroid/widget/TextView;

.field private final extendButton:Landroid/widget/Button;

.field private final kuBadge:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/ku/data/KuBannerInfo;)V
    .locals 4

    .line 44
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/krx/ui/ColorCodedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    invoke-virtual {p2}, Lcom/amazon/ku/data/KuBannerInfo;->getLayout()Lcom/amazon/ku/data/KuBannerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ku/data/KuBannerLayout;->getResId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    sget v1, Lcom/amazon/kindle/ku/R$id;->sample_bar_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView;->barTitle:Landroid/widget/TextView;

    .line 49
    sget v1, Lcom/amazon/kindle/ku/R$id;->sample_bar_ku_badge:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView;->kuBadge:Landroid/widget/ImageView;

    .line 50
    sget v1, Lcom/amazon/kindle/ku/R$id;->sample_bar_extend_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView;->extendButton:Landroid/widget/Button;

    .line 53
    invoke-virtual {p2}, Lcom/amazon/ku/data/KuBannerInfo;->getAssets()Ljava/util/Map;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/amazon/ku/data/KuBannerAsset;->TITLE_TEXT:Lcom/amazon/ku/data/KuBannerAsset;

    invoke-virtual {v1}, Lcom/amazon/ku/data/KuBannerAsset;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    sget-object v3, Lcom/amazon/ku/data/KuBannerAsset;->BUTTON_TEXT:Lcom/amazon/ku/data/KuBannerAsset;

    invoke-virtual {v3}, Lcom/amazon/ku/data/KuBannerAsset;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    iget-object v3, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView;->barTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView;->extendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 61
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "KuConversionUpsellBannerAsin"

    .line 62
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p2}, Lcom/amazon/ku/data/KuBannerInfo;->getKuSignUpPath()Ljava/lang/String;

    move-result-object p2

    .line 64
    iget-object v0, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView;->extendButton:Landroid/widget/Button;

    new-instance v2, Lcom/amazon/ku/ui/view/KuUpsellBannerView$1;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/amazon/ku/ui/view/KuUpsellBannerView$1;-><init>(Lcom/amazon/ku/ui/view/KuUpsellBannerView;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p2, "KuConversionUpsellBanner"

    invoke-interface {p1, p2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 2

    .line 78
    sget-object v0, Lcom/amazon/ku/ui/view/KuUpsellBannerView$2;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 92
    iget-object p1, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView;->barTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ku/R$color;->primary_text_color_light_nln:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object p1, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView;->kuBadge:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ku/R$drawable;->ku_badge:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView;->extendButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ku/R$drawable;->upsell_bar_button_light_background_nln:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object p1, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView;->extendButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ku/R$color;->upsell_bar_button_light_text_color_nln:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView;->barTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ku/R$color;->primary_text_color_dark_nln:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object p1, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView;->kuBadge:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ku/R$drawable;->ku_badge_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView;->extendButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ku/R$drawable;->upsell_bar_button_dark_background_nln:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object p1, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView;->extendButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ku/R$color;->upsell_bar_button_dark_text_color_nln:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method
