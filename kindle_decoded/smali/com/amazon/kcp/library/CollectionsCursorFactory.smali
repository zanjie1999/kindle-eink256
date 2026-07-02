.class public Lcom/amazon/kcp/library/CollectionsCursorFactory;
.super Ljava/lang/Object;
.source "CollectionsCursorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/CollectionsCursorFactory$CollectionsCursorLoader;
    }
.end annotation


# direct methods
.method public static createLoaderForUserAndSort(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;Lcom/amazon/kindle/krx/collections/CollectionFilter;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;",
            "Lcom/amazon/kindle/krx/collections/CollectionFilter;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/amazon/kcp/library/CollectionsCursorFactory$CollectionsCursorLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kcp/library/CollectionsCursorFactory$CollectionsCursorLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;Lcom/amazon/kindle/krx/collections/CollectionFilter;)V

    return-object v0
.end method
