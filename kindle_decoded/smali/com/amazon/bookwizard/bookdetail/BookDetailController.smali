.class public Lcom/amazon/bookwizard/bookdetail/BookDetailController;
.super Lcom/amazon/bookwizard/BookWizardController;
.source "BookDetailController.java"

# interfaces
.implements Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;


# static fields
.field private static final DIALOG_TAG:Ljava/lang/String; = "BOOK_DETAILS"

.field private static final KEY_FRAGMENT_DATA:Ljava/lang/String; = "fragment"

.field private static final KEY_IS_SHOWING:Ljava/lang/String; = "isShowing"


# instance fields
.field private final data:Lcom/amazon/bookwizard/data/DataProvider;

.field private fragment:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;

.field private isRestoredFromState:Z

.field private isShowingWantToRead:Z

.field private final requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/data/DataProvider;Lcom/android/volley/RequestQueue;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/BookWizardController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;)V

    .line 68
    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    .line 69
    iput-object p3, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 70
    new-instance p1, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;

    invoke-direct {p1}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;-><init>()V

    iput-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->fragment:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;

    .line 72
    invoke-virtual {p1, p0}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->setListener(Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/bookwizard/bookdetail/BookDetailController;)Lcom/amazon/bookwizard/data/DataProvider;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    return-object p0
.end method

.method private show()V
    .locals 3

    .line 126
    iget-boolean v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->isRestoredFromState:Z

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "BOOK_DETAILS"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->fragment:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->isRestoredFromState:Z

    :goto_0
    const-string v0, "BookWizardBookDetailsScreen"

    .line 138
    invoke-static {v0}, Lcom/amazon/bookwizard/util/M;->show(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 3

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    iget-boolean v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->isShowingWantToRead:Z

    const-string v2, "isShowing"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    iget-object v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->fragment:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->getState()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fragment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "bookDetail"

    return-object v0
.end method

.method public onBack()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->fragment:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->setErrorShown(Z)V

    return-void
.end method

.method public onBookRatingChanged(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;I)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getRatingsController()Lcom/amazon/bookwizard/ratings/RatingsController;

    move-result-object v0

    const-string v1, "BookWizardBookDetailsScreen"

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/amazon/bookwizard/ratings/RatingsController;->updateBookRating(Ljava/lang/String;Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;I)V

    return-void
.end method

.method public onWantToReadClicked(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;Z)V
    .locals 3

    if-eqz p3, :cond_0

    .line 234
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    new-instance v1, Lcom/amazon/bookwizard/data/Rating;

    const/4 v2, -0x1

    invoke-direct {v1, p1, v2}, Lcom/amazon/bookwizard/data/Rating;-><init>(Lcom/amazon/bookwizard/data/Category;I)V

    invoke-virtual {v0, p2, v1}, Lcom/amazon/bookwizard/data/DataProvider;->setRating(Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/data/Rating;)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {p1, p2}, Lcom/amazon/bookwizard/data/DataProvider;->removeRating(Lcom/amazon/bookwizard/data/Book;)V

    .line 239
    :goto_0
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getRatingsController()Lcom/amazon/bookwizard/ratings/RatingsController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/bookwizard/ratings/RatingsController;->updateBookViews(Lcom/amazon/bookwizard/data/Book;)V

    .line 241
    new-instance p1, Lcom/amazon/bookwizard/bookdetail/BookDetailController$3;

    invoke-direct {p1, p0, p3}, Lcom/amazon/bookwizard/bookdetail/BookDetailController$3;-><init>(Lcom/amazon/bookwizard/bookdetail/BookDetailController;Z)V

    const-string p2, "BookWizardBookDetailsScreen"

    const-string p3, "WantToReadClicked"

    invoke-static {p2, p3, p1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, "isShowing"

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->isShowingWantToRead:Z

    .line 105
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "BOOK_DETAILS"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 107
    iput-boolean v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->isRestoredFromState:Z

    .line 108
    iput-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->fragment:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->fragment:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;

    const-string v1, "fragment"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->restoreState(Landroid/os/Bundle;)V

    .line 112
    iget-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->fragment:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;

    invoke-virtual {p1, p0}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->setListener(Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showDetails(Lcom/amazon/bookwizard/service/PayoffRec;)V
    .locals 6

    .line 163
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/PayoffRec;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/PayoffRec;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->showDetails(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/bookwizard/data/Category;Ljava/lang/String;Z)V

    return-void
.end method

.method public showDetails(Ljava/lang/String;Lcom/amazon/bookwizard/data/Category;Ljava/lang/String;Z)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 177
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->showDetails(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/bookwizard/data/Category;Ljava/lang/String;Z)V

    return-void
.end method

.method public showDetails(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/bookwizard/data/Category;Ljava/lang/String;Z)V
    .locals 8

    .line 193
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->showError()V

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->clearBookDetail()V

    .line 199
    invoke-direct {p0}, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->show()V

    .line 201
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v7, Lcom/amazon/bookwizard/service/GetDetailsRequest;

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getDeviceInfo()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    new-instance v5, Lcom/amazon/bookwizard/bookdetail/BookDetailController$1;

    invoke-direct {v5, p0, p4, p5, p2}, Lcom/amazon/bookwizard/bookdetail/BookDetailController$1;-><init>(Lcom/amazon/bookwizard/bookdetail/BookDetailController;Ljava/lang/String;ZLjava/lang/String;)V

    new-instance v6, Lcom/amazon/bookwizard/bookdetail/BookDetailController$2;

    invoke-direct {v6, p0}, Lcom/amazon/bookwizard/bookdetail/BookDetailController$2;-><init>(Lcom/amazon/bookwizard/bookdetail/BookDetailController;)V

    move-object v1, v7

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazon/bookwizard/service/GetDetailsRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Lcom/amazon/bookwizard/data/Category;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public showError()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->fragment:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->setErrorShown(Z)V

    .line 153
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->fragment:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->updateUI()V

    return-void
.end method

.method public showView(Lcom/amazon/bookwizard/service/FlowStep;)V
    .locals 0

    return-void
.end method
