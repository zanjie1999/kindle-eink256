.class public Lcom/amazon/overlay/translation/states/TranslationSuccess;
.super Lcom/amazon/overlay/translation/states/AbstractState;
.source "TranslationSuccess.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/overlay/translation/states/TranslationSuccess;

    invoke-static {v0}, Lcom/amazon/kcp/translation/Logger;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/overlay/translation/states/TranslationSuccess;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;Lcom/amazon/kcp/translation/service/TranslationResponse;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/amazon/overlay/translation/states/AbstractState;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V

    .line 47
    iput-object p2, p0, Lcom/amazon/overlay/translation/states/TranslationSuccess;->m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;

    return-void
.end method

.method private isSpeakAvailable()Z
    .locals 4

    .line 117
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->isSoundSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationSuccess;->m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-virtual {v0}, Lcom/amazon/kcp/translation/service/TranslationResponse;->getSourceLanguage()Lcom/amazon/kcp/translation/Language;

    move-result-object v0

    .line 122
    iget-object v2, p0, Lcom/amazon/overlay/translation/states/TranslationSuccess;->m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-virtual {v2}, Lcom/amazon/kcp/translation/service/TranslationResponse;->getDestinationLanguage()Lcom/amazon/kcp/translation/Language;

    move-result-object v2

    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    iget-object v3, p0, Lcom/amazon/overlay/translation/states/TranslationSuccess;->m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-virtual {v3}, Lcom/amazon/kcp/translation/service/TranslationResponse;->isSpeechAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amazon/overlay/translation/states/TranslationSuccess;->m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-virtual {v3}, Lcom/amazon/kcp/translation/service/TranslationResponse;->isSpeechEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/translation/Language;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public transitionTo()V
    .locals 3

    const-string v0, "TranslationQuerySuccess"

    const-string v1, "TranslationQueryTime"

    .line 55
    invoke-static {v0, v1}, Lcom/amazon/kcp/translation/TMetric;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationSuccess;->m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-virtual {v0}, Lcom/amazon/kcp/translation/service/TranslationResponse;->getSourceLanguage()Lcom/amazon/kcp/translation/Language;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getResultText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/oat/R$string;->translation_language_not_support:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getResultText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/overlay/translation/states/TranslationSuccess;->m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-virtual {v1}, Lcom/amazon/kcp/translation/service/TranslationResponse;->getDestinationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getResultText()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 66
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getAttributionMessage()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/overlay/translation/states/TranslationSuccess;->m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-virtual {v1}, Lcom/amazon/kcp/translation/service/TranslationResponse;->getProviderMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getAttributionMessage()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationSuccess;->m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-virtual {v0}, Lcom/amazon/kcp/translation/service/TranslationResponse;->getWarningMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationSuccess;->m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-virtual {v0}, Lcom/amazon/kcp/translation/service/TranslationResponse;->getWarningMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getWarningMessage()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/overlay/translation/states/TranslationSuccess;->m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-virtual {v2}, Lcom/amazon/kcp/translation/service/TranslationResponse;->getWarningMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getWarningMessage()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/amazon/overlay/translation/states/TranslationSuccess;->isSpeakAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getTranslationDialogUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSpeakButton()Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->SPEAK_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->toggleSpeakIcon(Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;)V

    .line 78
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSpeakButton()Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-static {v1}, Lcom/amazon/overlay/translation/states/TranslationCallbacks;->getSpeakListener(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSourceLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->getSelectedItem()Lcom/amazon/kcp/translation/Language;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/translation/Languages;->getDetecting(Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/translation/Language;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationSuccess;->m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-virtual {v0}, Lcom/amazon/kcp/translation/service/TranslationResponse;->getSourceLanguage()Lcom/amazon/kcp/translation/Language;

    move-result-object v0

    if-nez v0, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSourceLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/translation/Languages;->getDefaultLanguage(Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->setSelection(Lcom/amazon/kcp/translation/Language;)V

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSourceLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->setSelection(Lcom/amazon/kcp/translation/Language;)V

    .line 93
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSourceLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->getSelectedItem()Lcom/amazon/kcp/translation/Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/translation/Language;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 94
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getDestinationLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->getSelectedItem()Lcom/amazon/kcp/translation/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/translation/Language;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 96
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setSourceLanguage(Ljava/lang/String;)V

    .line 99
    invoke-static {v1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setDestinationLanguage(Ljava/lang/String;)V

    const-string v0, "TranslationInfoCard"

    const-string v1, "Success"

    .line 100
    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setLookupResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->getContext()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "QuickLookup"

    .line 107
    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
