.class Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;
.super Lcom/amazon/ea/ui/helper/PurchaseViewManager$MetricTrackingOnClickListener;
.source "PurchaseViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/helper/PurchaseViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseWithoutPriceClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V
    .locals 1

    .line 1447
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    const-string v0, "ClickedPurchaseWithoutPrice"

    .line 1448
    invoke-direct {p0, p1, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$MetricTrackingOnClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1453
    invoke-super {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$MetricTrackingOnClickListener;->onClick(Landroid/view/View;)V

    .line 1455
    :try_start_0
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$900(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/ea/metrics/BookActions;->CLICK_BUY:Lcom/amazon/ea/metrics/BookActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 1456
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1000(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1100(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$900(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazon/ea/metrics/PurchaseAttributor;->trackPotentialPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    .line 1458
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1200(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BuyNow"

    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1300(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1459
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1200(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Store"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1100(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1500(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadInitiatePurchase(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1462
    invoke-static {}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1900()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$900(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_PURCHASE_WITHOUT_PRICE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    :goto_0
    return-void
.end method
