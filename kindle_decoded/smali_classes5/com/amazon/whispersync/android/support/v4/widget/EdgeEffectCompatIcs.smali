.class Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompatIcs;
.super Ljava/lang/Object;
.source "EdgeEffectCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 0

    .line 62
    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p0

    return p0
.end method

.method public static finish(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void
.end method

.method public static isFinished(Ljava/lang/Object;)Z
    .locals 0

    .line 38
    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    return p0
.end method

.method public static newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .line 30
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static onAbsorb(Ljava/lang/Object;I)Z
    .locals 0

    .line 57
    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static onPull(Ljava/lang/Object;F)Z
    .locals 0

    .line 46
    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public static onRelease(Ljava/lang/Object;)Z
    .locals 0

    .line 51
    check-cast p0, Landroid/widget/EdgeEffect;

    .line 52
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 53
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    return p0
.end method

.method public static setSize(Ljava/lang/Object;II)V
    .locals 0

    .line 34
    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method
