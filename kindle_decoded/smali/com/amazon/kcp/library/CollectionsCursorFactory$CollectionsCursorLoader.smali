.class Lcom/amazon/kcp/library/CollectionsCursorFactory$CollectionsCursorLoader;
.super Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;
.source "CollectionsCursorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/CollectionsCursorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollectionsCursorLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/AbstractLibraryCursorLoader<",
        "Ljava/util/List<",
        "Lcom/amazon/kindle/collections/dto/ICollection;",
        ">;>;"
    }
.end annotation


# instance fields
.field filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

.field sortOrder:Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;Lcom/amazon/kindle/krx/collections/CollectionFilter;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p2, p0, Lcom/amazon/kcp/library/CollectionsCursorFactory$CollectionsCursorLoader;->userId:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/amazon/kcp/library/CollectionsCursorFactory$CollectionsCursorLoader;->sortOrder:Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    .line 49
    iput-object p4, p0, Lcom/amazon/kcp/library/CollectionsCursorFactory$CollectionsCursorLoader;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    return-void
.end method


# virtual methods
.method protected bridge synthetic loadData()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/amazon/kcp/library/CollectionsCursorFactory$CollectionsCursorLoader;->loadData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected loadData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionsCursorFactory$CollectionsCursorLoader;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/CollectionsCursorFactory$CollectionsCursorLoader;->sortOrder:Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    iget-object v3, p0, Lcom/amazon/kcp/library/CollectionsCursorFactory$CollectionsCursorLoader;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollections(Ljava/lang/String;Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;Lcom/amazon/kindle/krx/collections/CollectionFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
