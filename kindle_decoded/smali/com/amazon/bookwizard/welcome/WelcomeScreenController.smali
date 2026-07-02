.class public Lcom/amazon/bookwizard/welcome/WelcomeScreenController;
.super Lcom/amazon/bookwizard/BookWizardController;
.source "WelcomeScreenController.java"

# interfaces
.implements Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment$WelcomeScreenListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final PROGRESS_DIALOG_TAG:Ljava/lang/String; = "WELCOME_SCREEN_KU_SIGNUP"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_COUNTRY_PICKER:Ljava/lang/String; = "COUNTRY_PICKER"


# instance fields
.field private final data:Lcom/amazon/bookwizard/data/DataProvider;

.field private final fragment:Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final requestQueue:Lcom/android/volley/RequestQueue;

.field private rsContext:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/data/DataProvider;Lcom/android/volley/RequestQueue;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/BookWizardController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;)V

    .line 80
    iput-object p2, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    .line 81
    iput-object p3, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 82
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getKrxMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 83
    new-instance p1, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;

    invoke-direct {p1}, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;-><init>()V

    iput-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->fragment:Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;

    const-string p2, "BookWizardWelcomeScreen"

    .line 84
    iput-object p2, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->rsContext:Ljava/lang/String;

    .line 86
    invoke-virtual {p1, p0}, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->setListener(Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment$WelcomeScreenListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/bookwizard/welcome/WelcomeScreenController;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkKuPreviewEligibility()V
    .locals 6

    .line 241
    iget-object v0, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest;

    iget-object v2, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getDeviceInfo()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    sget-object v3, Lcom/amazon/bookwizard/ku/service/PlanType;->PREVIEW:Lcom/amazon/bookwizard/ku/service/PlanType;

    new-instance v4, Lcom/amazon/bookwizard/welcome/WelcomeScreenController$3;

    invoke-direct {v4, p0}, Lcom/amazon/bookwizard/welcome/WelcomeScreenController$3;-><init>(Lcom/amazon/bookwizard/welcome/WelcomeScreenController;)V

    new-instance v5, Lcom/amazon/bookwizard/welcome/WelcomeScreenController$4;

    invoke-direct {v5, p0}, Lcom/amazon/bookwizard/welcome/WelcomeScreenController$4;-><init>(Lcom/amazon/bookwizard/welcome/WelcomeScreenController;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/ku/service/PlanType;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "WELCOME_SCREEN_KU_SIGNUP"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 1

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "welcomeView"

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getCountries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/bookwizard/data/Country;

    .line 204
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->getCor()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p2}, Lcom/amazon/bookwizard/data/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BookWizardCPWelcomeScreen"

    const-string v1, "CountryPickerCorChanged"

    .line 206
    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->fragment:Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;

    invoke-virtual {p2}, Lcom/amazon/bookwizard/data/Country;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->setCountry(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/bookwizard/data/Country;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/bookwizard/BookWizardConfig;->setCor(Ljava/lang/String;)V

    .line 211
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onCountryPickerClicked()V
    .locals 9

    .line 180
    iget-object v0, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getCountries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/bookwizard/BookWizardConfig;->getCor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/bookwizard/BookWizardConfig;->getCor()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 184
    :goto_1
    iget-object v7, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v7}, Lcom/amazon/bookwizard/data/DataProvider;->getCountries()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 185
    iget-object v7, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v7}, Lcom/amazon/bookwizard/data/DataProvider;->getCountries()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/bookwizard/data/Country;

    .line 186
    invoke-virtual {v7}, Lcom/amazon/bookwizard/data/Country;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v3

    .line 189
    :cond_1
    invoke-virtual {v7}, Lcom/amazon/bookwizard/data/Country;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v5, v3

    .line 192
    :cond_2
    invoke-virtual {v7}, Lcom/amazon/bookwizard/data/Country;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eq v6, v4, :cond_4

    move v5, v6

    .line 195
    :cond_4
    invoke-static {v0, v5}, Lcom/amazon/bookwizard/welcome/CountryPickerFragment;->newInstance([Ljava/lang/String;I)Lcom/amazon/bookwizard/welcome/CountryPickerFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "COUNTRY_PICKER"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onLetsGetStartedClicked()V
    .locals 6

    .line 139
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->showNetworkUnavailableDialog()V

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->rsContext:Ljava/lang/String;

    const-string v1, "LetsGetStarted"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;->getInstance()Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;->recordBookWizardStarted()V

    .line 147
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->showCountryPicker()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->next()V

    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->skipSignup()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/BookWizardConfig;->setEligibleForPreview(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->next()V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 160
    iget-object v2, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    sget v3, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_signup_processing:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/amazon/bookwizard/ui/fragment/ProgressDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/bookwizard/ui/fragment/ProgressDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "WELCOME_SCREEN_KU_SIGNUP"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/amazon/bookwizard/service/SetCorRequest;

    iget-object v2, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getDeviceInfo()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v3}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/bookwizard/BookWizardConfig;->getCor()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/amazon/bookwizard/welcome/WelcomeScreenController$1;

    invoke-direct {v4, p0}, Lcom/amazon/bookwizard/welcome/WelcomeScreenController$1;-><init>(Lcom/amazon/bookwizard/welcome/WelcomeScreenController;)V

    new-instance v5, Lcom/amazon/bookwizard/welcome/WelcomeScreenController$2;

    invoke-direct {v5, p0}, Lcom/amazon/bookwizard/welcome/WelcomeScreenController$2;-><init>(Lcom/amazon/bookwizard/welcome/WelcomeScreenController;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/bookwizard/service/SetCorRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public onRequestStatusChanged(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;)V
    .locals 3

    .line 219
    sget-object v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->COR_UPDATED:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;->getType()Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 220
    sget-object v0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController$5;->$SwitchMap$com$amazon$kindle$krx$download$IKRXResponseHandler$DownloadStatus:[I

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;->getStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->dismissProgressDialog()V

    .line 227
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->next()V

    goto :goto_1

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->checkKuPreviewEligibility()V

    goto :goto_1

    .line 229
    :cond_1
    sget-object v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->PREVIEW_ELIGIBLE:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;->getType()Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 231
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;->getStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object p1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/amazon/bookwizard/BookWizardConfig;->setEligibleForPreview(Z)V

    .line 232
    invoke-direct {p0}, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->dismissProgressDialog()V

    .line 233
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->next()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public showView(Lcom/amazon/bookwizard/service/FlowStep;)V
    .locals 2

    .line 101
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    .line 103
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->isLargeLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->fragment:Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;

    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/BookWizardController;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 109
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->showCountryPicker()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BookWizardCPWelcomeScreen"

    .line 110
    iput-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->rsContext:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 111
    sget-object v0, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object p1

    if-ne v0, p1, :cond_2

    const-string p1, "BookWizardPrimeWelcome"

    .line 112
    iput-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->rsContext:Ljava/lang/String;

    .line 115
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->rsContext:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/bookwizard/util/M;->show(Ljava/lang/String;)V

    return-void
.end method
