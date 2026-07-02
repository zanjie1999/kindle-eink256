.class Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;
.super Ljava/lang/Object;
.source "PurchaseViewManager.java"

# interfaces
.implements Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/helper/PurchaseViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseInfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;


# direct methods
.method private constructor <init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V
    .locals 0

    .line 1345
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/ea/ui/helper/PurchaseViewManager$1;)V
    .locals 0

    .line 1345
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V

    return-void
.end method


# virtual methods
.method public onPurchaseInfoChange(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 0

    .line 1348
    new-instance p1, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener$1;

    invoke-direct {p1, p0, p2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener$1;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    invoke-static {p1}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
