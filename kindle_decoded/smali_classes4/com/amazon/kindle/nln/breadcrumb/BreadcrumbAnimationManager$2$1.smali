.class Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2$1;
.super Ljava/lang/Object;
.source "BreadcrumbAnimationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;

    iget-object v0, v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->val$animatingContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;

    iget-object v0, v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-static {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->access$200(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;)Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$IBreadcrumbInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$IBreadcrumbInfoProvider;->getLatestBreadcrumbInfo()Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;

    iget-object v1, v1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->val$info:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    invoke-static {v0, v1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->areEqual(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;

    iget-object v1, v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    iget-object v2, v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->val$info:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    iget-boolean v2, v2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->isMrpr:Z

    iget-object v0, v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->val$destContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->access$300(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;ZLcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;

    iget-object v0, v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->val$sourceContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2$1;->this$1:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;

    iget-object v0, v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;->val$destContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
