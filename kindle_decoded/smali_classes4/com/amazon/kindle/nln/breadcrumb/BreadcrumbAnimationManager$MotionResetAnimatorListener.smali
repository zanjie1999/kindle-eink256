.class Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;
.super Ljava/lang/Object;
.source "BreadcrumbAnimationManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionResetAnimatorListener"
.end annotation


# instance fields
.field private final animatingContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

.field private final info:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

.field private final isAnimatingOut:Z

.field private isReset:Z

.field private resetRunnable:Ljava/lang/Runnable;

.field private final sourceContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

.field final synthetic this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;ZLcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 530
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->isReset:Z

    .line 577
    new-instance p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener$1;-><init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;)V

    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->resetRunnable:Ljava/lang/Runnable;

    .line 538
    iput-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->animatingContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    .line 539
    iput-object p3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->sourceContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    .line 540
    iput-object p5, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->info:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    .line 541
    iput-boolean p4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->isAnimatingOut:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;ZLcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$1;)V
    .locals 0

    .line 529
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;-><init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;ZLcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;)Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->animatingContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;)Z
    .locals 0

    .line 529
    iget-boolean p0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->isAnimatingOut:Z

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;)Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->info:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;)Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->sourceContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    return-object p0
.end method

.method private reset(Z)V
    .locals 3

    .line 563
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->isReset:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 567
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->isReset:Z

    if-eqz p1, :cond_1

    .line 571
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->animatingContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->resetRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 573
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->resetRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 555
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->reset(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 550
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;->reset(Z)V

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
