.class public Lcom/amazon/overlay/translation/TranslationInfoCard;
.super Lcom/amazon/kindle/krx/ui/InfoCardView;
.source "TranslationInfoCard.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;


# instance fields
.field private m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

.field private m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

.field private m_translationReaderLifecycleListener:Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/InfoCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected createTranslationDialogUI(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/overlay/translation/TranslationDialogUI;
    .locals 1

    .line 81
    new-instance v0, Lcom/amazon/overlay/translation/TranslationDialogUI;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/overlay/translation/TranslationDialogUI;-><init>(Landroid/view/View;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    return-object v0
.end method

.method public getNameForMetrics()Ljava/lang/String;
    .locals 1

    const-string v0, "TranslationInfoCard"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 110
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/oat/R$string;->translation_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionBarVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 93
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationInfoCard;->m_translationReaderLifecycleListener:Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;

    invoke-virtual {v0, p0}, Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;->removeListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V

    .line 95
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationInfoCard;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->stop()V

    .line 97
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationInfoCard;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getTranslationDialogUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getDestinationLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->getSelectedItem()Lcom/amazon/kcp/translation/Language;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/translation/Language;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/overlay/translation/TranslationPreferences;->setDestinationLanguagePreference(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 105
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public onOverlayVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationInfoCard;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->stop()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationInfoCard;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->resume()V

    return-void
.end method

.method public onSettingsChange()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationInfoCard;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getTranslationDialogUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/overlay/translation/TranslationDialogUI;->setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    return-void
.end method

.method public startTranslation(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;)V
    .locals 9

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/overlay/translation/TranslationPreferences;->getDestinationLanguagePreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationSavedDestinationLanguageTag"

    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {v0, p2, p1}, Lcom/amazon/overlay/translation/TranslationSelection;->populateBundle(Landroid/os/Bundle;Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 60
    invoke-static {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->fromBundle(Landroid/os/Bundle;)Lcom/amazon/overlay/translation/TranslationSelection;

    move-result-object v6

    .line 61
    invoke-virtual {p0, p1}, Lcom/amazon/overlay/translation/TranslationInfoCard;->createTranslationDialogUI(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v5

    .line 62
    new-instance v7, Lcom/amazon/overlay/translation/SpeakPlayer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v7, p2, v5}, Lcom/amazon/overlay/translation/SpeakPlayer;-><init>(Landroid/content/Context;Lcom/amazon/overlay/translation/TranslationDialogUI;)V

    .line 63
    new-instance p2, Lcom/amazon/overlay/translation/TranslationEnvironment;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/Activity;

    move-object v3, p2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/overlay/translation/TranslationEnvironment;-><init>(Landroid/app/Activity;Lcom/amazon/overlay/translation/TranslationDialogUI;Lcom/amazon/overlay/translation/TranslationSelection;Lcom/amazon/overlay/translation/SpeakPlayer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object p2, p0, Lcom/amazon/overlay/translation/TranslationInfoCard;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    .line 66
    new-instance p2, Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationInfoCard;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    invoke-direct {p2, v0, p1}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;-><init>(Lcom/amazon/overlay/translation/TranslationEnvironment;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object p2, p0, Lcom/amazon/overlay/translation/TranslationInfoCard;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    .line 67
    invoke-virtual {p2}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->start()V

    .line 68
    iput-object p3, p0, Lcom/amazon/overlay/translation/TranslationInfoCard;->m_translationReaderLifecycleListener:Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;

    .line 69
    invoke-virtual {p3, p0}, Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;->setListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V

    :cond_1
    :goto_0
    return-void
.end method
