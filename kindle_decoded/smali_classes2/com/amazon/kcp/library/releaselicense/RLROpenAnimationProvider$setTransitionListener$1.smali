.class public final Lcom/amazon/kcp/library/releaselicense/RLROpenAnimationProvider$setTransitionListener$1;
.super Ljava/lang/Object;
.source "RLROpenAnimationProvider.kt"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/releaselicense/RLROpenAnimationProvider;->setTransitionListener(Landroid/transition/Transition;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $sharedElementTransition:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/transition/Transition;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/RLROpenAnimationProvider$setTransitionListener$1;->$sharedElementTransition:Landroid/transition/Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 17
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/RLROpenAnimationProvider$setTransitionListener$1;->$sharedElementTransition:Landroid/transition/Transition;

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method
