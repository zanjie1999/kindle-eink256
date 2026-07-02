.class Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EdgeEffectIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 0

    .line 120
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompatIcs;->draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method public finish(Ljava/lang/Object;)V
    .locals 0

    .line 104
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompatIcs;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .locals 0

    .line 100
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompatIcs;->isFinished(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompatIcs;->newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onAbsorb(Ljava/lang/Object;I)Z
    .locals 0

    .line 116
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompatIcs;->onAbsorb(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public onPull(Ljava/lang/Object;F)Z
    .locals 0

    .line 108
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompatIcs;->onPull(Ljava/lang/Object;F)Z

    move-result p1

    return p1
.end method

.method public onRelease(Ljava/lang/Object;)Z
    .locals 0

    .line 112
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompatIcs;->onRelease(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setSize(Ljava/lang/Object;II)V
    .locals 0

    .line 96
    invoke-static {p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/widget/EdgeEffectCompatIcs;->setSize(Ljava/lang/Object;II)V

    return-void
.end method
