.class Lcom/amazon/sitb/android/UpsellBarPresenter$1;
.super Ljava/lang/Object;
.source "UpsellBarPresenter.java"

# interfaces
.implements Lcom/amazon/sitb/android/model/UpsellModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/UpsellBarPresenter;-><init>(Lcom/amazon/sitb/android/model/UpsellModel;Lcom/amazon/sitb/android/view/ViewManager;Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/sitb/android/IStoreActions;Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;Lcom/amazon/sitb/android/ConnectivityHandler;Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;Lcom/amazon/sitb/android/reftag/ReftagBundle;Lcom/amazon/sitb/android/transition/TransitionTaskFactory;Lcom/amazon/sitb/android/services/ActivityService;Lcom/amazon/kindle/krx/content/ContentType;Lcom/amazon/sitb/android/services/OneClickSupportService;ZLcom/amazon/sitb/android/services/DialogService;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/UpsellBarPresenter;

.field final synthetic val$activityService:Lcom/amazon/sitb/android/services/ActivityService;

.field final synthetic val$autoTransitionOnDownload:Z

.field final synthetic val$contentType:Lcom/amazon/kindle/krx/content/ContentType;

.field final synthetic val$viewManager:Lcom/amazon/sitb/android/view/ViewManager;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/UpsellBarPresenter;ZLcom/amazon/sitb/android/services/ActivityService;Lcom/amazon/kindle/krx/content/ContentType;Lcom/amazon/sitb/android/view/ViewManager;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/sitb/android/UpsellBarPresenter$1;->this$0:Lcom/amazon/sitb/android/UpsellBarPresenter;

    iput-boolean p2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter$1;->val$autoTransitionOnDownload:Z

    iput-object p3, p0, Lcom/amazon/sitb/android/UpsellBarPresenter$1;->val$activityService:Lcom/amazon/sitb/android/services/ActivityService;

    iput-object p4, p0, Lcom/amazon/sitb/android/UpsellBarPresenter$1;->val$contentType:Lcom/amazon/kindle/krx/content/ContentType;

    iput-object p5, p0, Lcom/amazon/sitb/android/UpsellBarPresenter$1;->val$viewManager:Lcom/amazon/sitb/android/view/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progressChanged(Lcom/amazon/sitb/android/model/UpsellModel;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter$1;->val$viewManager:Lcom/amazon/sitb/android/view/ViewManager;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/view/ViewManager;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellState()Lcom/amazon/sitb/android/BookState;

    move-result-object v1

    sget-object v2, Lcom/amazon/sitb/android/BookState;->DOWNLOADING:Lcom/amazon/sitb/android/BookState;

    if-ne v1, v2, :cond_0

    .line 123
    check-cast v0, Lcom/amazon/sitb/android/view/ShowsModel;

    invoke-interface {v0, p1}, Lcom/amazon/sitb/android/view/ShowsModel;->updateViewModel(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public stateChanged(Lcom/amazon/sitb/android/model/UpsellModel;)V
    .locals 3

    .line 98
    iget-boolean v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter$1;->val$autoTransitionOnDownload:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellState()Lcom/amazon/sitb/android/BookState;

    move-result-object v0

    sget-object v1, Lcom/amazon/sitb/android/BookState;->DOWNLOADED:Lcom/amazon/sitb/android/BookState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->getPurchaseRecord()Lcom/amazon/sitb/android/PurchaseRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter$1;->val$activityService:Lcom/amazon/sitb/android/services/ActivityService;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/services/ActivityService;->isReaderInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter$1;->val$contentType:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/amazon/sitb/android/UpsellBarPresenter;->access$000()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    const-string v1, "Auto transitioning to full book"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/amazon/sitb/android/BookState;->TRANSITIONING:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    .line 106
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter$1;->this$0:Lcom/amazon/sitb/android/UpsellBarPresenter;

    invoke-static {v0}, Lcom/amazon/sitb/android/UpsellBarPresenter;->access$100(Lcom/amazon/sitb/android/UpsellBarPresenter;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter$1;->val$viewManager:Lcom/amazon/sitb/android/view/ViewManager;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/view/ViewManager;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellState()Lcom/amazon/sitb/android/BookState;

    move-result-object v1

    sget-object v2, Lcom/amazon/sitb/android/BookState;->CLOSED:Lcom/amazon/sitb/android/BookState;

    if-eq v1, v2, :cond_1

    .line 113
    check-cast v0, Lcom/amazon/sitb/android/view/ShowsModel;

    invoke-interface {v0, p1}, Lcom/amazon/sitb/android/view/ShowsModel;->updateViewModel(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
