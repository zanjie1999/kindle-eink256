.class public final Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider$getMissingCoverAnimation$1;
.super Ljava/lang/Object;
.source "BookOpenAnimationProvider.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider;->getMissingCoverAnimation(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Landroid/view/animation/Animation;
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

    .line 50
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider$getMissingCoverAnimation$1;->$activity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider$getMissingCoverAnimation$1;->$activity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getBeginFadeInAnimation$krxsdk_release()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

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
