.class public final Lcom/amazon/kcp/reader/ui/CSBreadcrumbController$getBreadCrumbAnimator$$inlined$let$lambda$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CSBreadcrumbController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->getBreadCrumbAnimator(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

.field final synthetic $visible$inlined:Z

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;ZJJ)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController$getBreadCrumbAnimator$$inlined$let$lambda$1;->$it:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController$getBreadCrumbAnimator$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    iput-boolean p3, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController$getBreadCrumbAnimator$$inlined$let$lambda$1;->$visible$inlined:Z

    .line 210
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController$getBreadCrumbAnimator$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->access$getRootView$p(Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;)Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    move-result-object p1

    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController$getBreadCrumbAnimator$$inlined$let$lambda$1;->$it:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController$getBreadCrumbAnimator$$inlined$let$lambda$1;->$visible$inlined:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->areOverlaysVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController$getBreadCrumbAnimator$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    invoke-static {p1, v2}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->access$setBreadcrumbCurrentlyAnimating$p(Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;Z)V

    .line 220
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController$getBreadCrumbAnimator$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->access$getTAG$p(Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "modifyVisibilityOfBreadCrumbView#onAnimationEnd: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController$getBreadCrumbAnimator$$inlined$let$lambda$1;->$visible$inlined:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController$getBreadCrumbAnimator$$inlined$let$lambda$1;->$it:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController$getBreadCrumbAnimator$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->access$getTAG$p(Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "modifyVisibilityOfBreadCrumbView#onAnimationStart: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController$getBreadCrumbAnimator$$inlined$let$lambda$1;->$visible$inlined:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
