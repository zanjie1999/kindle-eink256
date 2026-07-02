.class public final Lcom/amazon/kindle/setting/layout/LayoutUIBuilder;
.super Ljava/lang/Object;
.source "LayoutUIBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutUIBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutUIBuilder.kt\ncom/amazon/kindle/setting/layout/LayoutUIBuilder\n*L\n1#1,93:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAllLevelItemConfigurations(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/setting/layout/ItemConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/setting/layout/ItemConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    .line 88
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v0}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/setting/layout/LayoutUIBuilder;->getAllLevelItemConfigurations(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final build(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/setting/layout/LayoutUIBuilder;->build(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public final build(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/amazon/kindle/setting/layout/LayoutConfigurationFileParserImpl;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/setting/layout/LayoutConfigurationFileParserImpl;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsRepositoryManager;->getInstance()Lcom/amazon/kindle/setting/item/ItemsRepository;

    move-result-object p1

    .line 53
    const-class v1, Lcom/amazon/kindle/setting/layout/LayoutDefaultRule;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Required value was null."

    if-eqz v1, :cond_7

    .line 52
    check-cast v1, Lcom/amazon/kindle/setting/layout/LayoutDefaultRule;

    .line 56
    new-instance v3, Lcom/amazon/kindle/setting/layout/LayoutConfigurationComposer;

    invoke-direct {v3, v0, p2, p1, v1}, Lcom/amazon/kindle/setting/layout/LayoutConfigurationComposer;-><init>(Lcom/amazon/kindle/setting/layout/LayoutConfigurationFileParser;Ljava/lang/String;Lcom/amazon/kindle/setting/item/ItemsRepository;Lcom/amazon/kindle/setting/layout/LayoutDefaultRule;)V

    invoke-virtual {v3}, Lcom/amazon/kindle/setting/layout/LayoutConfigurationComposer;->getComposedLayoutConfiguration()Lcom/amazon/kindle/setting/layout/LayoutConfiguration;

    move-result-object p1

    .line 58
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 60
    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p1}, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/setting/layout/LayoutUIBuilder;->getAllLevelItemConfigurations(Ljava/util/List;Ljava/util/List;)V

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    .line 64
    invoke-virtual {v1}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    invoke-virtual {v1}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 66
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;->getChildren()Ljava/util/List;

    move-result-object p2

    .line 75
    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 76
    invoke-virtual {p1}, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;->getItems()Ljava/util/List;

    move-result-object p2

    .line 81
    :cond_5
    const-class p1, Lcom/amazon/kindle/setting/layout/ItemsFragmentCreator;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 80
    check-cast p1, Lcom/amazon/kindle/setting/layout/ItemsFragmentCreator;

    .line 82
    invoke-interface {p1, p2}, Lcom/amazon/kindle/setting/layout/ItemsFragmentCreator;->createItemsFragment(Ljava/util/List;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    .line 80
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
