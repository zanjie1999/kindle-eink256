.class Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$1;
.super Ljava/lang/Object;
.source "BreadcrumbAnimationManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->animateBreadcrumbFrame(Landroid/view/View;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

.field final synthetic val$direction:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;Landroid/view/View;I)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$1;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    iput-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$1;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$1;->val$direction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 127
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$1;->val$v:Landroid/view/View;

    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$1;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-static {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->access$000(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;)[Z

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$1;->val$direction:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$1;->val$v:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
