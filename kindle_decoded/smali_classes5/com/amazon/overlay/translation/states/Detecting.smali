.class public Lcom/amazon/overlay/translation/states/Detecting;
.super Lcom/amazon/overlay/translation/states/AbstractState;
.source "Detecting.java"


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/overlay/translation/states/AbstractState;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V

    return-void
.end method

.method private getDestinationLanguageTag(Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getTranslationSelection()Lcom/amazon/overlay/translation/TranslationSelection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->getSavedDestinationLanguageTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {v0, p1}, Lcom/amazon/kcp/translation/Languages;->getLanguage(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 78
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kcp/translation/Languages;->convertToSupportedLanguage(Ljava/util/Locale;Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public transitionTo()V
    .locals 5

    .line 31
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSourceLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getDestinationLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getTranslationResultScrollView()Landroid/widget/ScrollView;

    move-result-object v2

    .line 34
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/translation/Languages;->getDetecting(Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->setSelection(Lcom/amazon/kcp/translation/Language;)V

    .line 35
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/overlay/translation/states/Detecting;->getDestinationLanguageTag(Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;

    move-result-object v3

    .line 36
    invoke-virtual {v1, v3}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->setSelection(Lcom/amazon/kcp/translation/Language;)V

    .line 39
    new-instance v3, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;

    invoke-direct {v3}, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;-><init>()V

    .line 40
    iget-object v4, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-static {v0, v4}, Lcom/amazon/overlay/translation/states/TranslationCallbacks;->getLanguageButtonListener(Lcom/amazon/overlay/translation/TranslationLanguageButton;Lcom/amazon/overlay/translation/states/TranslationStateMachine;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->setOnClickAndSelectionConfirmedListeners(Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 41
    iget-object v4, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-static {v1, v4}, Lcom/amazon/overlay/translation/states/TranslationCallbacks;->getLanguageButtonListener(Lcom/amazon/overlay/translation/TranslationLanguageButton;Lcom/amazon/overlay/translation/states/TranslationStateMachine;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->setOnClickAndSelectionConfirmedListeners(Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 44
    iget-object v3, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    invoke-virtual {v3}, Lcom/amazon/overlay/translation/TranslationEnvironment;->isUserAuthenticated()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x4

    .line 47
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 48
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 50
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    new-instance v1, Lcom/amazon/overlay/translation/states/TranslationFail;

    iget-object v2, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    new-instance v3, Lcom/amazon/kcp/translation/service/UnAuthTranslationResponse;

    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazon/kcp/translation/service/UnAuthTranslationResponse;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/amazon/overlay/translation/states/TranslationFail;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;Lcom/amazon/kcp/translation/service/TranslationResponse;)V

    invoke-virtual {v0, v1}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->transitionTo(Lcom/amazon/overlay/translation/states/AbstractState;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x1

    .line 54
    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    new-instance v1, Lcom/amazon/overlay/translation/states/FetchingTranslation;

    iget-object v2, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-direct {v1, v2}, Lcom/amazon/overlay/translation/states/FetchingTranslation;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V

    invoke-virtual {v0, v1}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->transitionTo(Lcom/amazon/overlay/translation/states/AbstractState;)V

    :goto_0
    return-void
.end method
