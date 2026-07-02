.class public final Lcom/amazon/kindle/download/factory/DownloadRequestGroupFactory;
.super Ljava/lang/Object;
.source "DownloadRequestGroupFactory.kt"

# interfaces
.implements Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/download/factory/DownloadRequestGroupFactory;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/amazon/kindle/download/factory/DownloadRequestGroupFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/download/factory/DownloadRequestGroupFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/factory/DownloadRequestGroupFactory;->INSTANCE:Lcom/amazon/kindle/download/factory/DownloadRequestGroupFactory;

    .line 30
    const-class v0, Lcom/amazon/kindle/download/factory/DownloadRequestGroupFactory;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/factory/DownloadRequestGroupFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDownloadRequestGroup(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Ljava/util/Map;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/services/download/IDownloadRequestGroup;"
        }
    .end annotation

    const-string v0, "assets"

    move-object/from16 v5, p1

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    move-object/from16 v15, p5

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    .line 89
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    .line 91
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getDefaultDownloadPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getDownloadTracker()Lcom/amazon/kindle/services/download/IDownloadTracker;

    move-result-object v6

    .line 94
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->isUserInitiated()Z

    move-result v7

    .line 95
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getCorrelationId()Ljava/lang/String;

    move-result-object v8

    .line 98
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getExcludedTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v11

    .line 100
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-result-object v13

    .line 101
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getHasMultimediaContent()Z

    move-result v14

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    move-object/from16 v3, p2

    move-object/from16 v9, p6

    .line 88
    invoke-direct/range {v1 .. v14}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lcom/amazon/kindle/services/download/IDownloadTracker;ZLjava/lang/String;Ljava/util/Map;Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;ZLcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Z)V

    .line 103
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getCorrelationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IAssetGroup;->setCorrelationId(Ljava/lang/String;)V

    move-object/from16 v1, p3

    .line 104
    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IAssetGroup;->setRevision(Ljava/lang/String;)V

    move-object/from16 v1, p4

    .line 105
    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IAssetGroup;->setGroupContext(Ljava/lang/String;)V

    return-object v0
.end method

.method public createNonToadDownloadRequestGroup(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 11

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "krlDownloadFacade"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getTodoProperties()Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 37
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    .line 38
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getDownloadBookURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webServiceURL"

    .line 40
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?type="

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/BookType;->getCDEContentTypeFor(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&key="

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply {\n\u2026\n            }.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    const-string v1, "URI.create(url)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 49
    :cond_3
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    const-string v1, "URI.create(todoUrl)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    move-object v7, v0

    .line 51
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/kindle/download/assets/BookAsset;->buildMainFilename(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "BookAsset.buildMainFilen\u2026oadFacade, params.bookId)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/amazon/kindle/download/assets/BookAsset;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getAsin()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 54
    sget-object v10, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    move-object v2, v0

    move-object v3, p2

    .line 53
    invoke-direct/range {v2 .. v10}, Lcom/amazon/kindle/download/assets/BookAsset;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetPriority;)V

    .line 56
    sget-object p2, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->MAIN_CONTENT:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-interface {v0, p2}, Lcom/amazon/kindle/services/download/IBookAsset;->setAssetType(Lcom/amazon/kindle/services/download/AssetType;)V

    .line 63
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    const-string v1, "bookAsset.bookId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/models/BookType;->getValue()I

    move-result p2

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    const-string v2, "bookAsset.bookId.type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/BookType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_4

    const-wide/16 v1, 0x0

    .line 64
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/services/download/IBookAsset;->setSize(J)V

    goto :goto_4

    :cond_4
    const-wide v1, 0x7fffffffffffffffL

    .line 67
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/services/download/IBookAsset;->setSize(J)V

    .line 69
    :goto_4
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v5, ""

    const-string v6, ""

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/amazon/kindle/download/factory/DownloadRequestGroupFactory;->createDownloadRequestGroup(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Ljava/util/Map;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p1

    return-object p1
.end method

.method public recreateExistingRequestGroup(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Ljava/util/Collection;Lcom/amazon/kindle/download/assets/IAssetStateManager;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ")",
            "Lcom/amazon/kindle/services/download/IDownloadRequestGroup;"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetStateManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v6, p1

    .line 77
    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kindle/download/factory/DownloadRequestGroupFactory;->createDownloadRequestGroup(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Ljava/util/Map;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p2

    .line 78
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getDownloadGroupProperties(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 79
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetField;->REVISION:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->setRevision(Ljava/lang/String;)V

    .line 80
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSET_GROUPS_GROUP_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->setGroupContext(Ljava/lang/String;)V

    .line 81
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSET_GROUPS_CORRELATIONID:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->setCorrelationId(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    sget-object p3, Lcom/amazon/kindle/download/factory/DownloadRequestGroupFactory;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to generate DownloadRequestGroup from DB for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but download group properties is null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method
