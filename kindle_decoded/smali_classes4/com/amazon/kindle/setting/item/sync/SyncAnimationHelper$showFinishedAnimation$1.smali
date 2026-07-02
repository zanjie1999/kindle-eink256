.class final Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$showFinishedAnimation$1;
.super Ljava/lang/Object;
.source "SyncAnimationHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->showFinishedAnimation(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $syncMenuItemBackgroundAnimation:Landroid/animation/ObjectAnimator;

.field final synthetic $syncMenuTextAnimation:Landroid/animation/ObjectAnimator;

.field final synthetic $syncStatusMessageAnimation:Landroid/animation/ObjectAnimator;

.field final synthetic $transitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field final synthetic this$0:Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/TransitionDrawable;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$showFinishedAnimation$1;->this$0:Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;

    iput-object p2, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$showFinishedAnimation$1;->$syncMenuItemBackgroundAnimation:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$showFinishedAnimation$1;->$transitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    iput-object p4, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$showFinishedAnimation$1;->$syncMenuTextAnimation:Landroid/animation/ObjectAnimator;

    iput-object p5, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$showFinishedAnimation$1;->$syncStatusMessageAnimation:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$showFinishedAnimation$1;->$syncMenuItemBackgroundAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$showFinishedAnimation$1;->$transitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$showFinishedAnimation$1;->$syncMenuTextAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$showFinishedAnimation$1;->$syncStatusMessageAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$showFinishedAnimation$1;->this$0:Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;

    invoke-static {v0}, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->access$getSyncItemView$p(Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;)Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncMenuItem()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 149
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$showFinishedAnimation$1;->this$0:Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->access$setSyncFinishAnimationInProgress$p(Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;Z)V

    return-void
.end method
