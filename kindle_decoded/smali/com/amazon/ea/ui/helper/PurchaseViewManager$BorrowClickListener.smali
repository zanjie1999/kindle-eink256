.class Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;
.super Lcom/amazon/ea/ui/helper/PurchaseViewManager$MetricTrackingOnClickListener;
.source "PurchaseViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/helper/PurchaseViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BorrowClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

.field private final useOneClickBorrow:Z


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Z)V
    .locals 1

    .line 1476
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    const-string v0, "ClickedBorrow"

    .line 1477
    invoke-direct {p0, p1, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$MetricTrackingOnClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Ljava/lang/String;)V

    .line 1478
    iput-boolean p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->useOneClickBorrow:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1483
    invoke-super {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$MetricTrackingOnClickListener;->onClick(Landroid/view/View;)V

    .line 1486
    :try_start_0
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$500(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1487
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$2000(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_processing:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpenShown"

    invoke-static {p1, v1, v0, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$2100(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 1492
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$900(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/ea/metrics/BookActions;->CLICK_READ_FOR_FREE:Lcom/amazon/ea/metrics/BookActions;

    invoke-static {p1, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 1493
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1000(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1100(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$900(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/amazon/ea/metrics/PurchaseAttributor;->trackPotentialPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    .line 1495
    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1200(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Borrow"

    iget-object v3, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1300(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1497
    iget-boolean v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->useOneClickBorrow:Z

    if-eqz v1, :cond_2

    .line 1498
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1600(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Lcom/amazon/ea/util/EABookShell;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {p1, v1}, Lcom/amazon/ea/util/EABookShell;->setContentType(Lcom/amazon/kindle/krx/content/ContentType;)V

    .line 1499
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$500(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/amazon/ea/OneTapBookOpenRunnable;

    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    .line 1500
    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1600(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Lcom/amazon/ea/util/EABookShell;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1700(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amazon/ea/OneTapBookOpenRunnable;-><init>(Lcom/amazon/kindle/krx/content/IBook;Landroid/view/View;)V

    .line 1501
    :cond_1
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1100(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$2200(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/ea/purchase/PurchaseManager;->borrow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1503
    :cond_2
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1200(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Store"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1100(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$2200(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1507
    invoke-static {}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1900()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$900(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_BORROW:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    :goto_0
    return-void
.end method
