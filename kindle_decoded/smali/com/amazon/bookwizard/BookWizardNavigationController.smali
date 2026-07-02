.class public Lcom/amazon/bookwizard/BookWizardNavigationController;
.super Ljava/lang/Object;
.source "BookWizardNavigationController.java"


# static fields
.field private static final KEY_CURRENT_CONTROLLER:Ljava/lang/String; = "current_controller"

.field private static final KEY_CURRENT_STEP_ID:Ljava/lang/String; = "current_step_id"

.field private static final KEY_DETAILS_BUNDLE:Ljava/lang/String; = "details_data"

.field private static final KEY_GENRE_BUNDLE:Ljava/lang/String; = "genre_data"

.field private static final KEY_KU_BOOKS_BUNDLE:Ljava/lang/String; = "ku_books_data"

.field private static final KEY_KU_OFFER_BUNDLE:Ljava/lang/String; = "ku_offer_data"

.field private static final KEY_RATINGS_BUNDLE:Ljava/lang/String; = "ratings_data"

.field private static final KEY_RECS_BUNDLE:Ljava/lang/String; = "recs_data"

.field private static final KEY_WELCOME_BUNDLE:Ljava/lang/String; = "welcome_data"

.field private static final TAG:Ljava/lang/String; = "com.amazon.bookwizard.BookWizardNavigationController"


# instance fields
.field private final activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

.field private currentController:Lcom/amazon/bookwizard/BookWizardController;

.field private currentStep:Ljava/lang/String;

.field private final detailsController:Lcom/amazon/bookwizard/bookdetail/BookDetailController;

.field private final genreController:Lcom/amazon/bookwizard/genre/GenreController;

.field private final kuPayoffsController:Lcom/amazon/bookwizard/payoff/PayoffController;

.field private final launchInfo:Lcom/amazon/bookwizard/service/LaunchInfo;

.field private final primeLandingController:Lcom/amazon/bookwizard/prime/PrimeLandingController;

.field private final ratingsController:Lcom/amazon/bookwizard/ratings/RatingsController;

.field private final recsController:Lcom/amazon/bookwizard/recommendations/RecsController;

.field private final upsellController:Lcom/amazon/bookwizard/ku/KuUpsellController;

.field private final welcomeController:Lcom/amazon/bookwizard/welcome/WelcomeScreenController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/service/LaunchInfo;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    .line 75
    iput-object p2, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->launchInfo:Lcom/amazon/bookwizard/service/LaunchInfo;

    .line 77
    invoke-static {p1}, Lcom/amazon/bookwizard/BookWizardPlugin;->getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p2

    .line 78
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getDataProvider()Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;

    invoke-direct {v1, p1, v0, p2}, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/data/DataProvider;Lcom/android/volley/RequestQueue;)V

    iput-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->welcomeController:Lcom/amazon/bookwizard/welcome/WelcomeScreenController;

    .line 80
    new-instance v1, Lcom/amazon/bookwizard/genre/GenreController;

    invoke-direct {v1, p1, v0, p2}, Lcom/amazon/bookwizard/genre/GenreController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/data/DataProvider;Lcom/android/volley/RequestQueue;)V

    iput-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->genreController:Lcom/amazon/bookwizard/genre/GenreController;

    .line 81
    new-instance v1, Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-direct {v1, p1, v0, p2}, Lcom/amazon/bookwizard/ratings/RatingsController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/data/DataProvider;Lcom/android/volley/RequestQueue;)V

    iput-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->ratingsController:Lcom/amazon/bookwizard/ratings/RatingsController;

    .line 82
    new-instance v1, Lcom/amazon/bookwizard/recommendations/RecsController;

    invoke-direct {v1, p1, v0, p2}, Lcom/amazon/bookwizard/recommendations/RecsController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/data/DataProvider;Lcom/android/volley/RequestQueue;)V

    iput-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->recsController:Lcom/amazon/bookwizard/recommendations/RecsController;

    .line 83
    new-instance v1, Lcom/amazon/bookwizard/ku/KuUpsellController;

    invoke-direct {v1, p1, v0, p2}, Lcom/amazon/bookwizard/ku/KuUpsellController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/data/DataProvider;Lcom/android/volley/RequestQueue;)V

    iput-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->upsellController:Lcom/amazon/bookwizard/ku/KuUpsellController;

    .line 84
    new-instance v1, Lcom/amazon/bookwizard/payoff/PayoffController;

    invoke-direct {v1, p1, v0}, Lcom/amazon/bookwizard/payoff/PayoffController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/data/DataProvider;)V

    iput-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->kuPayoffsController:Lcom/amazon/bookwizard/payoff/PayoffController;

    .line 85
    new-instance v1, Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    invoke-direct {v1, p1, v0, p2}, Lcom/amazon/bookwizard/bookdetail/BookDetailController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/data/DataProvider;Lcom/android/volley/RequestQueue;)V

    iput-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->detailsController:Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    .line 86
    new-instance p2, Lcom/amazon/bookwizard/prime/PrimeLandingController;

    invoke-direct {p2, p1}, Lcom/amazon/bookwizard/prime/PrimeLandingController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;)V

    iput-object p2, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->primeLandingController:Lcom/amazon/bookwizard/prime/PrimeLandingController;

    return-void
