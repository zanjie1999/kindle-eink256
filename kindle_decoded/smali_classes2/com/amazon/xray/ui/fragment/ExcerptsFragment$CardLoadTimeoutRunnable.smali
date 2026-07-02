.class Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;
.super Ljava/lang/Object;
.source "ExcerptsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/ExcerptsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CardLoadTimeoutRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;Lcom/amazon/xray/ui/fragment/ExcerptsFragment$1;)V
    .locals 0

    .line 707
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;-><init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 710
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    iget-object v1, v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    if-eqz v1, :cond_0

    .line 711
    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-static {v0}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$1000(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/xray/ui/widget/CardCarousel;->setFocusedCardIndex(I)V

    .line 712
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xaf

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 713
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->contextFooter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 714
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$1002(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;I)I

    :cond_0
    return-void
.end method
