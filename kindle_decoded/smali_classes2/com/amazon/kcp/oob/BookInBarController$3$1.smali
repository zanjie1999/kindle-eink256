.class Lcom/amazon/kcp/oob/BookInBarController$3$1;
.super Ljava/lang/Object;
.source "BookInBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/BookInBarController$3;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/oob/BookInBarController$3;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/BookInBarController$3;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController$3$1;->this$1:Lcom/amazon/kcp/oob/BookInBarController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController$3$1;->this$1:Lcom/amazon/kcp/oob/BookInBarController$3;

    iget-object v0, v0, Lcom/amazon/kcp/oob/BookInBarController$3;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/BookInBarController;->access$200(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController$3$1;->this$1:Lcom/amazon/kcp/oob/BookInBarController$3;

    iget-object v0, v0, Lcom/amazon/kcp/oob/BookInBarController$3;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/BookInBarController;->access$200(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cancelAnimationIfAny()V

    .line 191
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController$3$1;->this$1:Lcom/amazon/kcp/oob/BookInBarController$3;

    iget-object v0, v0, Lcom/amazon/kcp/oob/BookInBarController$3;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/BookInBarController;->access$200(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/oob/BookInBarController$3$1;->this$1:Lcom/amazon/kcp/oob/BookInBarController$3;

    iget-object v1, v1, Lcom/amazon/kcp/oob/BookInBarController$3;->val$bibView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->startBookCloseAnimation(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
