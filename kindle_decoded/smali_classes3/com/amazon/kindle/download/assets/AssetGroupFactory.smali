.class public final Lcom/amazon/kindle/download/assets/AssetGroupFactory;
.super Ljava/lang/Object;
.source "AssetGroupFactory.kt"

# interfaces
.implements Lcom/amazon/kindle/services/download/IAssetGroupFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetGroupFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetGroupFactory.kt\ncom/amazon/kindle/download/assets/AssetGroupFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1527#2:108\n1558#2,4:109\n*E\n*S KotlinDebug\n*F\n+ 1 AssetGroupFactory.kt\ncom/amazon/kindle/download/assets/AssetGroupFactory\n*L\n39#1:108\n39#1,4:109\n*E\n"
.end annotation


# instance fields
.field private final fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V
    .locals 1

    const-string v0, "fileConnectionFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/AssetGroupFactory;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    return-void
.end method


# virtual methods
.method public final buildAsset$com_amazon_kindle_dm(Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;Lcom/amazon/kindle/model/content/IBookID;I)Lcom/amazon/kindle/services/download/IBookAsset;
    .locals 28

    move-object/from16 v0, p0

    const-string v1, "resource"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bookID"

    move-object/from16 v5, p2

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getEndpoint()Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;

    move-result-object v1

    .line 63
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->areSimulatedDownloadFailuresEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    new-instance v3, Ljava/net/URI;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;->getUrl()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;->getUrl()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;->getUrl()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    const-string v11, ""

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;->getUrl()Ljava/net/URI;

    move-result-object v3

    :goto_0
    move-object v8, v3

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getRequirement()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/services/download/AssetPriority;->parse(Ljava/lang/String;)Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v11

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 71
    sget-object v4, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;->Companion:Lcom/amazon/kindle/download/manifest/ManifestResourceTypes$Companion;

    invoke-virtual {v4, v3}, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes$Companion;->parse(Ljava/lang/String;)Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v15, v3

    const/4 v3, 0x1

    if-nez v15, :cond_2

    goto :goto_2

    .line 74
    :cond_2
    sget-object v4, Lcom/amazon/kindle/download/assets/AssetGroupFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6

    if-eq v4, v3, :cond_4

    .line 82
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getId()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, "/"

    const-string v18, "-"

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_3

    const/16 v25, 0x0

    const/16 v26, 0x4

    const/16 v27, 0x0

    const-string v23, "\\"

    const-string v24, ""

    invoke-static/range {v22 .. v27}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_3

    .line 83
    :cond_3
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/download/assets/BookAsset;->buildAssetId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 78
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".embp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object v6, v4

    if-nez v15, :cond_5

    goto :goto_4

    .line 87
    :cond_5
    sget-object v4, Lcom/amazon/kindle/download/assets/AssetGroupFactory$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v4, v4, v7

    if-eq v4, v3, :cond_6

    .line 89
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".ast"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_5

    :cond_6
    move-object v7, v6

    .line 92
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getOptimalEndpoint()Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;

    move-result-object v3

    .line 93
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->areOptimalManifestUrlsEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    .line 94
    new-instance v16, Lcom/amazon/kindle/download/assets/BookAsset;

    iget-object v4, v0, Lcom/amazon/kindle/download/assets/AssetGroupFactory;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    const/4 v9, 0x0

    .line 95
    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getResponseContext()Ljava/lang/String;

    move-result-object v12

    .line 96
    invoke-virtual {v3}, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->getDirectUrl()Ljava/net/URI;

    move-result-object v13

    invoke-virtual {v3}, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->getExpiresAfter()I

    move-result v14

    move-object/from16 v3, v16

    move-object/from16 v5, p2

    .line 94
    invoke-direct/range {v3 .. v14}, Lcom/amazon/kindle/download/assets/BookAsset;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetPriority;Ljava/lang/String;Ljava/net/URI;I)V

    goto :goto_6

    .line 98
    :cond_7
    new-instance v16, Lcom/amazon/kindle/download/assets/BookAsset;

    iget-object v4, v0, Lcom/amazon/kindle/download/assets/AssetGroupFactory;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    const/4 v9, 0x0

    .line 99
    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getResponseContext()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v3, v16

    move-object/from16 v5, p2

    .line 98
    invoke-direct/range {v3 .. v12}, Lcom/amazon/kindle/download/assets/BookAsset;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetPriority;Ljava/lang/String;)V

    :goto_6
    move-object/from16 v1, v16

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getSize()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_7

    :cond_8
    const-wide/16 v3, 0x0

    :goto_7
    invoke-virtual {v1, v3, v4}, Lcom/amazon/kindle/download/assets/BookAsset;->setSize(J)V

    if-eqz v15, :cond_9

    .line 103
    invoke-virtual {v15}, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;->toAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v3

    if-eqz v3, :cond_9

    goto :goto_8

    :cond_9
    sget-object v3, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->TOAD_ASSET:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    :goto_8
    invoke-virtual {v1, v3}, Lcom/amazon/kindle/download/assets/BookAsset;->setAssetType(Lcom/amazon/kindle/services/download/AssetType;)V

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getDeliveryType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/services/download/AssetDeliveryType;->parse(Ljava/lang/String;)Lcom/amazon/kindle/services/download/AssetDeliveryType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/download/assets/BookAsset;->setDeliveryType(Lcom/amazon/kindle/services/download/AssetDeliveryType;)V

    return-object v1
.end method

.method public create(Lcom/amazon/kindle/download/manifest/MDSManifest;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IAssetGroup;
    .locals 12

    const-string v0, "manifest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/MDSManifest;->getContent()Lcom/amazon/kindle/download/manifest/MDSManifest$Content;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/MDSManifest$Content;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    new-instance p2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/MDSManifest;->getContent()Lcom/amazon/kindle/download/manifest/MDSManifest$Content;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/download/manifest/ManifestContentType;->getBookTypeFromManifestContent(Lcom/amazon/kindle/download/manifest/MDSManifest$Content;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    :goto_0
    move-object v3, p2

    .line 39
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/MDSManifest;->getResources()Ljava/util/List;

    move-result-object p2

    .line 108
    new-instance v8, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 110
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_1

    .line 111
    check-cast v1, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;

    .line 40
    invoke-virtual {p0, v1, v3, v0}, Lcom/amazon/kindle/download/assets/AssetGroupFactory;->buildAsset$com_amazon_kindle_dm(Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;Lcom/amazon/kindle/model/content/IBookID;I)Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_1

    .line 111
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 p1, 0x0

    throw p1

    .line 43
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 45
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/services/download/IBookAsset;

    if-eqz p2, :cond_3

    sget-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->MAIN_CONTENT:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-interface {p2, v0}, Lcom/amazon/kindle/services/download/IBookAsset;->setAssetType(Lcom/amazon/kindle/services/download/AssetType;)V

    .line 48
    :cond_3
    new-instance p2, Lcom/amazon/kindle/download/assets/AssetGroup;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/MDSManifest;->getContent()Lcom/amazon/kindle/download/manifest/MDSManifest$Content;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/MDSManifest$Content;->getRevision()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/MDSManifest;->getResponseContext()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p3, :cond_4

    goto :goto_2

    .line 49
    :cond_4
    invoke-static {v3}, Lcom/amazon/kindle/services/download/CorrelationIdUtils;->getDeviceGeneratedCorrelationId(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p3

    :goto_2
    move-object v9, p3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p2

    .line 48
    invoke-direct/range {v2 .. v11}, Lcom/amazon/kindle/download/assets/AssetGroup;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;Z)V

    return-object p2
.end method
