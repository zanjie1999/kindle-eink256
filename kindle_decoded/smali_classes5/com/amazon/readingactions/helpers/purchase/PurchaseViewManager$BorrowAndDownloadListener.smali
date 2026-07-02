.class public Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;
.super Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$MetricTrackingOnClickListener;
.source "PurchaseViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BorrowAndDownloadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V
    .locals 1

    .line 1592
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    const-string v0, "OneTapClickedAddToLibrary"

    .line 1593
    invoke-direct {p0, p1, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$MetricTrackingOnClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1598
    invoke-super {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$MetricTrackingOnClickListener;->onClick(Landroid/view/View;)V

    .line 1601
    :try_start_0
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$2000(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_processing:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AddToLibShown"

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$2300(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 1605
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$900(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/ea/metrics/BookActions;->CLICK_ADD_TO_LIBRARY:Lcom/amazon/ea/metrics/BookActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 1606
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1000(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1100(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$900(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazon/ea/metrics/PurchaseAttributor;->trackPotentialPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    .line 1608
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1200(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Borrow"

    iget-object v2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1300(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1610
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1600(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Lcom/amazon/ea/util/EABookShell;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/util/EABookShell;->setContentType(Lcom/amazon/kindle/krx/content/ContentType;)V

    .line 1611
    new-instance p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener$1;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;)V

    .line 1624
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1100(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$2200(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->borrow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1626
    invoke-static {}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1900()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$900(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_BORROW_AND_DOWNLOAD:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    :goto_0
    return-void
.end method
