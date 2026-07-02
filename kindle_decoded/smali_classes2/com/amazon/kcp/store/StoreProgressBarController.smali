.class final Lcom/amazon/kcp/store/StoreProgressBarController;
.super Ljava/lang/Object;
.source "StoreProgressBarController.java"


# static fields
.field private static final VISIBILITY_ANIMATION_DURATION:J = 0xc8L


# instance fields
.field private final progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreProgressBarController;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/store/StoreProgressBarController;)Landroid/widget/ProgressBar;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/amazon/kcp/store/StoreProgressBarController;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method


# virtual methods
.method onProgressChanged(I)V
    .locals 6

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreProgressBarController;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreProgressBarController;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x64

    if-eqz v0, :cond_0

    if-eq p1, v5, :cond_0

    .line 35
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreProgressBarController;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreProgressBarController;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreProgressBarController;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setAlpha(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/store/StoreProgressBarController$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/StoreProgressBarController$1;-><init>(Lcom/amazon/kcp/store/StoreProgressBarController;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreProgressBarController;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-ne p1, v5, :cond_1

    .line 46
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreProgressBarController;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreProgressBarController;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 51
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/store/StoreProgressBarController$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/StoreProgressBarController$2;-><init>(Lcom/amazon/kcp/store/StoreProgressBarController;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void
.end method
