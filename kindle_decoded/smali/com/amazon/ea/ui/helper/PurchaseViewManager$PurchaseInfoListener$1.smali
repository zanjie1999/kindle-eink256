.class Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener$1;
.super Ljava/lang/Object;
.source "PurchaseViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;->onPurchaseInfoChange(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;

.field final synthetic val$info:Lcom/amazon/ea/purchase/model/PurchaseInfo;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 0

    .line 1348
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener$1;->this$1:Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;

    iput-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener$1;->val$info:Lcom/amazon/ea/purchase/model/PurchaseInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1352
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener$1;->this$1:Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;

    iget-object v0, v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$500(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener$1;->this$1:Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;

    iget-object v0, v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener$1;->val$info:Lcom/amazon/ea/purchase/model/PurchaseInfo;

    invoke-static {v0, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$600(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object v0

    goto :goto_0

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener$1;->this$1:Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;

    iget-object v0, v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener$1;->val$info:Lcom/amazon/ea/purchase/model/PurchaseInfo;

    invoke-static {v0, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$700(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object v0

    .line 1358
    :goto_0
    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener$1;->this$1:Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;

    iget-object v1, v1, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$800(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1359
    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener$1;->this$1:Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;

    iget-object v1, v1, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$800(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;->onUpdate(Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V

    :cond_1
    return-void
.end method
