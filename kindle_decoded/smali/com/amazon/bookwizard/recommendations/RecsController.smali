.class public Lcom/amazon/bookwizard/recommendations/RecsController;
.super Lcom/amazon/bookwizard/BookWizardController;
.source "RecsController.java"

# interfaces
.implements Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;


# static fields
.field private static final KEY_IS_ERROR_DIALOG_SHOWN:Ljava/lang/String; = "isErrorDialogShown"

.field private static final KEY_NEXT_CLICKED:Ljava/lang/String; = "next_clicked"

.field private static final KEY_NUM_KU_BOOKS:Ljava/lang/String; = "numberOfKuBooks"

.field private static final KEY_SIGNUP_CLICKED:Ljava/lang/String; = "signupClicked"

.field private static final KU_WELCOME_DIALOG_TAG:Ljava/lang/String; = "KU_WELCOME_DIALOG_TAG"

.field private static final PROGRESS_DIALOG_TAG:Ljava/lang/String; = "RECS_PAGE_KU_SIGNUP"

.field private static final SIGNUP_FAILURE_TAG:Ljava/lang/String; = "SIGNUP_FAILURE_DIALOG"


# instance fields
.field private final data:Lcom/amazon/bookwizard/data/DataProvider;

.field private final fragment:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

.field private goToStore:Z

.field private nextClicked:Z

.field private numKuBooks:I

.field private final requestQueue:Lcom/android/volley/RequestQueue;

.field private rsContext:Ljava/lang/String;

.field private signupClicked:Z

.field private final store:Lcom/amazon/bookwizard/store/StoreManager;


# direct methods
.method public constructor <init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/data/DataProvider;Lcom/android/volley/RequestQueue;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/BookWizardController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;)V

    .line 86
    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    .line 87
    iput-object p3, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 88
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getStoreManager()Lcom/amazon/bookwizard/store/StoreManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->store:Lcom/amazon/bookwizard/store/StoreManager;

    .line 89
    new-instance p1, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    invoke-direct {p1}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;-><init>()V

    iput-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->fragment:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    const-string p2, "BookWizardRecommendationsScreen"

    .line 90
    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->rsContext:Ljava/lang/String;

    .line 92
    invoke-virtual {p1, p0}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->setListener(Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/bookwizard/recommendations/RecsController;)Lcom/amazon/bookwizard/data/DataProvider;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    return-object p0
.end method

