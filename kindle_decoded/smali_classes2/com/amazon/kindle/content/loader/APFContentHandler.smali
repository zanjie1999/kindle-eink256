.class public Lcom/amazon/kindle/content/loader/APFContentHandler;
.super Ljava/lang/Object;
.source "APFContentHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/amazon/kindle/content/loader/APFContentHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOwnership(Ljava/lang/String;)V
    .locals 1

    .line 142
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMultipleProfileHelper()Lcom/amazon/kcp/application/IMultipleProfileHelper;

    move-result-object v0

    .line 145
    :try_start_0
    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->addOwnership(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    sget-object p0, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    const-string v0, "Unable to add ownership of shared assets to current user"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static createDirectory(Ljava/lang/String;)V
    .locals 1

    .line 369
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 371
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-void
.end method

.method private static getAPFMetadatInfo(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/APFMetadataInfo;
    .locals 4

    const-string v0, "Error while sideloading APF file "

    const/4 v1, 0x0

    .line 189
    :try_start_0
    invoke-static {p0}, Lcom/amazon/kindle/io/FileSystemHelper;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    sget-object v2, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " content is empty "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 204
    :cond_0
    invoke-static {v2}, Lcom/amazon/kcp/library/models/internal/APFMetadataInfoParser;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/APFMetadataInfo;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 191
    sget-object v2, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be read, exception: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 191
    invoke-static {v2, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getAssetGroupFromManifestFile(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IAssetGroup;
    .locals 5

    const-string v0, "Error while sideloading APF file "

    const/4 v1, 0x0

    .line 161
    :try_start_0
    invoke-static {p0}, Lcom/amazon/kindle/io/FileSystemHelper;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    sget-object v2, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " content is empty "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 176
    :cond_0
    invoke-static {v2, v1}, Lcom/amazon/kindle/download/manifest/ManifestUtilsKt;->parseManifestToGroup(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IAssetGroup;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v2

    .line 163
    sget-object v3, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be read, exception: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-static {v3, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final getAssetsFolderUnzippedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "assets/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getYJAssetSharedLocation(Lcom/amazon/kcp/application/IMultipleProfileHelper;Lcom/amazon/kcp/library/models/internal/AmznBookID;Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 353
    invoke-interface {p0, p1}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 356
    :goto_0
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 358
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/amazon/kindle/io/FileSystemHelper;->getDownloadPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Z)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static handleZippedContent(Ljava/io/File;Lcom/amazon/kindle/content/loader/IContentLoader;)Ljava/io/File;
    .locals 5

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/amazon/system/io/ZippedFileUtils;->isZippedFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/amazon/kindle/io/FileSystemHelper;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    sget-object v0, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    const-string v1, "Successfully detected .apf file on the fileSystem in extracting the apf file"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zip fileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v0}, Lcom/amazon/kindle/io/FileSystemHelper;->getFilenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    sget-object v2, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unzipped folderName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 69
    sget-object v2, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "basePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    invoke-static {p0, v0, p0, v1}, Lcom/amazon/system/io/ZippedFileUtils;->unzipPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    sget-object p0, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully unzipped the file to folder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v2, p1}, Lcom/amazon/kindle/content/loader/APFContentHandler;->loadZippedContent(Ljava/lang/String;Lcom/amazon/kindle/content/loader/IContentLoader;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 88
    :cond_1
    sget-object v0, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " or content loader: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " passed to APFContentHandler"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static loadZippedContent(Ljava/lang/String;Lcom/amazon/kindle/content/loader/IContentLoader;)Ljava/io/File;
    .locals 5

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DeliveryManifest.dmf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/content/loader/APFContentHandler;->getAssetGroupFromManifestFile(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IAssetGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    sget-object p0, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    const-string p1, "Unable to get asset group from sideloaded manifest file"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 107
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "META-INF/METADATA_INFO.MI"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/content/loader/APFContentHandler;->getAPFMetadatInfo(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/APFMetadataInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 109
    sget-object p0, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    const-string p1, "Unable to get metadata info from sideloaded apf file! Aborting"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 113
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IAssetGroup;->getAssets()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3, p0, v2}, Lcom/amazon/kindle/content/loader/APFContentHandler;->updateAssetInfos(Ljava/util/Collection;Ljava/lang/String;Lcom/amazon/kcp/library/models/internal/APFMetadataInfo;)V

    .line 117
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IAssetGroup;->getMainAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IAssetGroup;->getMainAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/services/download/IBookAsset;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/amazon/kindle/content/loader/IContentLoader;->resolveContentLoaderConflict(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    sget-object v2, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Zipped content is supported by this loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->addGroup(Lcom/amazon/kindle/services/download/IAssetGroup;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 123
    sget-object p0, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    const-string p1, "Failed to add the sideloaded assets"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 127
    :cond_2
    invoke-static {v0, p0}, Lcom/amazon/kindle/content/loader/APFContentHandler;->updateAssetLocationsAndCleanUp(Lcom/amazon/kindle/services/download/IAssetGroup;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method private static moveAssetsToInternalDirs(Lcom/amazon/kindle/services/download/IBookAsset;Ljava/lang/String;Lcom/amazon/kcp/application/IMultipleProfileHelper;Z)Z
    .locals 4

    .line 311
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object p1

    .line 315
    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    .line 318
    sget-object v2, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->ANNOTATION_SIDECAR:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 321
    :cond_0
    sget-object v2, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 322
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p1

    invoke-static {p1, v1, v3}, Lcom/amazon/kindle/io/FileSystemHelper;->getDownloadPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 324
    :cond_1
    invoke-static {p2, v1, p3}, Lcom/amazon/kindle/content/loader/APFContentHandler;->getYJAssetSharedLocation(Lcom/amazon/kcp/application/IMultipleProfileHelper;Lcom/amazon/kcp/library/models/internal/AmznBookID;Z)Ljava/lang/String;

    move-result-object p1

    .line 327
    :goto_0
    sget-object p2, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moving the file to: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance p2, Ljava/io/File;

    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :try_start_0
    invoke-static {v0, p2}, Lcom/amazon/kindle/io/FileSystemHelper;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    .line 333
    sget-object p1, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Move success: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 336
    sget-object p1, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to move file: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to new location: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method private static updateAssetInfos(Ljava/util/Collection;Ljava/lang/String;Lcom/amazon/kcp/library/models/internal/APFMetadataInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/models/internal/APFMetadataInfo;",
            ")V"
        }
    .end annotation

    .line 215
    invoke-virtual {p2}, Lcom/amazon/kcp/library/models/internal/APFMetadataInfo;->getAssetsInfo()Ljava/util/List;

    move-result-object p2

    .line 217
    invoke-static {p1}, Lcom/amazon/kindle/content/loader/APFContentHandler;->getAssetsFolderUnzippedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 221
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/internal/APFAssetInfo;

    .line 222
    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/APFAssetInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 225
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 227
    sget-object v1, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting state as local for asset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v1, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    invoke-interface {p2, v1}, Lcom/amazon/kindle/services/download/IBookAsset;->setState(Lcom/amazon/kindle/services/download/AssetState;)V

    .line 231
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/internal/APFAssetInfo;

    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/APFAssetInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p1, v2}, Lcom/amazon/kindle/content/loader/APFContentHandler;->updateFileNameAndExtensionOfAssetOnDisk(Lcom/amazon/kindle/services/download/IBookAsset;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-interface {p2, v2}, Lcom/amazon/kindle/services/download/IBookAsset;->setFilename(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/APFAssetInfo;->getMetadata()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    invoke-interface {p2, v1}, Lcom/amazon/kindle/services/download/IBookAsset;->setMimeType(Ljava/lang/String;)V

    goto :goto_1

    .line 244
    :cond_1
    sget-object v1, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset info null for asset id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , possible mis-match between .dmf and .MI files"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static updateAssetLocationsAndCleanUp(Lcom/amazon/kindle/services/download/IAssetGroup;Ljava/lang/String;)Ljava/io/File;
    .locals 9

    .line 256
    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    .line 257
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMultipleProfileHelper()Lcom/amazon/kcp/application/IMultipleProfileHelper;

    move-result-object v1

    .line 258
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/amazon/kindle/io/FileSystemHelper;->getDownloadPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Z)Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IAssetGroup;->getAssets()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 265
    sget-object v7, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-interface {v5}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {v1, v0, v3}, Lcom/amazon/kindle/content/loader/APFContentHandler;->getYJAssetSharedLocation(Lcom/amazon/kcp/application/IMultipleProfileHelper;Lcom/amazon/kcp/library/models/internal/AmznBookID;Z)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Lcom/amazon/kindle/content/loader/APFContentHandler;->createDirectory(Ljava/lang/String;)V

    .line 273
    invoke-static {v2}, Lcom/amazon/kindle/content/loader/APFContentHandler;->createDirectory(Ljava/lang/String;)V

    .line 275
    invoke-static {p1}, Lcom/amazon/kindle/content/loader/APFContentHandler;->getAssetsFolderUnzippedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IAssetGroup;->getAssets()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 279
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 280
    invoke-static {v5, v7, v1, v3}, Lcom/amazon/kindle/content/loader/APFContentHandler;->moveAssetsToInternalDirs(Lcom/amazon/kindle/services/download/IBookAsset;Ljava/lang/String;Lcom/amazon/kcp/application/IMultipleProfileHelper;Z)Z

    goto :goto_1

    .line 284
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-static {v2}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteDirectory(Ljava/io/File;)Z

    move-result v2

    .line 287
    sget-object v4, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Folder successfully delete: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".apf"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p1

    .line 292
    sget-object v2, Lcom/amazon/kindle/content/loader/APFContentHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APF file successfully delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 295
    invoke-interface {v1, v0, v6, v6, v6}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->shareFileOrDirectory(Ljava/lang/String;ZZZ)Z

    .line 296
    invoke-static {v0}, Lcom/amazon/kindle/content/loader/APFContentHandler;->addOwnership(Ljava/lang/String;)V

    .line 298
    :cond_3
    new-instance p1, Ljava/io/File;

    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IAssetGroup;->getMainAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static updateFileNameAndExtensionOfAssetOnDisk(Lcom/amazon/kindle/services/download/IBookAsset;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 385
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    sget-object p2, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 387
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".ast"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 389
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".kfx"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 392
    :goto_0
    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-object p0
.end method
