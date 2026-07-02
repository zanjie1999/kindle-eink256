.class final Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;
.super Ljava/lang/Object;
.source "TranslationCallbacks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/overlay/translation/states/TranslationCallbacks;->getLanguageButtonListener(Lcom/amazon/overlay/translation/TranslationLanguageButton;Lcom/amazon/overlay/translation/states/TranslationStateMachine;)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$button:Lcom/amazon/overlay/translation/TranslationLanguageButton;

.field final synthetic val$stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;Lcom/amazon/overlay/translation/TranslationLanguageButton;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;->val$stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    iput-object p2, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;->val$button:Lcom/amazon/overlay/translation/TranslationLanguageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 122
    iget-object p2, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;->val$stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-virtual {p2}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->getEnvironment()Lcom/amazon/overlay/translation/TranslationEnvironment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 123
    invoke-static {p2}, Lcom/amazon/kcp/translation/service/HTTPRequestUtils;->getConnectionStatus(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-static {p2}, Lcom/amazon/kcp/translation/service/HTTPRequestUtils;->showWifiDisabled(Landroid/app/Activity;)V

    return-void

    .line 128
    :cond_0
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    .line 129
    iget-object p2, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;->val$button:Lcom/amazon/overlay/translation/TranslationLanguageButton;

    invoke-virtual {p2, p1}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->getSelectionItemAt(I)Lcom/amazon/kcp/translation/Language;

    move-result-object p1

    .line 131
    iget-object p2, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;->val$button:Lcom/amazon/overlay/translation/TranslationLanguageButton;

    invoke-virtual {p2}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->getSelectedItem()Lcom/amazon/kcp/translation/Language;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/translation/Language;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 134
    :cond_1
    iget-object p2, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;->val$button:Lcom/amazon/overlay/translation/TranslationLanguageButton;

    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;->val$stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->getEnvironment()Lcom/amazon/overlay/translation/TranslationEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getTranslationDialogUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getDestinationLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;

    move-result-object v0

    if-ne p2, v0, :cond_2

    const-string p2, "DestinationLanguageChanged"

    .line 135
    invoke-static {p2}, Lcom/amazon/kcp/translation/TMetric;->reportMetric(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object p2, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;->val$button:Lcom/amazon/overlay/translation/TranslationLanguageButton;

    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;->val$stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->getEnvironment()Lcom/amazon/overlay/translation/TranslationEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getTranslationDialogUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSourceLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;

    move-result-object v0

    if-ne p2, v0, :cond_3

    const-string p2, "SourceLanguageChanged"

    .line 137
    invoke-static {p2}, Lcom/amazon/kcp/translation/TMetric;->reportMetric(Ljava/lang/String;)V

    .line 139
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;->val$button:Lcom/amazon/overlay/translation/TranslationLanguageButton;

    invoke-virtual {p2, p1}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->setSelection(Lcom/amazon/kcp/translation/Language;)V

    .line 142
    iget-object p1, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;->val$stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-virtual {p1}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->getCurrentState()Lcom/amazon/overlay/translation/states/AbstractState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/overlay/translation/states/AbstractState;->stop()V

    .line 143
    iget-object p1, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;->val$stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    new-instance p2, Lcom/amazon/overlay/translation/states/FetchingTranslation;

    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;->val$stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-direct {p2, v0}, Lcom/amazon/overlay/translation/states/FetchingTranslation;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V

    invoke-virtual {p1, p2}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->transitionTo(Lcom/amazon/overlay/translation/states/AbstractState;)V

    .line 145
    iget-object p1, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$2;->val$button:Lcom/amazon/overlay/translation/TranslationLanguageButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p1

    .line 146
    sget p2, Lcom/amazon/kindle/oat/R$id;->translation_source_language:I

    if-ne p1, p2, :cond_4

    const-string p1, "SourceLanguageSelect"

    .line 147
    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_4
    sget p2, Lcom/amazon/kindle/oat/R$id;->translation_destination_language:I

    if-ne p1, p2, :cond_5

    const-string p1, "DestinationLanguageSelect"

    .line 149
    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
