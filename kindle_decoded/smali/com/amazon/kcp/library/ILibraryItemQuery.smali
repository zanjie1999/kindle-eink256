.class public interface abstract Lcom/amazon/kcp/library/ILibraryItemQuery;
.super Ljava/lang/Object;
.source "ILibraryItemQuery.java"


# virtual methods
.method public abstract canCombineWithLegacyQuery()Z
.end method

.method public abstract execute(Lcom/amazon/kindle/krx/library/LibraryGroupType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation
.end method
