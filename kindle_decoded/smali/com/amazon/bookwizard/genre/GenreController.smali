.class public Lcom/amazon/bookwizard/genre/GenreController;
.super Lcom/amazon/bookwizard/BookWizardController;
.source "GenreController.java"

# interfaces
.implements Lcom/amazon/bookwizard/genre/GenrePageFragment$GenrePageListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.bookwizard.genre.GenreController"


# instance fields
.field private final data:Lcom/amazon/bookwizard/data/DataProvider;

.field private final fragment:Lcom/amazon/bookwizard/genre/GenrePageFragment;

.field private final requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/data/DataProvider;Lcom/android/volley/RequestQueue;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/BookWizardController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;)V

    .line 62
    iput-object p2, p0, Lcom/amazon/bookwizard/genre/GenreController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    .line 63
    iput-object p3, p0, Lcom/amazon/bookwizard/genre/GenreController;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 64
    new-instance p1, Lcom/amazon/bookwizard/genre/GenrePageFragment;

    invoke-direct {p1}, Lcom/amazon/bookwizard/genre/GenrePageFragment;-><init>()V

    iput-object p1, p0, Lcom/amazon/bookwizard/genre/GenreController;->fragment:Lcom/amazon/bookwizard/genre/GenrePageFragment;

    .line 66
    invoke-virtual {p1, p0}, Lcom/amazon/bookwizard/genre/GenrePageFragment;->setListener(Lcom/amazon/bookwizard/genre/GenrePageFragment$GenrePageListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/bookwizard/genre/GenreController;)Lcom/amazon/bookwizard/data/DataProvider;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/bookwizard/genre/GenreController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    return-object p0
.end method

.method private downloadGenres()V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenreController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getGenres()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenreController;->fragment:Lcom/amazon/bookwizard/genre/GenrePageFragment;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/genre/GenrePageFragment;->updateUI()V

    return-void

    .line 166
    :cond_0
    sget-object v0, Lcom/amazon/bookwizard/genre/GenreController;->TAG:Ljava/lang/String;

    const-string v1, "GenreDownloadStarted"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenreController;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/amazon/bookwizard/service/GetGenresRequest;

    iget-object v2, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getDeviceInfo()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    new-instance v3, Lcom/amazon/bookwizard/genre/GenreController$4;

    invoke-direct {v3, p0}, Lcom/amazon/bookwizard/genre/GenreController$4;-><init>(Lcom/amazon/bookwizard/genre/GenreController;)V

    new-instance v4, Lcom/amazon/bookwizard/genre/GenreController$5;

    invoke-direct {v4, p0}, Lcom/amazon/bookwizard/genre/GenreController$5;-><init>(Lcom/amazon/bookwizard/genre/GenreController;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/bookwizard/service/GetGenresRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private show()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "kuUpsellView"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenreController;->fragment:Lcom/amazon/bookwizard/genre/GenrePageFragment;

    const/4 v1, 0x0

    sget v2, Lcom/amazon/bookwizard/R$anim;->abc_slide_out_bottom:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/bookwizard/BookWizardController;->showFragment(Landroidx/fragment/app/Fragment;II)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenreController;->fragment:Lcom/amazon/bookwizard/genre/GenrePageFragment;

    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/BookWizardController;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NETWORK_ERROR_DEFAULT"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->postNetworkFailureDialog()V

    :cond_1
    const-string v0, "BookWizardGenreScreen"

    .line 116
    invoke-static {v0}, Lcom/amazon/bookwizard/util/M;->show(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 1

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "genreSelectionView"

    return-object v0
.end method

.method public onGenreSelected(Lcom/amazon/bookwizard/data/Genre;Z)V
    .locals 1

    .line 140
    invoke-virtual {p1, p2}, Lcom/amazon/bookwizard/data/Genre;->setPreferred(Z)V

    .line 142
    new-instance p1, Lcom/amazon/bookwizard/genre/GenreController$2;

    invoke-direct {p1, p0, p2}, Lcom/amazon/bookwizard/genre/GenreController$2;-><init>(Lcom/amazon/bookwizard/genre/GenreController;Z)V

    const-string p2, "BookWizardGenreScreen"

    const-string v0, "GenreSelected"

    invoke-static {p2, v0, p1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onNext()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->showNetworkUnavailableDialog()V

    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/amazon/bookwizard/genre/GenreController$1;

    invoke-direct {v0, p0}, Lcom/amazon/bookwizard/genre/GenreController$1;-><init>(Lcom/amazon/bookwizard/genre/GenreController;)V

    const-string v1, "BookWizardGenreScreen"

    const-string v2, "NextClicked"

    invoke-static {v1, v2, v0}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 132
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->next()V

    return-void
.end method

.method public onNotNow()V
    .locals 3

    .line 152
    new-instance v0, Lcom/amazon/bookwizard/genre/GenreController$3;

    invoke-direct {v0, p0}, Lcom/amazon/bookwizard/genre/GenreController$3;-><init>(Lcom/amazon/bookwizard/genre/GenreController;)V

    const-string v1, "BookWizardGenreScreen"

    const-string v2, "NoThankYou"

    invoke-static {v1, v2, v0}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 155
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    const-string v1, "bookwizard"

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->goToStore(Ljava/lang/String;)V

    return-void
.end method

.method public onRetry(Ljava/lang/String;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/amazon/bookwizard/genre/GenreController;->downloadGenres()V

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public showView(Lcom/amazon/bookwizard/service/FlowStep;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    .line 98
    invoke-direct {p0}, Lcom/amazon/bookwizard/genre/GenreController;->downloadGenres()V

    .line 99
    invoke-direct {p0}, Lcom/amazon/bookwizard/genre/GenreController;->show()V

    return-void
.end method
