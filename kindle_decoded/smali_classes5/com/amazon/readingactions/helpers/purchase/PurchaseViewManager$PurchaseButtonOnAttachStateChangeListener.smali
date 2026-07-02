.class Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;
.super Ljava/lang/Object;
.source "PurchaseViewManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseButtonOnAttachStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;


# direct methods
.method private constructor <init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V
    .locals 0

    .line 1343
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$1;)V
    .locals 0

    .line 1343
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1346
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$202(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Z)Z

    .line 1347
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$300(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1352
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$202(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Z)Z

    .line 1353
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$400(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    return-void
.end method
