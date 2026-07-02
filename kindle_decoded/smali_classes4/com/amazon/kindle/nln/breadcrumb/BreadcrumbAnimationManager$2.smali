.class Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;
.super Ljava/lang/Object;
.source "BreadcrumbAnimationManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->slideBreadcrumbAcross(Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isReset:Z

.field private resetRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

.field final synthetic val$animatingContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

.field final synthetic val$destContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

.field final synthetic val$info:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

.field final synthetic val$sourceContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    iput-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->val$animatingContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    iput-object p3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->val$info:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    iput-object p4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->val$destContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    iput-object p5, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->val$sourceContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 451
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->isReset:Z

    .line 485
    new-instance p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2$1;-><init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;)V

    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->resetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private reset(Z)V
    .locals 3

    .line 472
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->isReset:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 476
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->isReset:Z

    if-eqz p1, :cond_1

    .line 479
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->val$animatingContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->resetRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 481
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->resetRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 464
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->reset(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 459
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->reset(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
