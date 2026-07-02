.class public final Lcom/audible/hushpuppy/common/readalong/KaraokeReadAlongPolicy;
.super Lcom/audible/hushpuppy/common/readalong/ReadAlongProgressivePolicy;
.source "KaraokeReadAlongPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/readalong/ReadAlongProgressivePolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndAnnotation(I)I
    .locals 1

    .line 24
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/readalong/ReadAlongProgressivePolicy;->getBookElementInfo(I)Lcom/audible/hushpuppy/common/readalong/BookElementInfo;

    move-result-object p1

    .line 25
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/readalong/ReadAlongPolicy;->getCurrentPage()Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/readalong/BookElementInfo;->getEndPos()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getStartAnnotation(I)I
    .locals 1

    .line 14
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/readalong/ReadAlongProgressivePolicy;->getBookElementInfo(I)Lcom/audible/hushpuppy/common/readalong/BookElementInfo;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/readalong/ReadAlongPolicy;->getCurrentPage()Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/readalong/ReadAlongPolicy;->getCurrentPage()Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/readalong/BookElementInfo;->getStartPos()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->getLineStartPosition(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
