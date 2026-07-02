.class Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;
.super Ljava/lang/Object;
.source "PurchaseViewManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/helper/PurchaseViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseButtonOnAttachStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;


# direct methods
.method private constructor <init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V
    .locals 0

    .line 1328
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/ea/ui/helper/PurchaseViewManager$1;)V
    .locals 0

    .line 1328
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1331
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$202(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Z)Z

    .line 1332
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$300(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1337
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$202(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Z)Z

    .line 1338
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$400(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V

    return-void
.end method
