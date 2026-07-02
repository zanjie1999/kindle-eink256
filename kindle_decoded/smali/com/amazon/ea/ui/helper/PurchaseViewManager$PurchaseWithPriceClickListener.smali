.class Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;
.super Lcom/amazon/ea/ui/helper/PurchaseViewManager$MetricTrackingOnClickListener;
.source "PurchaseViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/helper/PurchaseViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseWithPriceClickListener"
.end annotation


# instance fields
.field private final price:Lcom/amazon/ea/purchase/model/BookOffer;

.field final synthetic this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

.field private final useOneClickPurchase:Z


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/ea/purchase/model/BookOffer;Z)V
    .locals 1

    .line 1381
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    const-string v0, "ClickedPurchaseWithPrice"

    .line 1382
    invoke-direct {p0, p1, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$MetricTrackingOnClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Ljava/lang/String;)V

    .line 1383
    iput-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->price:Lcom/amazon/ea/purchase/model/BookOffer;

    .line 1384
    iput-boolean p3, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->useOneClickPurchase:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1389
    invoke-super {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$MetricTrackingOnClickListener;->onClick(Landroid/view/View;)V

    .line 1391
    :try_start_0
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$900(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/ea/metrics/BookActions;->CLICK_BUY:Lcom/amazon/ea/metrics/BookActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 1392
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1000(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1100(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$900(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazon/ea/metrics/PurchaseAttributor;->trackPotentialPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    .line 1394
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1200(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BuyNowWithPrice"

    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    .line 1395
    invoke-static {v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1300(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/util/Map;

    move-result-object v2

    .line 1394
    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1397
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1400(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1200(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Store"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1100(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1500(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->price:Lcom/amazon/ea/purchase/model/BookOffer;

    .line 1401
    invoke-interface {v2}, Lcom/amazon/ea/purchase/model/BookOffer;->getPriceAmount()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->price:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-interface {v3}, Lcom/amazon/ea/purchase/model/BookOffer;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    .line 1400
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadInitiatePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1402
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->useOneClickPurchase:Z

    if-eqz p1, :cond_2

    .line 1403
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1600(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Lcom/amazon/ea/util/EABookShell;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/util/EABookShell;->setContentType(Lcom/amazon/kindle/krx/content/ContentType;)V

    .line 1404
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$500(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/amazon/ea/OneTapBookOpenRunnable;

    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    .line 1405
    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1600(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Lcom/amazon/ea/util/EABookShell;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1700(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/amazon/ea/OneTapBookOpenRunnable;-><init>(Lcom/amazon/kindle/krx/content/IBook;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1406
    :goto_0
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1100(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->price:Lcom/amazon/ea/purchase/model/BookOffer;

    iget-object v3, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1500(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->buy(Ljava/lang/String;Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1408
    :cond_2
    new-instance p1, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener$1;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;)V

    .line 1433
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1100(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->price:Lcom/amazon/ea/purchase/model/BookOffer;

    iget-object v3, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1500(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->buy(Ljava/lang/String;Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1436
    invoke-static {}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1900()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$900(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_PURCHASE_WITH_PRICE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    :goto_1
    return-void
.end method
