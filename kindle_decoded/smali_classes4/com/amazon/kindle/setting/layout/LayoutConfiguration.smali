.class public final Lcom/amazon/kindle/setting/layout/LayoutConfiguration;
.super Ljava/lang/Object;
.source "LayoutConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutConfiguration.kt\ncom/amazon/kindle/setting/layout/LayoutConfiguration\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,58:1\n1497#2,2:59\n*E\n*S KotlinDebug\n*F\n+ 1 LayoutConfiguration.kt\ncom/amazon/kindle/setting/layout/LayoutConfiguration\n*L\n50#1,2:59\n*E\n"
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/setting/layout/ItemConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/setting/layout/ItemConfiguration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->items:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private final indexConfigurationsInFile(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/setting/layout/ItemConfiguration;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/setting/layout/ItemConfiguration;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 59
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    .line 51
    invoke-virtual {v0}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v0}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->indexConfigurationsInFile(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final appendItem(Lcom/amazon/kindle/setting/layout/ItemConfiguration;)Z
    .locals 1

    const-string v0, "itemToAppend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final appendItems(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/setting/layout/ItemConfiguration;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "itemsToAppend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;

    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->items:Ljava/util/List;

    iget-object p1, p1, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->items:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/setting/layout/ItemConfiguration;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->items:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final indexItemsByID()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/setting/layout/ItemConfiguration;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    iget-object v1, p0, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->items:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->indexConfigurationsInFile(Ljava/util/Map;Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutConfiguration(items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
