.class public interface abstract Lcom/amazon/kcp/library/IAndroidLibraryController;
.super Ljava/lang/Object;
.source "IAndroidLibraryController.java"

# interfaces
.implements Lcom/amazon/kcp/library/ILibraryController;


# virtual methods
.method public abstract search(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract search(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract searchByBookTypes(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/models/BookType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation
.end method
