.class public Lcom/amazon/krf/internal/BlankColorView;
.super Landroid/view/View;
.source "BlankColorView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 15
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 v0, 0x100

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-static {v1, v2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
