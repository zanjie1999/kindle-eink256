.class abstract Lcom/amazon/overlay/translation/states/AbstractState;
.super Ljava/lang/Object;
.source "AbstractState.java"


# instance fields
.field protected final m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

.field protected final m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->getEnvironment()Lcom/amazon/overlay/translation/TranslationEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    .line 26
    iput-object p1, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected getSpeakPlayer()Lcom/amazon/overlay/translation/SpeakPlayer;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getSpeakPlayer()Lcom/amazon/overlay/translation/SpeakPlayer;

    move-result-object v0

    return-object v0
.end method

.method protected getTranslationSelection()Lcom/amazon/overlay/translation/TranslationSelection;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getTranslationSelection()Lcom/amazon/overlay/translation/TranslationSelection;

    move-result-object v0

    return-object v0
.end method

.method protected getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getTranslationDialogUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    return-object v0
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public abstract transitionTo()V
.end method
