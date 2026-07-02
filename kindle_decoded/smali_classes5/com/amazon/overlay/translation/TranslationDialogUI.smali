.class public Lcom/amazon/overlay/translation/TranslationDialogUI;
.super Ljava/lang/Object;
.source "TranslationDialogUI.java"


# static fields
.field private static final AMAZON_EMBER_REGULAR_FONT_FILE_NAME:Ljava/lang/String; = "Amazon-Ember-Regular.ttf"


# instance fields
.field private final m_attributionMessage:Landroid/widget/TextView;

.field private m_colorModeResources:Lcom/amazon/overlay/translation/TranslationColorModeResources;

.field private final m_destinationLanguage:Lcom/amazon/overlay/translation/TranslationLanguageButton;

.field private final m_infocard:Landroid/view/View;

.field private final m_resultText:Landroid/widget/TextView;

.field private final m_sourceLanguage:Lcom/amazon/overlay/translation/TranslationLanguageButton;

.field private final m_speak:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

.field private final m_translationResultScrollView:Landroid/widget/ScrollView;

.field private final m_translationTitle:Landroid/widget/TextView;

.field private final m_translationToView:Landroid/widget/ImageView;

.field private final m_warningMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget v0, Lcom/amazon/kindle/oat/R$id;->translation_source_language:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/overlay/translation/TranslationLanguageButton;

    iput-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_sourceLanguage:Lcom/amazon/overlay/translation/TranslationLanguageButton;

    .line 67
    sget v0, Lcom/amazon/kindle/oat/R$id;->translation_destination_language:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/overlay/translation/TranslationLanguageButton;

    iput-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_destinationLanguage:Lcom/amazon/overlay/translation/TranslationLanguageButton;

    .line 69
    sget v0, Lcom/amazon/kindle/oat/R$id;->translation_result_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_resultText:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/amazon/kindle/oat/R$id;->translation_warning:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_warningMessage:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/amazon/kindle/oat/R$id;->translation_about:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_attributionMessage:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/amazon/kindle/oat/R$id;->translation_speak:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    iput-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_speak:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    .line 76
    sget v0, Lcom/amazon/kindle/oat/R$id;->translation_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_translationTitle:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/amazon/kindle/oat/R$id;->translation_to_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_translationToView:Landroid/widget/ImageView;

    .line 78
    sget v0, Lcom/amazon/kindle/oat/R$id;->translation_result_scroll_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_translationResultScrollView:Landroid/widget/ScrollView;

    .line 79
    invoke-direct {p0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->setOnTouchListenerToScrollView()V

    .line 80
    iput-object p1, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_infocard:Landroid/view/View;

    .line 81
    invoke-virtual {p0, p2}, Lcom/amazon/overlay/translation/TranslationDialogUI;->setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 82
    invoke-direct {p0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->setTypeface()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/overlay/translation/TranslationDialogUI;)Landroid/widget/ScrollView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_translationResultScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method private setOnTouchListenerToScrollView()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_translationResultScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/amazon/overlay/translation/TranslationDialogUI$1;

    invoke-direct {v1, p0}, Lcom/amazon/overlay/translation/TranslationDialogUI$1;-><init>(Lcom/amazon/overlay/translation/TranslationDialogUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setTypeface()V
    .locals 3

    .line 181
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_infocard:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Amazon-Ember-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    .line 184
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_translationTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 186
    iget-object v2, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_resultText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 187
    iget-object v2, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_warningMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 188
    iget-object v2, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_attributionMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 189
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_sourceLanguage:Lcom/amazon/overlay/translation/TranslationLanguageButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 190
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_destinationLanguage:Lcom/amazon/overlay/translation/TranslationLanguageButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAttributionMessage()Landroid/widget/TextView;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_attributionMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDestinationLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_destinationLanguage:Lcom/amazon/overlay/translation/TranslationLanguageButton;

    return-object v0
.end method

.method public getResultText()Landroid/widget/TextView;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_resultText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSourceLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_sourceLanguage:Lcom/amazon/overlay/translation/TranslationLanguageButton;

    return-object v0
.end method

.method public getSpeakButton()Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_speak:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    return-object v0
.end method

.method public getTranslationResultScrollView()Landroid/widget/ScrollView;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_translationResultScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public getWarningMessage()Landroid/widget/TextView;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_warningMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method public setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_colorModeResources:Lcom/amazon/overlay/translation/TranslationColorModeResources;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationColorModeResources;->getCurrentColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_infocard:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    new-instance v1, Lcom/amazon/overlay/translation/TranslationColorModeResources;

    invoke-direct {v1, p1, v0}, Lcom/amazon/overlay/translation/TranslationColorModeResources;-><init>(Lcom/amazon/kindle/krx/ui/ColorMode;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_colorModeResources:Lcom/amazon/overlay/translation/TranslationColorModeResources;

    .line 140
    iget-object p1, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_translationTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/amazon/overlay/translation/TranslationColorModeResources;->getTitleColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object p1, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_resultText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_colorModeResources:Lcom/amazon/overlay/translation/TranslationColorModeResources;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationColorModeResources;->getBodyTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object p1, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_translationToView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_colorModeResources:Lcom/amazon/overlay/translation/TranslationColorModeResources;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationColorModeResources;->getTranslationToViewBackground()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 143
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->shouldSetViewBackground()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_infocard:Landroid/view/View;

    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_colorModeResources:Lcom/amazon/overlay/translation/TranslationColorModeResources;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationColorModeResources;->getViewBackground()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_translationResultScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_colorModeResources:Lcom/amazon/overlay/translation/TranslationColorModeResources;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationColorModeResources;->getScrollViewBackground()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 147
    iget-object p1, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_sourceLanguage:Lcom/amazon/overlay/translation/TranslationLanguageButton;

    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_colorModeResources:Lcom/amazon/overlay/translation/TranslationColorModeResources;

    invoke-virtual {p1, v0}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->setStyle(Lcom/amazon/overlay/translation/TranslationColorModeResources;)V

    .line 148
    iget-object p1, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_destinationLanguage:Lcom/amazon/overlay/translation/TranslationLanguageButton;

    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_colorModeResources:Lcom/amazon/overlay/translation/TranslationColorModeResources;

    invoke-virtual {p1, v0}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->setStyle(Lcom/amazon/overlay/translation/TranslationColorModeResources;)V

    .line 149
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSpeakButton()Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationDialogUI;->m_colorModeResources:Lcom/amazon/overlay/translation/TranslationColorModeResources;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationColorModeResources;->getCurrentColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->updateSpeakIconColor(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    return-void
.end method

.method protected shouldSetViewBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
