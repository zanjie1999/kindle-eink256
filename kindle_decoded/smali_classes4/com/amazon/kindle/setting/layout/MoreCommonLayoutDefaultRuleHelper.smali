.class public final Lcom/amazon/kindle/setting/layout/MoreCommonLayoutDefaultRuleHelper;
.super Ljava/lang/Object;
.source "MoreCommonLayoutDefaultRuleHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMoreCommonLayoutDefaultRuleHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoreCommonLayoutDefaultRuleHelper.kt\ncom/amazon/kindle/setting/layout/MoreCommonLayoutDefaultRuleHelper\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,81:1\n181#2,2:82\n*E\n*S KotlinDebug\n*F\n+ 1 MoreCommonLayoutDefaultRuleHelper.kt\ncom/amazon/kindle/setting/layout/MoreCommonLayoutDefaultRuleHelper\n*L\n45#1,2:82\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/amazon/kindle/setting/layout/LayoutConfiguration;Lcom/amazon/kindle/setting/item/ItemsRepository;)V
    .locals 12

    const-string v0, "layoutConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemsRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p2}, Lcom/amazon/kindle/setting/item/ItemsRepository;->getAllItems()Ljava/util/Map;

    move-result-object p2

    .line 34
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->indexItemsByID()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 82
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "setting_item_reading_settings"

    const-string v6, "setting_item_app_settings"

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/setting/item/Item;

    .line 46
    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v7

    if-eqz v6, :cond_1

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v7

    if-eqz v5, :cond_1

    .line 48
    invoke-interface {v4}, Lcom/amazon/kindle/setting/item/Item;->getCategory()Lcom/amazon/kindle/setting/item/Category;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/setting/layout/MoreCommonLayoutDefaultRuleHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v7, :cond_4

    if-eq v4, v8, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 51
    :cond_2
    new-instance v4, Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    invoke-direct {v4, v10, v9, v8, v9}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_3
    new-instance v4, Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    invoke-direct {v4, v10, v9, v8, v9}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_4
    new-instance v4, Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    invoke-direct {v4, v10, v9, v8, v9}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_5
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    if-nez p2, :cond_6

    .line 58
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v7

    if-eqz v4, :cond_6

    .line 59
    new-instance p2, Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    invoke-direct {p2, v6, v9, v8, v9}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 60
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->appendItem(Lcom/amazon/kindle/setting/layout/ItemConfiguration;)Z

    .line 61
    invoke-interface {v3, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_6
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    if-nez v4, :cond_7

    .line 66
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v7

    if-eqz v6, :cond_7

    .line 67
    new-instance v4, Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    invoke-direct {v4, v5, v9, v8, v9}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    invoke-virtual {p1, v4}, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->appendItem(Lcom/amazon/kindle/setting/layout/ItemConfiguration;)Z

    .line 69
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 74
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 75
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    if-eqz p2, :cond_8

    .line 77
    invoke-virtual {p2, v0}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;->appendChildren(Ljava/util/List;)Z

    :cond_8
    if-eqz v4, :cond_9

    .line 78
    invoke-virtual {v4, v1}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;->appendChildren(Ljava/util/List;)Z

    .line 79
    :cond_9
    invoke-virtual {p1, v2}, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->appendItems(Ljava/util/List;)Z

    return-void
.end method
