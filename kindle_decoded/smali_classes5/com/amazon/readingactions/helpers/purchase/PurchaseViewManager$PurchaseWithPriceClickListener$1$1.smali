.class Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener$1$1;
.super Landroid/os/CountDownTimer;
.source "PurchaseViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener$1;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener$1;JJ)V
    .locals 0

    .line 1429
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener$1$1;->this$2:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener$1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1438
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener$1$1;->this$2:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener$1;

    iget-object v0, v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener$1;->this$1:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener;

    iget-object v0, v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1800(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;I)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
