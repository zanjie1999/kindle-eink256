.class public Lcom/amazon/bookwizard/ratings/RatingsController;
.super Lcom/amazon/bookwizard/BookWizardController;
.source "RatingsController.java"

# interfaces
.implements Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/amazon/bookwizard/ratings/RatingsPageFragment$RatingsListener;


# static fields
.field private static final MIN_RATING_TO_FETCH_RELATED_BOOKS:I = 0x3


# instance fields
.field private final data:Lcom/amazon/bookwizard/data/DataProvider;

.field private final fragment:Lcom/amazon/bookwizard/ratings/RatingsPageFragment;

.field private final requestQueue:Lcom/android/volley/RequestQueue;

.field private final viewManager:Lcom/amazon/bookwizard/BookViewManager;


# direct methods
.method public constructor <init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/data/DataProvider;Lcom/android/volley/RequestQueue;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/BookWizardController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;)V

    .line 74
    iput-object p2, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    .line 75
    iput-object p3, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 76
    new-instance p1, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;

    invoke-direct {p1}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;-><init>()V

    iput-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->fragment:Lcom/amazon/bookwizard/ratings/RatingsPageFragment;

    .line 77
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getViewManager()Lcom/amazon/bookwizard/BookViewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->viewManager:Lcom/amazon/bookwizard/BookViewManager;

    .line 79
    iget-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->fragment:Lcom/amazon/bookwizard/ratings/RatingsPageFragment;

    invoke-virtual {p1, p0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->setListener(Lcom/amazon/bookwizard/ratings/RatingsPageFragment$RatingsListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/bookwizard/ratings/RatingsController;)Lcom/amazon/bookwizard/data/DataProvider;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/bookwizard/ratings/RatingsController;)Lcom/amazon/bookwizard/ratings/RatingsPageFragment;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->fragment:Lcom/amazon/bookwizard/ratings/RatingsPageFragment;

    return-object p0
.end method

