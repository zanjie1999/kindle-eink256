.class public Lcom/amazon/kindle/download/assets/BookAsset;
.super Ljava/lang/Object;
.source "BookAsset.java"

# interfaces
.implements Lcom/amazon/kindle/services/download/IBookAsset;


# static fields
.field private static final TOAD_ASSET_PREFIX:Ljava/lang/String; = "t_"


# instance fields
.field private apnxUrl:Ljava/lang/String;

.field private assetId:Ljava/lang/String;

.field private authentication:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private authenticationType:Ljava/lang/String;

.field private bookId:Lcom/amazon/kindle/model/content/IBookID;

.field private deliveryType:Lcom/amazon/kindle/services/download/AssetDeliveryType;

.field private fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

.field private fileName:Ljava/lang/String;

.field private hasAnnotationSidecar:Z

.field private hasApnxSidecar:Z

.field private mimeType:Ljava/lang/String;

.field private optimalUri:Ljava/net/URI;

.field private optimalUriExpirationTime:Ljava/util/Calendar;

.field private priority:Lcom/amazon/kindle/services/download/AssetPriority;

.field private resourceContext:Ljava/lang/String;

.field private size:J

.field private state:Lcom/amazon/kindle/services/download/AssetState;

.field private type:Lcom/amazon/kindle/services/download/AssetType;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetPriority;)V
    .locals 3

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->uri:Ljava/net/URI;

    .line 54
    iput-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->optimalUri:Ljava/net/URI;

    .line 60
    iput-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->optimalUriExpirationTime:Ljava/util/Calendar;

    .line 67
    iput-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->authentication:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->authenticationType:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->priority:Lcom/amazon/kindle/services/download/AssetPriority;

    const-wide/16 v1, 0x0

    .line 83
    iput-wide v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->size:J

    .line 88
    iput-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->assetId:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 98
    iput-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->mimeType:Ljava/lang/String;

    .line 105
    sget-object v1, Lcom/amazon/kindle/services/download/AssetDeliveryType;->DYNAMIC:Lcom/amazon/kindle/services/download/AssetDeliveryType;

    iput-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->deliveryType:Lcom/amazon/kindle/services/download/AssetDeliveryType;

    .line 111
    sget-object v1, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->UNKNOWN:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    iput-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->type:Lcom/amazon/kindle/services/download/AssetType;

    .line 118
    sget-object v1, Lcom/amazon/kindle/services/download/AssetState;->PREQUEUED:Lcom/amazon/kindle/services/download/AssetState;

    iput-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->state:Lcom/amazon/kindle/services/download/AssetState;

    .line 124
    iput-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->resourceContext:Ljava/lang/String;

    const/4 v1, 0x0

    .line 126
    iput-boolean v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->hasAnnotationSidecar:Z

    .line 127
    iput-boolean v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->hasApnxSidecar:Z

    .line 128
    iput-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->apnxUrl:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 140
    invoke-static {p3}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    .line 145
    iput-object p2, p0, Lcom/amazon/kindle/download/assets/BookAsset;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 146
    iput-object p3, p0, Lcom/amazon/kindle/download/assets/BookAsset;->assetId:Ljava/lang/String;

    .line 147
    iput-object p4, p0, Lcom/amazon/kindle/download/assets/BookAsset;->fileName:Ljava/lang/String;

    .line 148
    iput-object p5, p0, Lcom/amazon/kindle/download/assets/BookAsset;->uri:Ljava/net/URI;

    .line 149
    iput-object p6, p0, Lcom/amazon/kindle/download/assets/BookAsset;->authentication:Ljava/lang/String;

    .line 150
    iput-object p7, p0, Lcom/amazon/kindle/download/assets/BookAsset;->authenticationType:Ljava/lang/String;

    .line 151
    iput-object p8, p0, Lcom/amazon/kindle/download/assets/BookAsset;->priority:Lcom/amazon/kindle/services/download/AssetPriority;

    return-void

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attempting to construct a bookAsset with null/empty bookId or assetId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetPriority;Ljava/lang/String;)V
    .locals 0

    .line 182
    invoke-direct/range {p0 .. p8}, Lcom/amazon/kindle/download/assets/BookAsset;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetPriority;)V

    .line 183
    iput-object p9, p0, Lcom/amazon/kindle/download/assets/BookAsset;->resourceContext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetPriority;Ljava/lang/String;Ljava/net/URI;I)V
    .locals 0

    .line 211
    invoke-direct/range {p0 .. p9}, Lcom/amazon/kindle/download/assets/BookAsset;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetPriority;Ljava/lang/String;)V

    .line 212
    iput-object p10, p0, Lcom/amazon/kindle/download/assets/BookAsset;->optimalUri:Ljava/net/URI;

    .line 213
    invoke-static {}, Lcom/amazon/kindle/util/TimeUtils;->getUtcCalendarForCurrentTime()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->optimalUriExpirationTime:Ljava/util/Calendar;

    const/16 p2, 0xd

    .line 214
    invoke-virtual {p1, p2, p11}, Ljava/util/Calendar;->add(II)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetPriority;)V
    .locals 9

    .line 162
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getFileConnectionFactory()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/download/assets/BookAsset;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetPriority;)V

    return-void
