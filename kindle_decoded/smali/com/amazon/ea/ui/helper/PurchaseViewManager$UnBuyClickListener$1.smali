.class Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener$1;
.super Ljava/lang/Object;
.source "PurchaseViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener;)V
    .locals 0

    .line 1814
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener$1;->this$1:Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1818
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener$1;->this$1:Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener;

    iget-object v0, v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$2500(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1820
    invoke-static {}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener$1;->this$1:Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener;

    iget-object v0, v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$900(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_UNBUY:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    :goto_0
    return-void
.end method
