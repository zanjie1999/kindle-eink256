.class public final Lcom/amazon/kindle/setting/layout/LayoutConfigurationComposer;
.super Ljava/lang/Object;
.source "LayoutConfigurationComposer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutConfigurationComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutConfigurationComposer.kt\ncom/amazon/kindle/setting/layout/LayoutConfigurationComposer\n*L\n1#1,42:1\n*E\n"
.end annotation


# instance fields
.field private final configurationFileName:Ljava/lang/String;

.field private final fileParser:Lcom/amazon/kindle/setting/layout/LayoutConfigurationFileParser;

.field private final itemsRepository:Lcom/amazon/kindle/setting/item/ItemsRepository;

.field private final layoutDefaultRule:Lcom/amazon/kindle/setting/layout/LayoutDefaultRule;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/setting/layout/LayoutConfigurationFileParser;Ljava/lang/String;Lcom/amazon/kindle/setting/item/ItemsRepository;Lcom/amazon/kindle/setting/layout/LayoutDefaultRule;)V
    .locals 1

    const-string v0, "fileParser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationFileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemsRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutDefaultRule"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/setting/layout/LayoutConfigurationComposer;->fileParser:Lcom/amazon/kindle/setting/layout/LayoutConfigurationFileParser;

    iput-object p2, p0, Lcom/amazon/kindle/setting/layout/LayoutConfigurationComposer;->configurationFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/setting/layout/LayoutConfigurationComposer;->itemsRepository:Lcom/amazon/kindle/setting/item/ItemsRepository;

    iput-object p4, p0, Lcom/amazon/kindle/setting/layout/LayoutConfigurationComposer;->layoutDefaultRule:Lcom/amazon/kindle/setting/layout/LayoutDefaultRule;

    return-void
.end method


# virtual methods
.method public final getComposedLayoutConfiguration()Lcom/amazon/kindle/setting/layout/LayoutConfiguration;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/LayoutConfigurationComposer;->fileParser:Lcom/amazon/kindle/setting/layout/LayoutConfigurationFileParser;

    iget-object v1, p0, Lcom/amazon/kindle/setting/layout/LayoutConfigurationComposer;->configurationFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/setting/layout/LayoutConfigurationFileParser;->parse(Ljava/lang/String;)Lcom/amazon/kindle/setting/layout/LayoutConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/setting/layout/LayoutConfigurationComposer;->itemsRepository:Lcom/amazon/kindle/setting/item/ItemsRepository;

    invoke-interface {v2}, Lcom/amazon/kindle/setting/item/ItemsRepository;->getAllItems()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/amazon/kindle/setting/layout/LayoutConfigurationComposer;->layoutDefaultRule:Lcom/amazon/kindle/setting/layout/LayoutDefaultRule;

    iget-object v2, p0, Lcom/amazon/kindle/setting/layout/LayoutConfigurationComposer;->itemsRepository:Lcom/amazon/kindle/setting/item/ItemsRepository;

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/setting/layout/LayoutDefaultRule;->apply(Lcom/amazon/kindle/setting/layout/LayoutConfiguration;Lcom/amazon/kindle/setting/item/ItemsRepository;)V

    :cond_1
    return-object v0
.end method