.method private downloadRecommendations()V
    .locals 6

    .line 256
    sget-object v0, Lcom/amazon/bookwizard/service/StepFlavor;->KU:Lcom/amazon/bookwizard/service/StepFlavor;

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 257
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getDownloadManager()Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/bookwizard/service/StepFlavor;->KU:Lcom/amazon/bookwizard/service/StepFlavor;

    iget-object v2, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getDeviceInfo()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->downloadItems(Lcom/amazon/bookwizard/service/StepFlavor;Lcom/amazon/kindle/krx/application/IDeviceInformation;)V

    .line 260
    :cond_0
    sget-object v0, Lcom/amazon/bookwizard/BookWizardConfig$Type;->STATE:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/bookwizard/BookWizardConfig;->getType()Lcom/amazon/bookwizard/BookWizardConfig$Type;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getRecommendations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/amazon/bookwizard/service/GetRecsRequest;

    iget-object v2, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getDeviceInfo()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v3}, Lcom/amazon/bookwizard/data/DataProvider;->getActiveRatings()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/amazon/bookwizard/recommendations/RecsController$2;

    invoke-direct {v4, p0}, Lcom/amazon/bookwizard/recommendations/RecsController$2;-><init>(Lcom/amazon/bookwizard/recommendations/RecsController;)V

    new-instance v5, Lcom/amazon/bookwizard/recommendations/RecsController$3;

    invoke-direct {v5, p0}, Lcom/amazon/bookwizard/recommendations/RecsController$3;-><init>(Lcom/amazon/bookwizard/recommendations/RecsController;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/bookwizard/service/GetRecsRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :cond_2
    :goto_0
    return-void
.end method

.method private enableKuSection()V
    .locals 4

    .line 368
    new-instance v0, Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment;

    invoke-direct {v0}, Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment;-><init>()V

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "KU_WELCOME_DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffRecs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/bookwizard/service/PayoffRec;

    .line 373
    iget v3, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->numKuBooks:I

    if-lt v1, v3, :cond_0

    goto :goto_1

    .line 376
    :cond_0
    iget-object v3, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v3, v2}, Lcom/amazon/bookwizard/data/DataProvider;->markForDownload(Lcom/amazon/bookwizard/service/PayoffRec;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->fragment:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->updateUI()V

    return-void
.end method

.method private postSignupFailureDialog()V
    .locals 3

    .line 352
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

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "SIGNUP_FAILURE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 357
    iget-object v2, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 361
    :cond_1
    new-instance v0, Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment;

    invoke-direct {v0}, Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private show()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->fragment:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/BookWizardController;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 145
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NETWORK_ERROR_DEFAULT"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->postNetworkFailureDialog()V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "SIGNUP_FAILURE_DIALOG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/amazon/bookwizard/recommendations/RecsController;->postSignupFailureDialog()V

    .line 151
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getCurrentStep()Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 152
    sget-object v1, Lcom/amazon/bookwizard/service/StepFlavor;->KU:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v0

    if-ne v1, v0, :cond_2

    const-string v0, "BookWizardRecommendationsWithKuScreen"

    .line 153
    iput-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->rsContext:Ljava/lang/String;

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->rsContext:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/bookwizard/util/M;->show(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 3

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    iget v1, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->numKuBooks:I

    const-string/jumbo v2, "numberOfKuBooks"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    iget-boolean v1, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->nextClicked:Z

    const-string/jumbo v2, "next_clicked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    iget-boolean v1, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->signupClicked:Z

    const-string/jumbo v2, "signupClicked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "recommendationsView"

    return-object v0
.end method

.method public isBackEnabled()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->isSubscribed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onBack()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->rsContext:Ljava/lang/String;

    const-string v1, "BackClicked"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getRecommendations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/bookwizard/data/Recommendation;

    .line 174
    iget-object v2, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v2, v1}, Lcom/amazon/bookwizard/data/DataProvider;->unmarkForDownload(Lcom/amazon/bookwizard/data/Recommendation;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getWantToRead()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/bookwizard/data/Recommendation;

    .line 177
    iget-object v2, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v2, v1}, Lcom/amazon/bookwizard/data/DataProvider;->unmarkForDownload(Lcom/amazon/bookwizard/data/Recommendation;)V

    goto :goto_1

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->clearRecommendations()V

    .line 180
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->clearBooksToDownload()V

    .line 182
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->back()V

    return-void
.end method

.method public onCoverClicked(Lcom/amazon/bookwizard/data/Recommendation;)V
    .locals 7

    .line 282
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->rsContext:Ljava/lang/String;

    const-string v1, "DetailsClicked"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getBookDetailController()Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Recommendation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Recommendation;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Recommendation;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Recommendation;->isKu()Z

    move-result v6

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->showDetails(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/bookwizard/data/Category;Ljava/lang/String;Z)V

    return-void
.end method

.method public onDownloadClicked(Lcom/amazon/bookwizard/data/Recommendation;Z)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/bookwizard/data/Recommendation;->onDownloadClicked(Lcom/amazon/bookwizard/data/DataProvider;Z)V

    .line 294
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->rsContext:Ljava/lang/String;

    new-instance v0, Lcom/amazon/bookwizard/recommendations/RecsController$4;

    invoke-direct {v0, p0, p2}, Lcom/amazon/bookwizard/recommendations/RecsController$4;-><init>(Lcom/amazon/bookwizard/recommendations/RecsController;Z)V

    const-string p2, "SampleDownloadClicked"

    invoke-static {p1, p2, v0}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onEnd()V
    .locals 2

    .line 244
    iget-boolean v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->goToStore:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    const-string v1, "bookwizard"

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->goToStore(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->goToLibrary()V

    :goto_0
    return-void
.end method

.method public onKuSignUpClicked(I)V
    .locals 4

    .line 304
    iput p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->numKuBooks:I

    .line 306
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/BookWizardConfig;->skipSignup()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/BookWizardConfig;->setSubscribed(Z)V

    .line 308
    invoke-direct {p0}, Lcom/amazon/bookwizard/recommendations/RecsController;->enableKuSection()V

    return-void

    .line 312
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->signupClicked:Z

    if-eqz p1, :cond_1

    return-void

    .line 315
    :cond_1
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->rsContext:Ljava/lang/String;

    const-string v1, "KuSignup"

    invoke-static {p1, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iput-boolean v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->signupClicked:Z

    .line 318
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_signup_processing:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lcom/amazon/bookwizard/ui/fragment/ProgressDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/bookwizard/ui/fragment/ProgressDialogFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "RECS_PAGE_KU_SIGNUP"

    invoke-virtual {p1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 319
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v0, Lcom/amazon/bookwizard/ku/service/KuSignupRequest;

    iget-object v2, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getDeviceInfo()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/amazon/bookwizard/ku/service/KuSignupRequest;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;)V

    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public onNext()V
    .locals 8

    .line 189
    iget-boolean v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->nextClicked:Z

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->showNetworkUnavailableDialog()V

    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getRecommendations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/bookwizard/data/Recommendation;

    .line 199
    iget-object v4, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v4, v3}, Lcom/amazon/bookwizard/data/DataProvider;->isMarkedForDownload(Lcom/amazon/bookwizard/data/Recommendation;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->store:Lcom/amazon/bookwizard/store/StoreManager;

    if-eqz v4, :cond_2

    .line 200
    invoke-virtual {v3}, Lcom/amazon/bookwizard/data/Recommendation;->getBook()Lcom/amazon/bookwizard/data/Book;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amazon/bookwizard/store/StoreManager;->downloadSample(Lcom/amazon/bookwizard/data/Book;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getWantToRead()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/bookwizard/data/Recommendation;

    .line 208
    iget-object v5, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v5, v4}, Lcom/amazon/bookwizard/data/DataProvider;->isMarkedForDownload(Lcom/amazon/bookwizard/data/Recommendation;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->store:Lcom/amazon/bookwizard/store/StoreManager;

    if-eqz v5, :cond_4

    .line 209
    invoke-virtual {v4}, Lcom/amazon/bookwizard/data/Recommendation;->getBook()Lcom/amazon/bookwizard/data/Book;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/amazon/bookwizard/store/StoreManager;->downloadSample(Lcom/amazon/bookwizard/data/Book;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffRecs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/bookwizard/service/PayoffRec;

    .line 217
    iget-object v6, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v6, v5}, Lcom/amazon/bookwizard/data/DataProvider;->isMarkedForDownload(Lcom/amazon/bookwizard/service/PayoffRec;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 218
    new-instance v6, Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    sget-object v7, Lcom/amazon/bookwizard/glide/ActionType;->KU:Lcom/amazon/bookwizard/glide/ActionType;

    invoke-direct {v6, v5, v7}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;-><init>(Lcom/amazon/bookwizard/service/PayoffRec;Lcom/amazon/bookwizard/glide/ActionType;)V

    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getTaskExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/Void;

    invoke-virtual {v6, v5, v7}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 224
    :cond_7
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->rsContext:Ljava/lang/String;

    new-instance v5, Lcom/amazon/bookwizard/recommendations/RecsController$1;

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/amazon/bookwizard/recommendations/RecsController$1;-><init>(Lcom/amazon/bookwizard/recommendations/RecsController;III)V

    const-string v6, "DoneClicked"

    invoke-static {v0, v6, v5}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->nextClicked:Z

    if-nez v2, :cond_8

    if-nez v3, :cond_8

    if-nez v4, :cond_8

    const/4 v1, 0x1

    .line 233
    :cond_8
    iput-boolean v1, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->goToStore:Z

    .line 235
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->next()V

    .line 236
    invoke-static {}, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;->getInstance()Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;->recordBookWizardCompleted()V

    return-void
.end method

.method public onRequestStatusChanged(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;)V
    .locals 2

    .line 327
    invoke-virtual {p1}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;->getType()Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    move-result-object v0

    sget-object v1, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->KU_SIGNUP:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    if-ne v0, v1, :cond_3

    .line 328
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "RECS_PAGE_KU_SIGNUP"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/ui/fragment/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->signupClicked:Z

    .line 334
    sget-object v0, Lcom/amazon/bookwizard/recommendations/RecsController$5;->$SwitchMap$com$amazon$kindle$krx$download$IKRXResponseHandler$DownloadStatus:[I

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

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/amazon/bookwizard/recommendations/RecsController;->postSignupFailureDialog()V

    goto :goto_0

    .line 336
    :cond_2
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/BookWizardConfig;->setSubscribed(Z)V

    .line 337
    invoke-direct {p0}, Lcom/amazon/bookwizard/recommendations/RecsController;->enableKuSection()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRetry(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SIGNUP_FAILURE_DIALOG"

    .line 387
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 389
    iput-boolean p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->signupClicked:Z

    .line 390
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->fragment:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->getKuBooksCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/recommendations/RecsController;->onKuSignUpClicked(I)V

    goto :goto_0

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/amazon/bookwizard/recommendations/RecsController;->downloadRecommendations()V

    :goto_0
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "isErrorDialogShown"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "numberOfKuBooks"

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->numKuBooks:I

    const-string/jumbo v0, "next_clicked"

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->nextClicked:Z

    const-string/jumbo v0, "signupClicked"

    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController;->signupClicked:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public showView(Lcom/amazon/bookwizard/service/FlowStep;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    .line 135
    invoke-direct {p0}, Lcom/amazon/bookwizard/recommendations/RecsController;->downloadRecommendations()V

    .line 136
    invoke-direct {p0}, Lcom/amazon/bookwizard/recommendations/RecsController;->show()V

    return-void
.end method
