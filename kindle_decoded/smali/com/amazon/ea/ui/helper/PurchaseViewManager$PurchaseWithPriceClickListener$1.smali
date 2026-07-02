.class Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener$1;
.super Ljava/lang/Object;
.source "PurchaseViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;)V
    .locals 0

    .line 1408
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener$1;->this$1:Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1412
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener$1;->this$1:Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;

    iget-object v0, v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1800(Lcom/amazon/ea/ui/helper/PurchaseViewManager;I)V

    .line 1413
    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener$1$1;

    const-wide/16 v4, 0xbb8

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener$1$1;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener$1;JJ)V

    .line 1425
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1427
    invoke-static {}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener$1;->this$1:Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;

    iget-object v0, v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$900(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_PURCHASE_WITH_PRICE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    :goto_0
    return-void
.end method
