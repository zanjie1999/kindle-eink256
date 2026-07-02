.class public Lcom/amazon/overlay/translation/TranslationColorModeResources;
.super Ljava/lang/Object;
.source "TranslationColorModeResources.java"


# instance fields
.field private final m_bodyTextColor:I

.field private final m_buttonTextColor:I

.field private final m_currentColorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

.field private final m_resultScrollViewBackground:I

.field private final m_selectionButtonTextBackground:I

.field private final m_titleColor:I

.field private final m_translationToViewBackground:I

.field private final m_viewBackground:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/ColorMode;Landroid/content/res/Resources;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_currentColorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 43
    sget-object v0, Lcom/amazon/overlay/translation/TranslationColorModeResources$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 66
    sget p1, Lcom/amazon/kindle/oat/R$color;->info_card_v2_button_text_color_white_mode:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_buttonTextColor:I

    .line 67
    sget p1, Lcom/amazon/kindle/oat/R$color;->info_card_v2_title_text_color_white_mode:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_titleColor:I

    .line 68
    sget p1, Lcom/amazon/kindle/oat/R$color;->info_card_v2_content_text_color_white_mode:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_bodyTextColor:I

    .line 69
    sget p1, Lcom/amazon/kindle/oat/R$drawable;->info_card_translation_arrow_white_mode:I

    iput p1, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_translationToViewBackground:I

    .line 71
    sget p1, Lcom/amazon/kindle/oat/R$drawable;->bg_info_card_light:I

    iput p1, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_viewBackground:I

    .line 72
    sget p1, Lcom/amazon/kindle/oat/R$drawable;->bg_info_card_text_view_light:I

    iput p1, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_resultScrollViewBackground:I

    .line 73
    sget p1, Lcom/amazon/kindle/oat/R$drawable;->button_light:I

    iput p1, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_selectionButtonTextBackground:I

    goto :goto_0

    .line 46
    :cond_0
    sget p1, Lcom/amazon/kindle/oat/R$drawable;->bg_info_card_dark:I

    iput p1, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_viewBackground:I

    .line 47
    sget p1, Lcom/amazon/kindle/oat/R$drawable;->bg_info_card_text_view_dark:I

    iput p1, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_resultScrollViewBackground:I

    .line 48
    sget p1, Lcom/amazon/kindle/oat/R$drawable;->button_dark:I

    iput p1, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_selectionButtonTextBackground:I

    .line 49
    sget p1, Lcom/amazon/kindle/oat/R$color;->info_card_v2_dark_mode_text_color:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_buttonTextColor:I

    .line 50
    iput p1, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_titleColor:I

    .line 51
    iput p1, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_bodyTextColor:I

    .line 52
    sget p1, Lcom/amazon/kindle/oat/R$drawable;->info_card_translation_arrow_dark_mode:I

    iput p1, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_translationToViewBackground:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getBodyTextColor()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_bodyTextColor:I

    return v0
.end method

.method public getCurrentColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_currentColorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object v0
.end method

.method public getScrollViewBackground()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_resultScrollViewBackground:I

    return v0
.end method

.method public getSelectionButtonTextBackground()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_selectionButtonTextBackground:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_buttonTextColor:I

    return v0
.end method

.method public getTitleColor()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_titleColor:I

    return v0
.end method

.method public getTranslationToViewBackground()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_translationToViewBackground:I

    return v0
.end method

.method public getViewBackground()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/amazon/overlay/translation/TranslationColorModeResources;->m_viewBackground:I

    return v0
.end method
