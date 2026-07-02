.class public Lcom/amazon/bookwizard/payoff/PayoffController;
.super Lcom/amazon/bookwizard/BookWizardController;
.source "PayoffController.java"

# interfaces
.implements Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;


# static fields
.field private static final MAX_THREAD_SLEEP_TIME:J

.field private static final MAX_WAIT_TIME:J

.field private static final NUM_BLOCKING_BORROW_TASKS:I = 0x5

.field private static final PROGRESS_DIALOG_TAG:Ljava/lang/String; = "BOOK_BORROW_PROGRESS"


# instance fields
.field private context:Ljava/lang/String;

.field private final data:Lcom/amazon/bookwizard/data/DataProvider;

.field private final fragment:Lcom/amazon/bookwizard/payoff/PayoffFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/bookwizard/payoff/PayoffController;->MAX_THREAD_SLEEP_TIME:J

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/bookwizard/payoff/PayoffController;->MAX_WAIT_TIME:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/data/DataProvider;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/BookWizardController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;)V

    .line 70
    iput-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    .line 71
    new-instance p1, Lcom/amazon/bookwizard/payoff/PayoffFragment;

    invoke-direct {p1}, Lcom/amazon/bookwizard/payoff/PayoffFragment;-><init>()V

    iput-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->fragment:Lcom/amazon/bookwizard/payoff/PayoffFragment;

    const-string p2, "BookWizardPayoff"

    .line 72
    iput-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->context:Ljava/lang/String;

    .line 74
    invoke-virtual {p1, p0}, Lcom/amazon/bookwizard/payoff/PayoffFragment;->setListener(Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;)V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 46
    sget-wide v0, Lcom/amazon/bookwizard/payoff/PayoffController;->MAX_WAIT_TIME:J

    return-wide v0
.end method

.method static synthetic access$100()J
    .locals 2

    .line 46
    sget-wide v0, Lcom/amazon/bookwizard/payoff/PayoffController;->MAX_THREAD_SLEEP_TIME:J

    return-wide v0
.end method

