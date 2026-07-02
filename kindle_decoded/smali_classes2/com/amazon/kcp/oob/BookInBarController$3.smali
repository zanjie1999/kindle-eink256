.class Lcom/amazon/kcp/oob/BookInBarController$3;
.super Ljava/lang/Object;
.source "BookInBarController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/BookInBarController;->createBibLayoutChangeListener(Landroid/widget/ImageView;)Landroid/view/View$OnLayoutChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/oob/BookInBarController;

.field final synthetic val$bibView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/BookInBarController;Landroid/widget/ImageView;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController$3;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    iput-object p2, p0, Lcom/amazon/kcp/oob/BookInBarController$3;->val$bibView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 185
    iget-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController$3;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {p1}, Lcom/amazon/kcp/oob/BookInBarController;->access$200(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController$3;->val$bibView:Landroid/widget/ImageView;

    new-instance p2, Lcom/amazon/kcp/oob/BookInBarController$3$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/oob/BookInBarController$3$1;-><init>(Lcom/amazon/kcp/oob/BookInBarController$3;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
