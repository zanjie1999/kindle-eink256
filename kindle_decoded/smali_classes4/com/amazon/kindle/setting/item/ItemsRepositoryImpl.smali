.class public final Lcom/amazon/kindle/setting/item/ItemsRepositoryImpl;
.super Ljava/lang/Object;
.source "ItemsRepository.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nItemsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ItemsRepository.kt\ncom/amazon/kindle/setting/item/ItemsRepositoryImpl\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n36#2:78\n37#2:81\n1497#3,2:79\n*E\n*S KotlinDebug\n*F\n+ 1 ItemsRepository.kt\ncom/amazon/kindle/setting/item/ItemsRepositoryImpl\n*L\n64#1:78\n64#1:81\n64#1,2:79\n*E\n"
.end annotation


# instance fields
.field private idToItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/setting/item/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/amazon/kindle/setting/item/ItemsRepositoryImpl;->refresh()V

    return-void
.end method


# virtual methods
.method public findItemByID(Ljava/lang/String;)Lcom/amazon/kindle/setting/item/Item;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/ItemsRepositoryImpl;->idToItemMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/setting/item/Item;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getAllItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/setting/item/Item;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/ItemsRepositoryImpl;->idToItemMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public refresh()V
    .locals 5

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 61
    const-class v1, Lcom/amazon/kindle/setting/item/ItemsProvider;

    invoke-static {v1}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator"

    .line 64
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/setting/item/ItemsProvider;

    .line 65
    invoke-interface {v2}, Lcom/amazon/kindle/setting/item/ItemsProvider;->getItems()Ljava/util/Collection;

    move-result-object v2

    .line 79
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/setting/item/Item;

    .line 66
    invoke-interface {v3}, Lcom/amazon/kindle/setting/item/Item;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 69
    invoke-interface {v3}, Lcom/amazon/kindle/setting/item/Item;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate items found for ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/amazon/kindle/setting/item/Item;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    iput-object v0, p0, Lcom/amazon/kindle/setting/item/ItemsRepositoryImpl;->idToItemMap:Ljava/util/Map;

    return-void
.end method