.end method

.method public static buildAssetId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildMainFilename(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 3

    .line 452
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    .line 457
    const-class p0, Lcom/amazon/kindle/download/assets/BookAsset;

    invoke-static {p0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null ContentMetadata in the download system for bookID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-static {p0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object p0

    .line 465
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0, p0}, Lcom/amazon/kindle/io/FileSystemHelper;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateSize()V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->state:Lcom/amazon/kindle/services/download/AssetState;

    sget-object v1, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/BookAsset;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/BookAsset;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 418
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/BookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 420
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    .line 421
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/BookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->ANNOTATION_SIDECAR:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 420
    :goto_0
    invoke-static {v1, v0, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->getDownloadPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    .line 426
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->state:Lcom/amazon/kindle/services/download/AssetState;

    sget-object v2, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    if-ne v1, v2, :cond_3

    .line 427
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/BookAsset;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 428
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/BookAsset;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/download/assets/BookAsset;->setSize(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 320
    instance-of v1, p1, Lcom/amazon/kindle/services/download/IBookAsset;

    if-nez v1, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    check-cast p1, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 324
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/download/assets/BookAsset;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->assetId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getApnxUrl()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->apnxUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->assetId:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetType()Lcom/amazon/kindle/services/download/AssetType;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->type:Lcom/amazon/kindle/services/download/AssetType;

    return-object v0
.end method

.method public getAuthentication()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->authentication:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticationType()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->authenticationType:Ljava/lang/String;

    return-object v0
.end method

.method public getBookId()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public getDeliveryType()Lcom/amazon/kindle/services/download/AssetDeliveryType;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->deliveryType:Lcom/amazon/kindle/services/download/AssetDeliveryType;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOptimalUri()Ljava/net/URI;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->optimalUri:Ljava/net/URI;

    return-object v0
.end method

.method public getOriginalUriString()Ljava/lang/String;
    .locals 2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getPriority()Lcom/amazon/kindle/services/download/AssetPriority;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->priority:Lcom/amazon/kindle/services/download/AssetPriority;

    return-object v0
.end method

.method public getResourceContext()Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->resourceContext:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 281
    iget-wide v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->size:J

    return-wide v0
.end method

.method public getState()Lcom/amazon/kindle/services/download/AssetState;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->state:Lcom/amazon/kindle/services/download/AssetState;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hasAnnotationSidecar()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->hasAnnotationSidecar:Z

    return v0
.end method

.method public hasApnxSidecar()Z
    .locals 1

    .line 388
    iget-boolean v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->hasApnxSidecar:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/BookAsset;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 333
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->assetId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setApnxUrl(Ljava/lang/String;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->apnxUrl:Ljava/lang/String;

    return-void
.end method

.method public setAssetType(Lcom/amazon/kindle/services/download/AssetType;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->type:Lcom/amazon/kindle/services/download/AssetType;

    return-void
.end method

.method public setDeliveryType(Lcom/amazon/kindle/services/download/AssetDeliveryType;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->deliveryType:Lcom/amazon/kindle/services/download/AssetDeliveryType;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->fileName:Ljava/lang/String;

    .line 363
    invoke-direct {p0}, Lcom/amazon/kindle/download/assets/BookAsset;->updateSize()V

    return-void
.end method

.method public setHasAnnotationSidecar(Z)V
    .locals 0

    .line 383
    iput-boolean p1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->hasAnnotationSidecar:Z

    return-void
.end method

.method public setHasApnxSidecar(Z)V
    .locals 0

    .line 393
    iput-boolean p1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->hasApnxSidecar:Z

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 287
    iput-wide p1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->size:J

    :cond_0
    return-void
.end method

.method public setState(Lcom/amazon/kindle/services/download/AssetState;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->state:Lcom/amazon/kindle/services/download/AssetState;

    .line 310
    invoke-direct {p0}, Lcom/amazon/kindle/download/assets/BookAsset;->updateSize()V

    return-void
.end method

.method public shouldUseOptimalUri()Z
    .locals 2

    .line 245
    invoke-static {}, Lcom/amazon/kindle/util/TimeUtils;->getUtcCalendarForCurrentTime()Ljava/util/Calendar;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->optimalUri:Ljava/net/URI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/BookAsset;->optimalUriExpirationTime:Ljava/util/Calendar;

    .line 247
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
