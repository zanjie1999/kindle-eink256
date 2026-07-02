.class Lcom/amazon/xray/ui/widget/CardCarousel$DelayedAccessibilityFocusRunnable;
.super Ljava/lang/Object;
.source "CardCarousel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/widget/CardCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedAccessibilityFocusRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/CardCarousel;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/widget/CardCarousel;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel$DelayedAccessibilityFocusRunnable;->this$0:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/widget/CardCarousel;Lcom/amazon/xray/ui/widget/CardCarousel$1;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/CardCarousel$DelayedAccessibilityFocusRunnable;-><init>(Lcom/amazon/xray/ui/widget/CardCarousel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 813
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel$DelayedAccessibilityFocusRunnable;->this$0:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/CardCarousel;->access$500(Lcom/amazon/xray/ui/widget/CardCarousel;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel$DelayedAccessibilityFocusRunnable;->this$0:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/CardCarousel;->access$500(Lcom/amazon/xray/ui/widget/CardCarousel;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel$DelayedAccessibilityFocusRunnable;->this$0:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/CardCarousel;->access$600(Lcom/amazon/xray/ui/widget/CardCarousel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel$DelayedAccessibilityFocusRunnable;->this$0:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/CardCarousel;->access$500(Lcom/amazon/xray/ui/widget/CardCarousel;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel$DelayedAccessibilityFocusRunnable;->this$0:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/CardCarousel;->access$600(Lcom/amazon/xray/ui/widget/CardCarousel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method
