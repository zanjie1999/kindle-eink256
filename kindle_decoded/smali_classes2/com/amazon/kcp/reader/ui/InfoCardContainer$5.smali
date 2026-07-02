.class Lcom/amazon/kcp/reader/ui/InfoCardContainer$5;
.super Ljava/lang/Object;
.source "InfoCardContainer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/InfoCardContainer;->animateFullyShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$5;->this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 641
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$5;->this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    const/4 v0, 0x0

    .line 643
    iput-boolean v0, p1, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isPartiallyHidden:Z

    .line 645
    iget-object v1, p1, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->delegate:Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardContainerDelegate;

    if-eqz v1, :cond_0

    .line 646
    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->access$200(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardsFullyShownEvent;

    invoke-direct {v2, p1}, Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardsFullyShownEvent;-><init>(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 649
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$5;->this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$bool;->request_info_card_accessibility_focus_after_shown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
