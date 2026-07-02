.class final Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;
.super Ljava/lang/Object;
.source "TranslationCallbacks.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/overlay/translation/states/TranslationCallbacks;->getSpeakListener(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;->val$stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "SpeakTranslationRequested"

    .line 50
    invoke-static {p1}, Lcom/amazon/kcp/translation/TMetric;->reportMetric(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;->val$stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-virtual {p1}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->getEnvironment()Lcom/amazon/overlay/translation/TranslationEnvironment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/amazon/kcp/translation/service/HTTPRequestUtils;->getConnectionStatus(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-static {p1}, Lcom/amazon/kcp/translation/service/HTTPRequestUtils;->showWifiDisabled(Landroid/app/Activity;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 59
    invoke-static {}, Lcom/amazon/overlay/translation/states/TranslationCallbacks;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0, p1}, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;->showPromptWANWarning(Landroid/content/Context;)V

    return-void

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;->val$stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    new-instance v0, Lcom/amazon/overlay/translation/states/FetchingSpeak;

    iget-object v1, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;->val$stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-direct {v0, v1}, Lcom/amazon/overlay/translation/states/FetchingSpeak;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V

    invoke-virtual {p1, v0}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->transitionTo(Lcom/amazon/overlay/translation/states/AbstractState;)V

    return-void
.end method

.method public showPromptWANWarning(Landroid/content/Context;)V
    .locals 5

    .line 76
    sget v0, Lcom/amazon/kindle/oat/R$layout;->wan_usage_warning:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    sget v1, Lcom/amazon/kindle/oat/R$id;->dont_show_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 79
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/amazon/kindle/oat/R$string;->translation_speech_wan_title:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v3, Lcom/amazon/kindle/oat/R$string;->ok:I

    new-instance v4, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1$2;

    invoke-direct {v4, p0, v1}, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1$2;-><init>(Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;Landroid/widget/CheckBox;)V

    .line 80
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/amazon/kindle/oat/R$string;->cancel:I

    new-instance v3, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1$1;

    invoke-direct {v3, p0}, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1$1;-><init>(Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;)V

    .line 90
    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 97
    invoke-static {p1, v0}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method
