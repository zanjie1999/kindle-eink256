.class public Lcom/amazon/bookwizard/ku/KuUpsellController;
.super Lcom/amazon/bookwizard/BookWizardController;
.source "KuUpsellController.java"

# interfaces
.implements Lcom/amazon/bookwizard/ku/KuUpsellFragment$KuOfferListener;


# static fields
.field private static final KEY_IS_SIGNUP_FAILURE_DIALOG_SHOWN:Ljava/lang/String; = "isSignupFailureDialogShown"

.field private static final KEY_SIGNUP_CLICKED:Ljava/lang/String; = "signupClicked"

.field private static final PROGRESS_DIALOG_TAG:Ljava/lang/String; = "KU_OFFER_PAGE_KU_SIGNUP"


# instance fields
.field private final data:Lcom/amazon/bookwizard/data/DataProvider;

.field private final fragment:Lcom/amazon/bookwizard/ku/KuUpsellFragment;

.field private final requestQueue:Lcom/android/volley/RequestQueue;

.field private rsContext:Ljava/lang/String;

.field private signupClicked:Z

.field private signupFailureShown:Z


# direct methods
.method public constructor <init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/data/DataProvider;Lcom/android/volley/RequestQueue;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/BookWizardController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;)V

    .line 77
    new-instance p1, Lcom/amazon/bookwizard/ku/KuUpsellFragment;

    invoke-direct {p1}, Lcom/amazon/bookwizard/ku/KuUpsellFragment;-><init>()V

    iput-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->fragment:Lcom/amazon/bookwizard/ku/KuUpsellFragment;

    .line 78
    iput-object p3, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 79
    iput-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    const-string p2, "BookWizardKuOfferScreen"

    .line 80
    iput-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->rsContext:Ljava/lang/String;

    .line 82
    invoke-virtual {p1, p0}, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->setListener(Lcom/amazon/bookwizard/ku/KuUpsellFragment$KuOfferListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/bookwizard/ku/KuUpsellController;)Lcom/amazon/bookwizard/ui/BookWizardActivity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/bookwizard/ku/KuUpsellController;)Lcom/amazon/bookwizard/ui/BookWizardActivity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/bookwizard/ku/KuUpsellController;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->signupFailureShown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/bookwizard/ku/KuUpsellController;)Lcom/amazon/bookwizard/ui/BookWizardActivity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    return-object p0
.end method