.method private downloadRelatedBooks(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;)V
    .locals 8

    .line 222
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v7, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest;

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getDeviceInfo()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    iget-object v1, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/data/DataProvider;->getRunningState()Lcom/amazon/bookwizard/service/State;

    move-result-object v3

    new-instance v5, Lcom/amazon/bookwizard/ratings/RatingsController$4;

    invoke-direct {v5, p0, p1}, Lcom/amazon/bookwizard/ratings/RatingsController$4;-><init>(Lcom/amazon/bookwizard/ratings/RatingsController;Lcom/amazon/bookwizard/data/Category;)V

    new-instance v6, Lcom/amazon/bookwizard/ratings/RatingsController$5;

    invoke-direct {v6, p0}, Lcom/amazon/bookwizard/ratings/RatingsController$5;-><init>(Lcom/amazon/bookwizard/ratings/RatingsController;)V

    move-object v1, v7

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/service/State;Lcom/amazon/bookwizard/data/Book;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private show()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "kuUpsellView"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->fragment:Lcom/amazon/bookwizard/ratings/RatingsPageFragment;

    const/4 v1, 0x0

    sget v2, Lcom/amazon/bookwizard/R$anim;->abc_slide_out_bottom:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/bookwizard/BookWizardController;->showFragment(Landroidx/fragment/app/Fragment;II)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->fragment:Lcom/amazon/bookwizard/ratings/RatingsPageFragment;

    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/BookWizardController;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NETWORK_ERROR_DEFAULT"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->postNetworkFailureDialog()V

    :cond_1
    const-string v0, "BookWizardRatingScreen"

    .line 130
    invoke-static {v0}, Lcom/amazon/bookwizard/util/M;->show(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public downloadBooksToRate()V
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getPreferredEmptyGenres()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getPopularBooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->fragment:Lcom/amazon/bookwizard/ratings/RatingsPageFragment;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->updateUI()V

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/amazon/bookwizard/service/GetRatingsRequest;

    iget-object v2, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getDeviceInfo()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v3}, Lcom/amazon/bookwizard/data/DataProvider;->getPreferredGenres()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/amazon/bookwizard/ratings/RatingsController$2;

    invoke-direct {v4, p0}, Lcom/amazon/bookwizard/ratings/RatingsController$2;-><init>(Lcom/amazon/bookwizard/ratings/RatingsController;)V

    new-instance v5, Lcom/amazon/bookwizard/ratings/RatingsController$3;

    invoke-direct {v5, p0}, Lcom/amazon/bookwizard/ratings/RatingsController$3;-><init>(Lcom/amazon/bookwizard/ratings/RatingsController;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/bookwizard/service/GetRatingsRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ratingsView"

    return-object v0
.end method

.method public onBack()V
    .locals 2

    const-string v0, "BookWizardRatingScreen"

    const-string v1, "BackClicked"

    .line 137
    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->back()V

    return-void
.end method

.method public onBookRatingChanged(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;I)V
    .locals 1

    const-string v0, "BookWizardRatingScreen"

    .line 241
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amazon/bookwizard/ratings/RatingsController;->updateBookRating(Ljava/lang/String;Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 169
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, -0x2

    if-ne p1, p2, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->next()V

    :cond_0
    return-void
.end method

.method public onCoverClicked(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;)V
    .locals 3

    const-string v0, "BookWizardRatingScreen"

    const-string v1, "DetailsClicked"

    .line 300
    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getBookDetailController()Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->showDetails(Ljava/lang/String;Lcom/amazon/bookwizard/data/Category;Ljava/lang/String;Z)V

    return-void
.end method

.method public onNext()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->showNetworkUnavailableDialog()V

    return-void

    .line 151
    :cond_0
    new-instance v0, Lcom/amazon/bookwizard/ratings/RatingsController$1;

    invoke-direct {v0, p0}, Lcom/amazon/bookwizard/ratings/RatingsController$1;-><init>(Lcom/amazon/bookwizard/ratings/RatingsController;)V

    const-string v1, "BookWizardRatingScreen"

    const-string v2, "NextClicked"

    invoke-static {v1, v2, v0}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 156
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getActiveRatingsCount()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    const-string v0, "BookWizardFewBooksRatedWarningDialog"

    .line 157
    invoke-static {v0}, Lcom/amazon/bookwizard/util/M;->show(Ljava/lang/String;)V

    .line 158
    new-instance v0, Lcom/amazon/bookwizard/ui/fragment/WarningDialogFragment;

    invoke-direct {v0}, Lcom/amazon/bookwizard/ui/fragment/WarningDialogFragment;-><init>()V

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DIALOG"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->next()V

    :goto_0
    return-void
.end method

.method public onRetry(Ljava/lang/String;)V
    .locals 0

    .line 310
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ratings/RatingsController;->downloadBooksToRate()V

    return-void
.end method

.method public onWantToReadClicked(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;Z)V
    .locals 3

    if-eqz p3, :cond_0

    .line 283
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    new-instance v1, Lcom/amazon/bookwizard/data/Rating;

    const/4 v2, -0x1

    invoke-direct {v1, p1, v2}, Lcom/amazon/bookwizard/data/Rating;-><init>(Lcom/amazon/bookwizard/data/Category;I)V

    invoke-virtual {v0, p2, v1}, Lcom/amazon/bookwizard/data/DataProvider;->setRating(Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/data/Rating;)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {p1, p2}, Lcom/amazon/bookwizard/data/DataProvider;->removeRating(Lcom/amazon/bookwizard/data/Book;)V

    .line 288
    :goto_0
    invoke-virtual {p0, p2}, Lcom/amazon/bookwizard/ratings/RatingsController;->updateBookViews(Lcom/amazon/bookwizard/data/Book;)V

    .line 289
    new-instance p1, Lcom/amazon/bookwizard/ratings/RatingsController$7;

    invoke-direct {p1, p0, p3}, Lcom/amazon/bookwizard/ratings/RatingsController$7;-><init>(Lcom/amazon/bookwizard/ratings/RatingsController;Z)V

    const-string p2, "BookWizardRatingScreen"

    const-string p3, "WantToReadClicked"

    invoke-static {p2, p3, p1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public showView(Lcom/amazon/bookwizard/service/FlowStep;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    .line 112
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ratings/RatingsController;->downloadBooksToRate()V

    .line 113
    invoke-direct {p0}, Lcom/amazon/bookwizard/ratings/RatingsController;->show()V

    return-void
.end method

.method public updateBookRating(Ljava/lang/String;Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;I)V
    .locals 2

    if-lez p4, :cond_0

    .line 258
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    new-instance v1, Lcom/amazon/bookwizard/data/Rating;

    invoke-direct {v1, p2, p4}, Lcom/amazon/bookwizard/data/Rating;-><init>(Lcom/amazon/bookwizard/data/Category;I)V

    invoke-virtual {v0, p3, v1}, Lcom/amazon/bookwizard/data/DataProvider;->setRating(Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/data/Rating;)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0, p3}, Lcom/amazon/bookwizard/data/DataProvider;->removeRating(Lcom/amazon/bookwizard/data/Book;)V

    :goto_0
    const/4 v0, 0x3

    if-lt p4, v0, :cond_1

    .line 265
    invoke-virtual {p3}, Lcom/amazon/bookwizard/data/Book;->isRelatedBooksFetched()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 266
    invoke-virtual {p3, v0}, Lcom/amazon/bookwizard/data/Book;->setRelatedBooksFetched(Z)V

    .line 267
    invoke-direct {p0, p2, p3}, Lcom/amazon/bookwizard/ratings/RatingsController;->downloadRelatedBooks(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;)V

    .line 270
    :cond_1
    invoke-virtual {p0, p3}, Lcom/amazon/bookwizard/ratings/RatingsController;->updateBookViews(Lcom/amazon/bookwizard/data/Book;)V

    .line 271
    new-instance p2, Lcom/amazon/bookwizard/ratings/RatingsController$6;

    invoke-direct {p2, p0, p4}, Lcom/amazon/bookwizard/ratings/RatingsController$6;-><init>(Lcom/amazon/bookwizard/ratings/RatingsController;I)V

    const-string p3, "BookRated"

    invoke-static {p1, p3, p2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public updateBookViews(Lcom/amazon/bookwizard/data/Book;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->viewManager:Lcom/amazon/bookwizard/BookViewManager;

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/BookViewManager;->updateViews(Lcom/amazon/bookwizard/data/Book;)V

    .line 184
    iget-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->fragment:Lcom/amazon/bookwizard/ratings/RatingsPageFragment;

    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getActiveRatingsCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->setRatingHeaderText(I)V

    return-void
.end method
