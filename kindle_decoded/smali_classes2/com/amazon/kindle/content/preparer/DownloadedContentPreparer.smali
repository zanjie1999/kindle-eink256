.class public Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;
.super Ljava/lang/Object;
.source "DownloadedContentPreparer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private metadataSerializer:Lcom/amazon/kindle/download/BookMetadataSerializationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V

    iput-object v0, p0, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;->metadataSerializer:Lcom/amazon/kindle/download/BookMetadataSerializationManager;

    return-void
.end method

.method private doesContentExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 225
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getCurrentUserId()Ljava/lang/String;
    .locals 1

    .line 234
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isScanNeeded(Ljava/lang/Long;Ljava/io/File;)Z
    .locals 5

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const/4 p1, 0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    return p1

    .line 165
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p2, v0, v2

    if-lez p2, :cond_2

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 172
    :catch_0
    sget-object p2, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;->TAG:Ljava/lang/String;

    const-string v0, "Error in getting the last modified time"

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private prepareAndCheckYJAssetInfo(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 190
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 191
    sget-object v3, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/services/download/IBookAsset;->setState(Lcom/amazon/kindle/services/download/AssetState;)V

    .line 194
    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne v3, v4, :cond_2

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".ast"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-direct {p0, p3, v3}, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;->doesContentExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    return v0

    .line 199
    :cond_1
    invoke-interface {v2, v3}, Lcom/amazon/kindle/services/download/IBookAsset;->setFilename(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_2
    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->MAIN_CONTENT:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-eq v3, v4, :cond_3

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->TOAD_ASSET:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne v3, v4, :cond_0

    .line 203
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".kfx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-interface {v2, p2}, Lcom/amazon/kindle/services/download/IBookAsset;->setMimeType(Ljava/lang/String;)V

    .line 207
    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 208
    invoke-direct {p0, p3, v3}, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;->doesContentExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    .line 214
    :cond_5
    invoke-interface {v2, v3}, Lcom/amazon/kindle/services/download/IBookAsset;->setFilename(Ljava/lang/String;)V

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changing asset filename for the YJ book and setting mimeType for book Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Asset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    return v1
.end method


# virtual methods
.method public prepareContent(Ljava/util/Set;Ljava/lang/Long;[Ljava/io/File;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_0

    return-object v0

    .line 65
    :cond_0
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_b

    aget-object v4, p3, v3

    .line 67
    invoke-direct {p0, p2, v4}, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;->isScanNeeded(Ljava/lang/Long;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 68
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scan needed for directory:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    iget-object v5, p0, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;->metadataSerializer:Lcom/amazon/kindle/download/BookMetadataSerializationManager;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->loadMetadata(Ljava/lang/String;)V

    .line 72
    iget-object v5, p0, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;->metadataSerializer:Lcom/amazon/kindle/download/BookMetadataSerializationManager;

    invoke-virtual {v5}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->readMimeTypeFromMetadata()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 76
    iget-object v6, p0, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;->metadataSerializer:Lcom/amazon/kindle/download/BookMetadataSerializationManager;

    invoke-virtual {v6}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->readDeliveryManifestFromMetadata()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    const/4 v7, 0x0

    .line 81
    invoke-static {v6, v7}, Lcom/amazon/kindle/download/manifest/ManifestUtilsKt;->parseManifestToGroup(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IAssetGroup;

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_2

    .line 86
    :cond_1
    invoke-interface {v6}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v7

    if-nez v7, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 93
    invoke-interface {v7}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_2

    .line 99
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v8

    invoke-interface {v7}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;->getCurrentUserId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 102
    invoke-virtual {v7}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v7

    sget-object v8, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v7, v8, :cond_4

    goto/16 :goto_2

    .line 105
    :cond_4
    invoke-interface {v6}, Lcom/amazon/kindle/services/download/IAssetGroup;->getAssets()Ljava/util/Collection;

    move-result-object v7

    .line 107
    invoke-static {v5}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyContentMimeType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 108
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v5, v8}, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;->prepareAndCheckYJAssetInfo(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    .line 115
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->addGroup(Lcom/amazon/kindle/services/download/IAssetGroup;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 118
    sget-object v4, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;->TAG:Ljava/lang/String;

    const-string v5, "Failed to add the sideloaded assets"

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 123
    :cond_6
    new-instance v5, Ljava/io/File;

    invoke-interface {v6}, Lcom/amazon/kindle/services/download/IAssetGroup;->getMainAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 126
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 133
    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_2

    .line 137
    :cond_8
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_a

    aget-object v7, v4, v6

    .line 138
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->getInstance()Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->isFileSupported(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 139
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    return-object v0
.end method
