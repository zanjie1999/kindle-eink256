.class public interface abstract Lcom/amazon/kindle/krx/reader/ITableOfContentsExProvider;
.super Ljava/lang/Object;
.source "ITableOfContentsExProvider.java"


# virtual methods
.method public abstract getEntries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTOCHeader()Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsHeader;
.end method

.method public abstract isTOCAvailable(Lcom/amazon/kindle/krx/content/IBook;)Z
.end method
