.class public Lcom/amazon/kcp/reader/provider/BookImageProviderClient;
.super Ljava/lang/Object;
.source "BookImageProviderClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/provider/BookImageProviderClient$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.reader.provider.BookImageProviderClient"


# instance fields
.field private final resolver:Landroid/content/ContentResolver;

.field private savedDocumentInfoBundle:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/Future<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderClient;->savedDocumentInfoBundle:Ljava/util/concurrent/atomic/AtomicReference;

    .line 69
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderClient;->resolver:Landroid/content/ContentResolver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/provider/BookImageProviderClient$1;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/amazon/kcp/reader/provider/BookImageProviderClient;-><init>()V

    return-void
.end method

.method private createDocumentInfoBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .line 338
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 339
    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DOCUMENT_PATH:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 342
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecurity()Lcom/mobipocket/android/library/reader/AndroidSecurity;

    move-result-object v1

    .line 344
    sget-object v2, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->ACCOUNT_SECRETS:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecurity()Lcom/mobipocket/android/library/reader/AndroidSecurity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobipocket/android/library/reader/AndroidSecurity;->getAccountSecrets()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 345
    sget-object v2, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DSN:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mobipocket/android/library/reader/AndroidSecurity;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->VOUCHER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    .line 348
    invoke-direct {p0, p1, v2}, Lcom/amazon/kcp/reader/provider/BookImageProviderClient;->getAssetFilenames(Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 347
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 350
    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->CONTAINER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->TOAD_ASSET:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    .line 351
    invoke-direct {p0, p1, v2}, Lcom/amazon/kcp/reader/provider/BookImageProviderClient;->getAssetFilenames(Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;)Ljava/util/List;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 350
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private getAssetFilenames(Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;)Ljava/util/List;
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object p1

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getBookIdForMainContentFile(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    .line 262
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    .line 265
    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 266
    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 267
    invoke-interface {p1, v1, p2, p2, v3}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getAssets(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 269
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne v4, v5, :cond_1

    .line 272
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    .line 273
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v4

    const/4 v5, 0x0

    .line 274
    invoke-static {v4, v1, v5}, Lcom/amazon/kindle/io/FileSystemHelper;->getDownloadPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Z)Ljava/lang/String;

    move-result-object v5

    .line 276
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v3, v6, :cond_0

    .line 281
    invoke-static {v4}, Lcom/amazon/kindle/io/FileSystemHelper;->getOldSampleDownloadPath(Lcom/amazon/kindle/io/IFileConnectionFactory;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v5

    .line 284
    :cond_1
    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 286
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_2
    sget-object p2, Lcom/amazon/kcp/reader/provider/BookImageProviderClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset file does not found"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private getFilePathFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 334
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DOCUMENT_PATH:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static instance()Lcom/amazon/kcp/reader/provider/BookImageProviderClient;
    .locals 1

    .line 79
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageProviderClient$SingletonHolder;->access$100()Lcom/amazon/kcp/reader/provider/BookImageProviderClient;

    move-result-object v0

    return-object v0
.end method

.method private unwrapFutureBundle(Ljava/util/concurrent/Future;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 325
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 327
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProviderClient;->TAG:Ljava/lang/String;

    const-string v1, "Exception thrown while retrieving saved document bundle"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getDocumentInfoBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderClient;->savedDocumentInfoBundle:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/provider/BookImageProviderClient;->unwrapFutureBundle(Ljava/util/concurrent/Future;)Landroid/os/Bundle;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/provider/BookImageProviderClient;->getFilePathFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/provider/BookImageProviderClient;->createDocumentInfoBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
