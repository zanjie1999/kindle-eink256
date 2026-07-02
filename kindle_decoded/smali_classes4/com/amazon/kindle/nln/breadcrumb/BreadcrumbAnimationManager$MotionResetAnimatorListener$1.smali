.class Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener$1;
.super Ljava/lang/Object;
.source "BreadcrumbAnimationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;

    invoke-static {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->access$400(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;)Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;

    invoke-static {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->access$500(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;

    iget-object v0, v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-static {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->access$200(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;)Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$IBreadcrumbInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$IBreadcrumbInfoProvider;->getLatestBreadcrumbInfo()Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;

    invoke-static {v1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->access$600(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;)Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->areEqual(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;

    iget-object v1, v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-static {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->access$600(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;)Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->isMrpr:Z

    iget-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;

    invoke-static {v2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->access$700(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;)Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->access$300(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;ZLcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;

    invoke-static {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->access$400(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;)Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->getLabelContainer()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 587
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;

    invoke-static {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->access$700(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;)Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
