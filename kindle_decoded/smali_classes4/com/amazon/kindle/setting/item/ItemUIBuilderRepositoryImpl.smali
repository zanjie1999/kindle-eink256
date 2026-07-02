.class public final Lcom/amazon/kindle/setting/item/ItemUIBuilderRepositoryImpl;
.super Ljava/lang/Object;
.source "ItemUIBuilderRepository.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemUIBuilderRepository;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/setting/item/ItemUIBuilderRepository<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nItemUIBuilderRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ItemUIBuilderRepository.kt\ncom/amazon/kindle/setting/item/ItemUIBuilderRepositoryImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1497#2:67\n1497#2,2:68\n1498#2:70\n*E\n*S KotlinDebug\n*F\n+ 1 ItemUIBuilderRepository.kt\ncom/amazon/kindle/setting/item/ItemUIBuilderRepositoryImpl\n*L\n56#1:67\n56#1,2:68\n56#1:70\n*E\n"
.end annotation


# instance fields
.field private final itemTypeToUIBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/amazon/kindle/setting/item/Item;",
            ">;",
            "Lcom/amazon/kindle/setting/item/ItemUIBuilder<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/setting/item/ItemUIBuilderRepositoryImpl;->itemTypeToUIBuilderMap:Ljava/util/Map;

    .line 53
    const-class v0, Lcom/amazon/kindle/setting/item/ItemUIBuilderProvider;

    invoke-static {v0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 67
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/setting/item/ItemUIBuilderProvider;

    .line 57
    invoke-interface {v1}, Lcom/amazon/kindle/setting/item/ItemUIBuilderProvider;->getItemUIBuilders()Ljava/util/Collection;

    move-result-object v1

    .line 68
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/setting/item/ItemUIBuilder;

    .line 58
    iget-object v3, p0, Lcom/amazon/kindle/setting/item/ItemUIBuilderRepositoryImpl;->itemTypeToUIBuilderMap:Ljava/util/Map;

    invoke-interface {v2}, Lcom/amazon/kindle/setting/item/ItemUIBuilder;->supportedType()Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/amazon/kindle/setting/item/ItemUIBuilderRepositoryImpl;->itemTypeToUIBuilderMap:Ljava/util/Map;

    invoke-interface {v2}, Lcom/amazon/kindle/setting/item/ItemUIBuilder;->supportedType()Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate UI builder for type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/amazon/kindle/setting/item/ItemUIBuilder;->supportedType()Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    .line 53
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.amazon.discovery.Discoveries<com.amazon.kindle.setting.item.ItemUIBuilderProvider<T>>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public findItemUIBuilderByItem(Lcom/amazon/kindle/setting/item/Item;)Lcom/amazon/kindle/setting/item/ItemUIBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/setting/item/Item;",
            ")",
            "Lcom/amazon/kindle/setting/item/ItemUIBuilder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/ItemUIBuilderRepositoryImpl;->itemTypeToUIBuilderMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/setting/item/ItemUIBuilder;

    return-object p1
.end method
