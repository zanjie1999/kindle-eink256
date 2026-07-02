.class public Lcom/amazon/overlay/translation/states/TranslationFail;
.super Lcom/amazon/overlay/translation/states/AbstractState;
.source "TranslationFail.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/overlay/translation/states/TranslationFail;

    invoke-static {v0}, Lcom/amazon/kcp/translation/Logger;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/overlay/translation/states/TranslationFail;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;Lcom/amazon/kcp/translation/service/TranslationResponse;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/overlay/translation/states/AbstractState;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V

    .line 39
    iput-object p2, p0, Lcom/amazon/overlay/translation/states/TranslationFail;->m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;

    return-void
.end method


# virtual methods
.method public transitionTo()V
    .locals 2

    const-string v0, "TranslationQueryError"

    const-string v1, "TranslationQueryTime"

    .line 47
    invoke-static {v0, v1}, Lcom/amazon/kcp/translation/TMetric;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TranslationInfoCard"

    const-string v1, "FailureTranslationQueryError"

    .line 48
    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setLookupResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->getContext()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "QuickLookup"

    .line 55
    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getResultText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/overlay/translation/states/TranslationFail;->m_translationResponse:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-virtual {v1}, Lcom/amazon/kcp/translation/service/TranslationResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getTranslationDialogUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSpeakButton()Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->HIDE_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->toggleSpeakIcon(Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;)V

    .line 65
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getAttributionMessage()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getWarningMessage()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
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

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSourceLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/translation/Languages;->getDefaultLanguage(Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->setSelection(Lcom/amazon/kcp/translation/Language;)V

    :cond_1
    return-void
.end method
