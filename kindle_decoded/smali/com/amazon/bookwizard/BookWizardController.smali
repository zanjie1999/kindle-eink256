.class public abstract Lcom/amazon/bookwizard/BookWizardController;
.super Ljava/lang/Object;
.source "BookWizardController.java"


# instance fields
.field protected final activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

.field protected step:Lcom/amazon/bookwizard/service/FlowStep;


# direct methods
.method protected constructor <init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    return-void
.end method

.method private getNextStepId()Ljava/lang/String;
    .locals 8

    .line 209
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to find next step because current step is null"

    invoke-static {v0, v2}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 214
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_end_step"

    return-object v0

    .line 218
    :cond_1
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getLaunchInfo()Lcom/amazon/bookwizard/service/LaunchInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 219
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 224
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v0

    .line 225
    iget-object v2, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    :goto_0
    if-eqz v2, :cond_5

    .line 228
    sget-object v3, Lcom/amazon/bookwizard/service/StepType;->VIEW:Lcom/amazon/bookwizard/service/StepType;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/service/FlowStep;->getType()Lcom/amazon/bookwizard/service/StepType;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 229
    invoke-virtual {v2}, Lcom/amazon/bookwizard/service/FlowStep;->getNextStepId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 231
    :cond_3
    invoke-virtual {p0, v2}, Lcom/amazon/bookwizard/BookWizardController;->handleDecisionStep(Lcom/amazon/bookwizard/service/FlowStep;)Ljava/lang/String;

    move-result-object v3

    .line 234
    :goto_1
    invoke-virtual {v0, v3}, Lcom/amazon/bookwizard/service/Flow;->getStep(Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v4

    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[fluent] current="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; nextId="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_4

    .line 236
    sget-object v2, Lcom/amazon/bookwizard/service/StepType;->VIEW:Lcom/amazon/bookwizard/service/StepType;

    invoke-virtual {v4}, Lcom/amazon/bookwizard/service/FlowStep;->getType()Lcom/amazon/bookwizard/service/StepType;

    move-result-object v5

    if-ne v2, v5, :cond_4

    return-object v3

    :cond_4
    move-object v2, v4

    goto :goto_0

    :cond_5
    return-object v1

    .line 220
    :cond_6
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launch info/flow is null: info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/bookwizard/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected back()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Step is null when back is pressed."

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getNavigationController()Lcom/amazon/bookwizard/BookWizardNavigationController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity Navigation controller is null when back is pressed."

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getNavigationController()Lcom/amazon/bookwizard/BookWizardNavigationController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/FlowStep;->getBackStepId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/BookWizardNavigationController;->showStep(Ljava/lang/String;)V

    return-void
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public handleDecisionStep(Lcom/amazon/bookwizard/service/FlowStep;)Ljava/lang/String;
    .locals 6

    .line 254
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ku30DayEligibleDecision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "kuUpsellView"

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForMonth()Z

    move-result v0

    .line 256
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getLaunchInfo()Lcom/amazon/bookwizard/service/LaunchInfo;

    move-result-object v3

    .line 257
    invoke-virtual {v3}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v4

    sget-object v5, Lcom/amazon/bookwizard/service/StepFlavor;->KU_30_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {v4, v2, v5}, Lcom/amazon/bookwizard/service/Flow;->getStep(Ljava/lang/String;Lcom/amazon/bookwizard/service/StepFlavor;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v4

    if-nez v4, :cond_0

    .line 259
    invoke-virtual {v3}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v4

    sget-object v5, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {v4, v2, v5}, Lcom/amazon/bookwizard/service/Flow;->getStep(Ljava/lang/String;Lcom/amazon/bookwizard/service/StepFlavor;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v4

    .line 261
    :cond_0
    invoke-virtual {v3}, Lcom/amazon/bookwizard/service/LaunchInfo;->getTextAssets()Lcom/amazon/bookwizard/service/TextAssets;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/amazon/bookwizard/service/LaunchInfo;->getTextAssets()Lcom/amazon/bookwizard/service/TextAssets;

    move-result-object v1

    invoke-virtual {v4}, Lcom/amazon/bookwizard/service/FlowStep;->getAssetKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/bookwizard/service/TextAssets;->getUpsellViewAssets(Ljava/lang/String;)Lcom/amazon/bookwizard/service/KuUpsellViewAssets;

    move-result-object v1

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 262
    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getTrueStep()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getFalseStep()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 264
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ku7DayEligibleDecision"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 265
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForPreview()Z

    move-result v0

    .line 266
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getLaunchInfo()Lcom/amazon/bookwizard/service/LaunchInfo;

    move-result-object v3

    .line 267
    invoke-virtual {v3}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v4

    sget-object v5, Lcom/amazon/bookwizard/service/StepFlavor;->KU_7_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {v4, v2, v5}, Lcom/amazon/bookwizard/service/Flow;->getStep(Ljava/lang/String;Lcom/amazon/bookwizard/service/StepFlavor;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v2

    .line 268
    invoke-virtual {v3}, Lcom/amazon/bookwizard/service/LaunchInfo;->getTextAssets()Lcom/amazon/bookwizard/service/TextAssets;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/amazon/bookwizard/service/LaunchInfo;->getTextAssets()Lcom/amazon/bookwizard/service/TextAssets;

    move-result-object v1

    invoke-virtual {v2}, Lcom/amazon/bookwizard/service/FlowStep;->getAssetKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/bookwizard/service/TextAssets;->getUpsellViewAssets(Ljava/lang/String;)Lcom/amazon/bookwizard/service/KuUpsellViewAssets;

    move-result-object v1

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 269
    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getTrueStep()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getFalseStep()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    .line 272
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled decision step="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public handlesStep(Ljava/lang/String;)Z
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isBackEnabled()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getNavigationController()Lcom/amazon/bookwizard/BookWizardNavigationController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getNavigationController()Lcom/amazon/bookwizard/BookWizardNavigationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->isBackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected next()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getNavigationController()Lcom/amazon/bookwizard/BookWizardNavigationController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity Navigation controller is null when next is pressed."

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getNavigationController()Lcom/amazon/bookwizard/BookWizardNavigationController;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/bookwizard/BookWizardController;->getNextStepId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/BookWizardNavigationController;->showStep(Ljava/lang/String;)V

    return-void
.end method

.method public onEnd()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->goToLibrary()V

    return-void
.end method

.method public onRequestStatusChanged(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;)V
    .locals 0

    return-void
.end method

.method public onRetry(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public postNetworkFailureDialog()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getNavigationController()Lcom/amazon/bookwizard/BookWizardNavigationController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getNavigationController()Lcom/amazon/bookwizard/BookWizardNavigationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->getCurrentController()Lcom/amazon/bookwizard/BookWizardController;

    move-result-object v0

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "NETWORK_ERROR_DEFAULT"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 292
    iget-object v2, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 296
    :cond_1
    new-instance v0, Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment;

    invoke-direct {v0}, Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method protected showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, v0, v0}, Lcom/amazon/bookwizard/BookWizardController;->showFragment(Landroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method protected showFragment(Landroidx/fragment/app/Fragment;II)V
    .locals 1

    const-string v0, "CHILD"

    .line 144
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amazon/bookwizard/BookWizardController;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;II)V

    return-void
.end method

.method protected showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/amazon/bookwizard/BookWizardController;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;II)V

    return-void
.end method

.method protected showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;II)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p3, p4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 162
    sget p3, Lcom/amazon/bookwizard/R$id;->bookwizard_content_container:I

    invoke-virtual {v0, p3, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 163
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public abstract showView(Lcom/amazon/bookwizard/service/FlowStep;)V
.end method
