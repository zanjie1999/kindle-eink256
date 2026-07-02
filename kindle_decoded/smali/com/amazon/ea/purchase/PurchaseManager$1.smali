.class Lcom/amazon/ea/purchase/PurchaseManager$1;
.super Ljava/lang/Object;
.source "PurchaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/purchase/PurchaseManager;->postNotifyListeners(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/purchase/PurchaseManager;

.field final synthetic val$asin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/amazon/ea/purchase/PurchaseManager$1;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    iput-object p2, p0, Lcom/amazon/ea/purchase/PurchaseManager$1;->val$asin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$1;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$1;->val$asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$100(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)V

    return-void
.end method