.method private downloadItems()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 133
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getDownloadManager()Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    iget-object v2, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getDeviceInfo()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->downloadItems(Lcom/amazon/bookwizard/service/StepFlavor;Lcom/amazon/kindle/krx/application/IDeviceInformation;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getDownloadManager()Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/bookwizard/service/StepFlavor;->KU:Lcom/amazon/bookwizard/service/StepFlavor;

    iget-object v2, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getDeviceInfo()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->downloadItems(Lcom/amazon/bookwizard/service/StepFlavor;Lcom/amazon/kindle/krx/application/IDeviceInformation;)V

    :goto_0
    return-void
.end method

.method private getBorrowType()Lcom/amazon/bookwizard/glide/ActionType;
    .locals 2

    .line 217
    sget-object v0, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 218
    sget-object v0, Lcom/amazon/bookwizard/glide/ActionType;->PRIME:Lcom/amazon/bookwizard/glide/ActionType;

    return-object v0

    .line 219
    :cond_0
    sget-object v0, Lcom/amazon/bookwizard/service/StepFlavor;->KU:Lcom/amazon/bookwizard/service/StepFlavor;

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 220
    sget-object v0, Lcom/amazon/bookwizard/glide/ActionType;->KU:Lcom/amazon/bookwizard/glide/ActionType;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private postDownloadingDialog(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/AsyncTask;",
            ">;)V"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_downloading:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/amazon/bookwizard/ui/fragment/ProgressDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/bookwizard/ui/fragment/ProgressDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "BOOK_BORROW_PROGRESS"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 243
    new-instance v0, Lcom/amazon/bookwizard/payoff/PayoffController$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/bookwizard/payoff/PayoffController$2;-><init>(Lcom/amazon/bookwizard/payoff/PayoffController;Ljava/util/List;)V

    .line 263
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getTaskExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private show()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "kuUpsellView"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->fragment:Lcom/amazon/bookwizard/payoff/PayoffFragment;

    const/4 v1, 0x0

    sget v2, Lcom/amazon/bookwizard/R$anim;->abc_slide_out_bottom:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/bookwizard/BookWizardController;->showFragment(Landroidx/fragment/app/Fragment;II)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->fragment:Lcom/amazon/bookwizard/payoff/PayoffFragment;

    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/BookWizardController;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NETWORK_ERROR_DEFAULT"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->postNetworkFailureDialog()V

    goto :goto_1

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "LIMIT_REACHED_DEFAULT_TAG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/amazon/bookwizard/payoff/PayoffController;->postSelectionLimitExceededDialog()V

    .line 156
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->context:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/bookwizard/util/M;->show(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 1

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "payoffView"

    return-object v0
.end method

.method public onBack()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->clearPayoffs()V

    .line 179
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->context:Ljava/lang/String;

    const-string v1, "BackClicked"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->back()V

    return-void
.end method

.method public onBookDetailClicked(Lcom/amazon/bookwizard/service/PayoffRec;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->context:Ljava/lang/String;

    const-string v1, "DetailsClicked"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getBookDetailController()Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->showDetails(Lcom/amazon/bookwizard/service/PayoffRec;)V

    return-void
.end method

.method public onNext()V
    .locals 8

    .line 190
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffRecs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/bookwizard/service/PayoffRec;

    .line 192
    iget-object v5, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v5, v4}, Lcom/amazon/bookwizard/data/DataProvider;->isMarkedForDownload(Lcom/amazon/bookwizard/service/PayoffRec;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    new-instance v5, Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-direct {p0}, Lcom/amazon/bookwizard/payoff/PayoffController;->getBorrowType()Lcom/amazon/bookwizard/glide/ActionType;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;-><init>(Lcom/amazon/bookwizard/service/PayoffRec;Lcom/amazon/bookwizard/glide/ActionType;)V

    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getTaskExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Void;

    invoke-virtual {v5, v6, v7}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v5, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v4}, Lcom/amazon/bookwizard/service/PayoffRec;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/amazon/bookwizard/data/DataProvider;->hasShownBookDetail(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->context:Ljava/lang/String;

    new-instance v2, Lcom/amazon/bookwizard/payoff/PayoffController$1;

    invoke-direct {v2, p0, v0, v3}, Lcom/amazon/bookwizard/payoff/PayoffController$1;-><init>(Lcom/amazon/bookwizard/payoff/PayoffController;Ljava/util/List;I)V

    const-string v3, "DoneClicked"

    invoke-static {v1, v3, v2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 208
    invoke-direct {p0, v0}, Lcom/amazon/bookwizard/payoff/PayoffController;->postDownloadingDialog(Ljava/util/List;)V

    return-void
.end method

.method public onRequestStatusChanged(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;)V
    .locals 2

    .line 287
    invoke-virtual {p1}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;->getType()Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    move-result-object v0

    sget-object v1, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->BORROW:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;->getStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne p1, v0, :cond_1

    .line 288
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "BOOK_BORROW_PROGRESS"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/DialogFragment;

    if-eqz p1, :cond_0

    .line 290
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->next()V

    :cond_1
    return-void
.end method

.method public onRetry(Ljava/lang/String;)V
    .locals 0

    .line 230
    invoke-direct {p0}, Lcom/amazon/bookwizard/payoff/PayoffController;->downloadItems()V

    return-void
.end method

.method public postSelectionLimitExceededDialog()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getNavigationController()Lcom/amazon/bookwizard/BookWizardNavigationController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getNavigationController()Lcom/amazon/bookwizard/BookWizardNavigationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->getCurrentController()Lcom/amazon/bookwizard/BookWizardController;

    move-result-object v0

    if-eq p0, v0, :cond_0

    goto :goto_1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NETWORK_ERROR_DEFAULT"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 275
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 279
    :cond_1
    sget-object v0, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    iget-object v2, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;->newInstance(Z)Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;

    move-result-object v0

    const-string v2, "LIMIT_REACHED_DEFAULT_TAG"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public showView(Lcom/amazon/bookwizard/service/FlowStep;)V
    .locals 1

    .line 105
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    if-nez p1, :cond_0

    return-void

    .line 111
    :cond_0
    sget-object v0, Lcom/amazon/bookwizard/payoff/PayoffController$3;->$SwitchMap$com$amazon$bookwizard$service$StepFlavor:[I

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const-string p1, "BookWizardPayoff"

    .line 121
    iput-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->context:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "BookWizardKuBooksScreen"

    .line 118
    iput-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->context:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "BookWizardPrimePayoff"

    .line 113
    iput-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffController;->context:Ljava/lang/String;

    .line 124
    :goto_0
    invoke-direct {p0}, Lcom/amazon/bookwizard/payoff/PayoffController;->downloadItems()V

    .line 125
    invoke-direct {p0}, Lcom/amazon/bookwizard/payoff/PayoffController;->show()V

    return-void
.end method
