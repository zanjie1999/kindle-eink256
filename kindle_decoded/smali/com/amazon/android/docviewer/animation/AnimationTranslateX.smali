.class public final Lcom/amazon/android/docviewer/animation/AnimationTranslateX;
.super Ljava/lang/Object;
.source "AnimationTranslateX.java"


# instance fields
.field private animatedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJLandroid/view/animation/Interpolator;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/android/docviewer/animation/AnimationTranslateX;->animatedView:Landroid/view/View;

    .line 16
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 17
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    if-eqz p5, :cond_0

    .line 20
    invoke-virtual {v0, p5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_0
    const/4 p2, 0x1

    .line 23
    invoke-virtual {v0, p2}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 24
    invoke-virtual {v0, p2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/amazon/android/docviewer/animation/AnimationTranslateX;->animatedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public start()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/android/docviewer/animation/AnimationTranslateX;->animatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/amazon/android/docviewer/animation/AnimationTranslateX;->animatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