.method private postSignupFailureDialog()V
    .locals 5

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->signupClicked:Z

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->signupFailureShown:Z

    .line 251
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_error_retry:I

    new-instance v2, Lcom/amazon/bookwizard/ku/KuUpsellController$3;

    invoke-direct {v2, p0}, Lcom/amazon/bookwizard/ku/KuUpsellController$3;-><init>(Lcom/amazon/bookwizard/ku/KuUpsellController;)V

    sget v3, Lcom/amazon/bookwizard/R$string;->bookwizard_error_exit:I

    new-instance v4, Lcom/amazon/bookwizard/ku/KuUpsellController$4;

    invoke-direct {v4, p0}, Lcom/amazon/bookwizard/ku/KuUpsellController$4;-><init>(Lcom/amazon/bookwizard/ku/KuUpsellController;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getNetworkFailureDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private show()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "kuUpsellView"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->fragment:Lcom/amazon/bookwizard/ku/KuUpsellFragment;

    sget v2, Lcom/amazon/bookwizard/R$anim;->abc_slide_in_bottom:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/amazon/bookwizard/BookWizardController;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;II)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->fragment:Lcom/amazon/bookwizard/ku/KuUpsellFragment;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/bookwizard/BookWizardController;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 135
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->signupFailureShown:Z

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/amazon/bookwizard/ku/KuUpsellController;->postSignupFailureDialog()V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->showOfferPage()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "BookWizardKuOfferScreen"

    goto :goto_1

    :cond_2
    const-string v0, "BookWizardKuPreviewOfferScreen"

    :goto_1
    iput-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->rsContext:Ljava/lang/String;

    .line 140
    invoke-static {v0}, Lcom/amazon/bookwizard/util/M;->show(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 3

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    iget-boolean v1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->signupFailureShown:Z

    const-string v2, "isSignupFailureDialogShown"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    iget-boolean v1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->signupClicked:Z

    const-string/jumbo v2, "signupClicked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "kuUpsellView"

    return-object v0
.end method

.method public handleDecisionStep(Lcom/amazon/bookwizard/service/FlowStep;)Ljava/lang/String;
    .locals 2

    .line 158
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ku30DayAgreedDecision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->isSubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getTrueStep()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getFalseStep()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 162
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/BookWizardController;->handleDecisionStep(Lcom/amazon/bookwizard/service/FlowStep;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onMaybeLater()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->rsContext:Ljava/lang/String;

    const-string v1, "KuDecline"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->next()V

    return-void
.end method

.method public onRequestStatusChanged(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;)V
    .locals 2

    .line 222
    invoke-virtual {p1}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;->getType()Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    move-result-object v0

    sget-object v1, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->KU_SIGNUP:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    if-ne v0, v1, :cond_3

    .line 223
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "KU_OFFER_PAGE_KU_SIGNUP"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->signupClicked:Z

    .line 229
    sget-object v0, Lcom/amazon/bookwizard/ku/KuUpsellController$5;->$SwitchMap$com$amazon$kindle$krx$download$IKRXResponseHandler$DownloadStatus:[I

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;->getStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/amazon/bookwizard/ku/KuUpsellController;->postSignupFailureDialog()V

    goto :goto_0

    .line 232
    :cond_2
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/BookWizardConfig;->setSubscribed(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->next()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSignUp()V
    .locals 6

    .line 169
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->skipSignup()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/BookWizardConfig;->setSubscribed(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->next()V

    return-void

    .line 176
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->signupClicked:Z

    if-eqz v0, :cond_1

    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->rsContext:Ljava/lang/String;

    const-string v2, "KuSignup"

    invoke-static {v0, v2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iput-boolean v1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->signupClicked:Z

    .line 183
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    sget v2, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_signup_processing:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/amazon/bookwizard/ui/fragment/ProgressDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/bookwizard/ui/fragment/ProgressDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v3, "KU_OFFER_PAGE_KU_SIGNUP"

    invoke-virtual {v0, v1, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getCurrentStep()Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 185
    sget-object v1, Lcom/amazon/bookwizard/service/StepFlavor;->KU_30_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v3

    if-eq v1, v3, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    sget-object v1, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v0

    if-ne v1, v0, :cond_4

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/amazon/bookwizard/ku/service/KuSignupRequest;

    iget-object v3, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v3}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getDeviceInfo()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/amazon/bookwizard/ku/service/KuSignupRequest;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void

    .line 191
    :cond_4
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getKrxMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest;

    iget-object v3, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v3}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getDeviceInfo()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v3

    new-instance v4, Lcom/amazon/bookwizard/ku/KuUpsellController$1;

    invoke-direct {v4, p0, v0}, Lcom/amazon/bookwizard/ku/KuUpsellController$1;-><init>(Lcom/amazon/bookwizard/ku/KuUpsellController;Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    new-instance v5, Lcom/amazon/bookwizard/ku/KuUpsellController$2;

    invoke-direct {v5, p0, v0}, Lcom/amazon/bookwizard/ku/KuUpsellController$2;-><init>(Lcom/amazon/bookwizard/ku/KuUpsellController;Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "isSignupFailureDialogShown"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->signupFailureShown:Z

    const-string/jumbo v0, "signupClicked"

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->signupClicked:Z

    return-void
.end method

.method public showView(Lcom/amazon/bookwizard/service/FlowStep;)V
    .locals 2

    .line 117
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    .line 119
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/DataProvider;->clearPayoffs()V

    .line 120
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getDownloadManager()Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/bookwizard/service/StepFlavor;->KU:Lcom/amazon/bookwizard/service/StepFlavor;

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getDeviceInfo()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->downloadItems(Lcom/amazon/bookwizard/service/StepFlavor;Lcom/amazon/kindle/krx/application/IDeviceInformation;)V

    .line 121
    invoke-direct {p0}, Lcom/amazon/bookwizard/ku/KuUpsellController;->show()V

    return-void
.end method
