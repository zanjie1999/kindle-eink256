.class public Lcom/amazon/kindle/speedreading/toc/ChapterItem;
.super Ljava/lang/Object;
.source "ChapterItem.java"


# instance fields
.field private endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private tocEntry:Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->tocEntry:Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    .line 15
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 16
    iput-object p3, p0, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method


# virtual methods
.method public containsPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getChapterEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getChapterStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getTocEntry()Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->tocEntry:Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    return-object v0
.end method
