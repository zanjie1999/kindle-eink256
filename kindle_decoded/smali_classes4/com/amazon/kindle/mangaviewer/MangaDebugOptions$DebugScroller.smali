.class Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$DebugScroller;
.super Landroid/widget/Scroller;
.source "MangaDebugOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DebugScroller"
.end annotation


# instance fields
.field private mDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 36
    iput p3, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$DebugScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method public setScrollDuration(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$DebugScroller;->mDuration:I

    return-void
.end method

.method public startScroll(IIII)V
    .locals 6

    .line 53
    iget v5, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$DebugScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    .line 47
    iget v5, p0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$DebugScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
