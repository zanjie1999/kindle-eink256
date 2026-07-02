.class public abstract Lcom/audible/hushpuppy/common/readalong/ReadAlongProgressivePolicy;
.super Lcom/audible/hushpuppy/common/readalong/ReadAlongPolicy;
.source "ReadAlongProgressivePolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/readalong/ReadAlongPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getBookElementInfo(I)Lcom/audible/hushpuppy/common/readalong/BookElementInfo;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/readalong/ReadAlongPolicy;->getCurrentPage()Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->getElement(I)Lcom/audible/hushpuppy/common/readalong/BookElementInfo;

    move-result-object p1

    return-object p1
.end method
