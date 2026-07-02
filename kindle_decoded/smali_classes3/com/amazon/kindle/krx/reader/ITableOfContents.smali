.class public interface abstract Lcom/amazon/kindle/krx/reader/ITableOfContents;
.super Ljava/lang/Object;
.source "ITableOfContents.java"


# virtual methods
.method public abstract getChild(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getChildren(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)[Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getLastChild(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getNextEntry(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getNodeChildCount(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)I
.end method

.method public abstract getParent(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getTOCFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
.end method

.method public abstract getTopLevelTOCItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;"
        }
    .end annotation
.end method
