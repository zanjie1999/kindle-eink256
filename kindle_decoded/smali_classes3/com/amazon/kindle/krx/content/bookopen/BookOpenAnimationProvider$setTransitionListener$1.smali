.class public final Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider$setTransitionListener$1;
.super Ljava/lang/Object;
.source "BookOpenAnimationProvider.kt"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider;->setTransitionListener(Landroid/transition/Transition;Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider$setTransitionListener$1;->$activity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

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

    .line 21
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider$setTransitionListener$1;->$activity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getBeginFadeInAnimation$krxsdk_release()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

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
