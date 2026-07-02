.class final Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$WhiteHighlightColorMode;
.super Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$HighlightColorModeBase;
.source "HighlightColorModeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WhiteHighlightColorMode"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->hushpuppy_annotation_white:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$HighlightColorModeBase;-><init>(I)V

    return-void
.end method
