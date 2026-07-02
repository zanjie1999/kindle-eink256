.class public Lcom/amazon/kcp/animation/AnimatorUtils;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# direct methods
.method public static varargs createAnimatorSetSequentially([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 1

    .line 40
    invoke-static {p0}, Lcom/amazon/kcp/animation/AnimatorUtils;->createNonNullListOfAnimator([Landroid/animation/Animator;)Ljava/util/List;

    move-result-object p0

    .line 43
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 44
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 45
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static varargs createAnimatorSetTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 1

    .line 62
    invoke-static {p0}, Lcom/amazon/kcp/animation/AnimatorUtils;->createNonNullListOfAnimator([Landroid/animation/Animator;)Ljava/util/List;

    move-result-object p0

    .line 65
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 67
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static varargs createNonNullListOfAnimator([Landroid/animation/Animator;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/animation/Animator;",
            ")",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 106
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static createVisibilityChangeListener(Landroid/view/View;ZZ)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 84
    new-instance v0, Lcom/amazon/kcp/animation/AnimatorUtils$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/animation/AnimatorUtils$1;-><init>(Landroid/view/View;ZZ)V

    return-object v0
.end method