.end method

.method private getViewController(Ljava/lang/String;)Lcom/amazon/bookwizard/BookWizardController;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->welcomeController:Lcom/amazon/bookwizard/welcome/WelcomeScreenController;

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/BookWizardController;->handlesStep(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->welcomeController:Lcom/amazon/bookwizard/welcome/WelcomeScreenController;

    return-object p1

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->genreController:Lcom/amazon/bookwizard/genre/GenreController;

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/BookWizardController;->handlesStep(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->genreController:Lcom/amazon/bookwizard/genre/GenreController;

    return-object p1

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->upsellController:Lcom/amazon/bookwizard/ku/KuUpsellController;

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/BookWizardController;->handlesStep(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->upsellController:Lcom/amazon/bookwizard/ku/KuUpsellController;

    return-object p1

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->kuPayoffsController:Lcom/amazon/bookwizard/payoff/PayoffController;

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/BookWizardController;->handlesStep(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->kuPayoffsController:Lcom/amazon/bookwizard/payoff/PayoffController;

    return-object p1

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->ratingsController:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/BookWizardController;->handlesStep(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->ratingsController:Lcom/amazon/bookwizard/ratings/RatingsController;

    return-object p1

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->recsController:Lcom/amazon/bookwizard/recommendations/RecsController;

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/BookWizardController;->handlesStep(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 293
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->recsController:Lcom/amazon/bookwizard/recommendations/RecsController;

    return-object p1

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->detailsController:Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/BookWizardController;->handlesStep(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 295
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->detailsController:Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    return-object p1

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->primeLandingController:Lcom/amazon/bookwizard/prime/PrimeLandingController;

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/BookWizardController;->handlesStep(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 297
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->primeLandingController:Lcom/amazon/bookwizard/prime/PrimeLandingController;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getBookDetailController()Lcom/amazon/bookwizard/bookdetail/BookDetailController;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->detailsController:Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    return-object v0
.end method

.method public getCurrentController()Lcom/amazon/bookwizard/BookWizardController;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentController:Lcom/amazon/bookwizard/BookWizardController;

    return-object v0
.end method

.method public getCurrentStep()Lcom/amazon/bookwizard/service/FlowStep;
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->launchInfo:Lcom/amazon/bookwizard/service/LaunchInfo;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->launchInfo:Lcom/amazon/bookwizard/service/LaunchInfo;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentStep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/service/Flow;->getStep(Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRatingsController()Lcom/amazon/bookwizard/ratings/RatingsController;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->ratingsController:Lcom/amazon/bookwizard/ratings/RatingsController;

    return-object v0
.end method

.method public getWelcomeController()Lcom/amazon/bookwizard/welcome/WelcomeScreenController;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->welcomeController:Lcom/amazon/bookwizard/welcome/WelcomeScreenController;

    return-object v0
.end method

.method public handleBack()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->launchInfo:Lcom/amazon/bookwizard/service/LaunchInfo;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentController:Lcom/amazon/bookwizard/BookWizardController;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/bookwizard/BookWizardController;->isBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentStep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/service/Flow;->getStep(Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getBackStepId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->showStep(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_1
    sget-object v0, Lcom/amazon/bookwizard/BookWizardNavigationController;->TAG:Ljava/lang/String;

    const-string v1, "No step found"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    .line 200
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->finish()V

    return-void
.end method

.method public initializeControllers(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "navController"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "current_controller"

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->getViewController(Ljava/lang/String;)Lcom/amazon/bookwizard/BookWizardController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentController:Lcom/amazon/bookwizard/BookWizardController;

    const-string v0, "current_step_id"

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentStep:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->welcomeController:Lcom/amazon/bookwizard/welcome/WelcomeScreenController;

    const-string/jumbo v1, "welcome_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->setData(Landroid/os/Bundle;)V

    .line 106
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->genreController:Lcom/amazon/bookwizard/genre/GenreController;

    const-string v1, "genre_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/genre/GenreController;->setData(Landroid/os/Bundle;)V

    .line 107
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->ratingsController:Lcom/amazon/bookwizard/ratings/RatingsController;

    const-string/jumbo v1, "ratings_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/ratings/RatingsController;->setData(Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->recsController:Lcom/amazon/bookwizard/recommendations/RecsController;

    const-string/jumbo v1, "recs_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/recommendations/RecsController;->setData(Landroid/os/Bundle;)V

    .line 109
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->upsellController:Lcom/amazon/bookwizard/ku/KuUpsellController;

    const-string v1, "ku_offer_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/ku/KuUpsellController;->setData(Landroid/os/Bundle;)V

    .line 110
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->kuPayoffsController:Lcom/amazon/bookwizard/payoff/PayoffController;

    const-string v1, "ku_books_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/payoff/PayoffController;->setData(Landroid/os/Bundle;)V

    .line 111
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->detailsController:Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    const-string v1, "details_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->setData(Landroid/os/Bundle;)V

    .line 113
    sget-object p1, Lcom/amazon/bookwizard/BookWizardNavigationController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeControllers: controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentController:Lcom/amazon/bookwizard/BookWizardController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/bookwizard/BookWizardNavigationController;->TAG:Ljava/lang/String;

    const-string v0, "No state or doesn\'t contain controller id."

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_first_step"

    .line 98
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentStep:Ljava/lang/String;

    return-void
.end method

.method public isBackEnabled()Z
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->launchInfo:Lcom/amazon/bookwizard/service/LaunchInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->launchInfo:Lcom/amazon/bookwizard/service/LaunchInfo;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentStep:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amazon/bookwizard/service/Flow;->getStep(Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getBackStepId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public onRequestStatusChanged(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentController:Lcom/amazon/bookwizard/BookWizardController;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/BookWizardController;->onRequestStatusChanged(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 5

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentController:Lcom/amazon/bookwizard/BookWizardController;

    if-eqz v1, :cond_0

    .line 124
    sget-object v2, Lcom/amazon/bookwizard/BookWizardNavigationController;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/amazon/bookwizard/BookWizardController;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string/jumbo v1, "onSaveInstanceState: storing controller data (%s)"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentController:Lcom/amazon/bookwizard/BookWizardController;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/BookWizardController;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "current_controller"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentStep:Ljava/lang/String;

    const-string v2, "current_step_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->welcomeController:Lcom/amazon/bookwizard/welcome/WelcomeScreenController;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "welcome_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 128
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->genreController:Lcom/amazon/bookwizard/genre/GenreController;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/genre/GenreController;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "genre_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->upsellController:Lcom/amazon/bookwizard/ku/KuUpsellController;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/ku/KuUpsellController;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ku_offer_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 130
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->kuPayoffsController:Lcom/amazon/bookwizard/payoff/PayoffController;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/payoff/PayoffController;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ku_books_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 131
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->ratingsController:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/ratings/RatingsController;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ratings_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 132
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->detailsController:Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "details_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 133
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->recsController:Lcom/amazon/bookwizard/recommendations/RecsController;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/recommendations/RecsController;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "recs_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method public showCurrentView()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentStep:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentStep:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "_first_step"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->showStep(Ljava/lang/String;)V

    return-void
.end method

.method public showStep(Ljava/lang/String;)V
    .locals 5

    const-string v0, "_end_step"

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentController:Lcom/amazon/bookwizard/BookWizardController;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/BookWizardController;->onEnd()V

    .line 155
    sget-object p1, Lcom/amazon/bookwizard/BookWizardNavigationController;->TAG:Ljava/lang/String;

    const-string v0, "[fluent] Current step is end"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->launchInfo:Lcom/amazon/bookwizard/service/LaunchInfo;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/service/Flow;->getStep(Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v0

    const-string v1, "BookWizardFluent"

    if-eqz p1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/bookwizard/BookWizardNavigationController;->getViewController(Ljava/lang/String;)Lcom/amazon/bookwizard/BookWizardController;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentController:Lcom/amazon/bookwizard/BookWizardController;

    if-nez v2, :cond_2

    .line 169
    sget-object p1, Lcom/amazon/bookwizard/BookWizardNavigationController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[fluent] Failed to find next controller, closing book wizard. stepId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ErrorControllerMissing"

    .line 170
    invoke-static {v1, p1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->finish()V

    return-void

    .line 175
    :cond_2
    sget-object v1, Lcom/amazon/bookwizard/BookWizardNavigationController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[fluent] Showing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentController:Lcom/amazon/bookwizard/BookWizardController;

    invoke-virtual {v3}, Lcom/amazon/bookwizard/BookWizardController;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with step: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentStep:Ljava/lang/String;

    .line 177
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->currentController:Lcom/amazon/bookwizard/BookWizardController;

    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/BookWizardController;->showView(Lcom/amazon/bookwizard/service/FlowStep;)V

    return-void

    .line 161
    :cond_3
    :goto_0
    sget-object v2, Lcom/amazon/bookwizard/BookWizardNavigationController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[fluent] Null id or step.   id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; step="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ErrorStepMissing"

    .line 162
    invoke-static {v1, p1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardNavigationController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->finish()V

    return-void
.end method
