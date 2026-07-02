.class Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseInfoListener;
.super Ljava/lang/Object;
.source "PurchaseViewManager.java"

# interfaces
.implements Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseInfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;


# direct methods
.method private constructor <init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V
    .locals 0

    .line 1360
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseInfoListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$1;)V
    .locals 0

    .line 1360
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseInfoListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    return-void
.end method


# virtual methods
.method public onPurchaseInfoChange(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 0

    .line 1363
    new-instance p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseInfoListener$1;

    invoke-direct {p1, p0, p2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseInfoListener$1;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseInfoListener;Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    invoke-static {p1}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
