.class public final Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$getOverlayAnimatorListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ReaderFastNavigationView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getOverlayAnimatorListener()Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$getOverlayAnimatorListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 333
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$getOverlayAnimatorListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getTAG$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Ljava/lang/String;

    .line 335
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$getOverlayAnimatorListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$updateVisibility(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 314
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$getOverlayAnimatorListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getTAG$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Ljava/lang/String;

    .line 316
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$getOverlayAnimatorListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$cancelHideThumbCallbacks(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V

    .line 317
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$getOverlayAnimatorListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$getOverlayAnimatorListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getVerticalSeekBarController$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->setSeekBarToNormalState()V

    .line 321
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$getOverlayAnimatorListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->areOverlaysVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 324
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$getOverlayAnimatorListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getShouldMakeThumbVisible$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 325
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$getOverlayAnimatorListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getBreadcrumbController$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->onOverlaysWillBecomingVisible()V

    .line 327
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$getOverlayAnimatorListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$setThumbVisible$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;Z)V

    .line 328
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$getOverlayAnimatorListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$setShouldMakeThumbVisible$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;Z)V

    :cond_2
    return-void
.end method
