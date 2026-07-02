.class public Lcom/amazon/kindle/rendering/KRIFContentLoader;
.super Ljava/lang/Object;
.source "KRIFContentLoader.java"

# interfaces
.implements Lcom/amazon/kindle/content/loader/IContentLoader;


# static fields
.field private static KRF_INITIALIZED:Z = false

.field private static SUPPORTED_KRF_EXTENSIONS:Ljava/util/Collection; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final YJR_BYTES_PER_PIXEL:I = 0x23


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/amazon/kindle/rendering/KRIFContentLoader;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFContentLoader;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFContentLoader;->SUPPORTED_KRF_EXTENSIONS:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 60
    sput-boolean v0, Lcom/amazon/kindle/rendering/KRIFContentLoader;->KRF_INITIALIZED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addSupportedExtensions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFContentLoader;->SUPPORTED_KRF_EXTENSIONS:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static createBookItemFromFile(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/rendering/KRIFBookItem;
    .locals 3

    .line 155
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->initializeKRF()V

    .line 156
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    .line 157
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v1

    .line 158
    new-instance v2, Lcom/amazon/kindle/rendering/KRIFBookItem;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/amazon/kindle/rendering/KRIFBookItem;-><init>(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V
    :try_end_0
    .catch Lcom/amazon/krf/exception/KRFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 160
    :goto_0
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFContentLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open KRIF book from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method private static createContentMetadataFromBookItem(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/kindle/content/UserContent;Lcom/amazon/kindle/model/content/ContentState;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 15

    .line 168
    new-instance v12, Lcom/amazon/kindle/content/LocalContent;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getFileLastModified()J

    move-result-wide v2

    .line 170
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getAmzGuid()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getWatermark()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isEncrypted()Z

    move-result v6

    .line 173
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v7

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/model/content/ContentState;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/amazon/kindle/content/ContentSizeUtil;->getContentSize(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_0

    :cond_0
    const-wide/16 v8, -0x1

    :goto_0
    move-object v0, v12

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/content/LocalContent;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/model/content/ContentOwnershipType;J)V

    const/4 v5, 0x0

    .line 179
    new-instance v14, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    .line 181
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getAuthor()Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getPublicationDateInMillis()J

    move-result-wide v6

    .line 185
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getBaseLanguage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v0, v14

    move-object/from16 v11, p2

    move-object/from16 v13, p1

    invoke-direct/range {v0 .. v13}, Lcom/amazon/kindle/content/ContentMetadata;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZILcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/content/LocalContent;Lcom/amazon/kindle/content/UserContent;)V

    .line 191
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setTitlePronunciation(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getAuthorPronunciation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setAuthorPronunciation(Ljava/lang/String;)V

    return-object v14
.end method

.method private static createDefaultUserContent(Ljava/lang/String;)Lcom/amazon/kindle/content/UserContent;
    .locals 15

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 204
    new-instance v14, Lcom/amazon/kindle/content/UserContent;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-wide/16 v12, 0x0

    move-object v0, v14

    move-object v1, p0

    invoke-direct/range {v0 .. v13}, Lcom/amazon/kindle/content/UserContent;-><init>(Ljava/lang/String;JIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v14
.end method

.method public static declared-synchronized initializeKRF()V
    .locals 9

    const-class v0, Lcom/amazon/kindle/rendering/KRIFContentLoader;

    monitor-enter v0

    .line 245
    :try_start_0
    sget-boolean v1, Lcom/amazon/kindle/rendering/KRIFContentLoader;->KRF_INITIALIZED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 246
    monitor-exit v0

    return-void

    .line 248
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :try_start_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/renderingmodule/R$bool;->use_bpp_for_yjr_cache_value:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 253
    invoke-static {v1}, Lcom/amazon/kcp/debug/YJCacheSizeDebug;->getYJCacheSizeForMainProcess(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x0

    if-ltz v3, :cond_1

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Overriding YJ Cache Size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 257
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/renderingmodule/R$integer;->yjr_reader_cache_size_maximum:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 258
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/amazon/kindle/renderingmodule/R$integer;->yjr_reader_cache_size_minimum:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const-string v5, "display"

    .line 262
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 263
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 264
    invoke-virtual {v5, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 268
    iget v5, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    mul-int v5, v5, v6

    mul-int/lit8 v5, v5, 0x23

    .line 269
    div-int/lit16 v5, v5, 0x400

    .line 271
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calculated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " kb for YJ Cache Size."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v3, v2

    goto :goto_0

    .line 277
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/renderingmodule/R$integer;->yjr_reader_cache_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using Default YJ Cache Size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 282
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {}, Lcom/amazon/kindle/rendering/RenderingModule;->getDefaultResourceBundleFilePath()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {}, Lcom/amazon/kindle/rendering/RenderingModule;->getReaderResourceBundleFilePath()Ljava/lang/String;

    move-result-object v5

    .line 289
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isReleaseBuild()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_4

    const-string v6, "0"

    const-string v8, "debug.krf.accessibility"

    .line 290
    invoke-static {v8}, Lcom/amazon/kindle/util/SystemProperties;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 291
    :goto_1
    invoke-static {v6}, Lcom/amazon/kcp/debug/DebugUtils;->setKrfAccessibilityEnabled(Z)V

    :cond_4
    const-string v6, "yj.max_cache_size_kb"

    .line 294
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/amazon/krf/platform/KRF;->setGlobalVariable(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "yjanalytics.analytics_disabled"

    .line 298
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/krf/platform/KRF;->setGlobalVariable(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "krf.allow_vs"

    .line 300
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/krf/platform/KRF;->setGlobalVariable(Ljava/lang/String;Ljava/lang/String;)Z

    .line 304
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/amazon/kcp/font/FontConfigInitializer;->onBookOpen(Ljava/lang/String;)V

    .line 306
    invoke-static {v2}, Lcom/amazon/krf/platform/KRF;->initKRF(Ljava/util/List;)V

    .line 308
    invoke-static {v1}, Lcom/amazon/krf/platform/KRF;->addResourceBundle(Ljava/lang/String;)V

    .line 309
    invoke-static {v5}, Lcom/amazon/krf/platform/KRF;->addResourceBundle(Ljava/lang/String;)V

    .line 310
    sput-boolean v7, Lcom/amazon/kindle/rendering/KRIFContentLoader;->KRF_INITIALIZED:Z
    :try_end_2
    .catch Lcom/amazon/krf/exception/KRFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 312
    :try_start_3
    sget-object v2, Lcom/amazon/kindle/rendering/KRIFContentLoader;->TAG:Ljava/lang/String;

    const-string v3, "Could not initialize KRF Direct"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isBookSupported(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;)Z
    .locals 3

    .line 237
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    .line 238
    invoke-static {p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 240
    :goto_0
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-eq p0, v0, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getSupportedExtensions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFContentLoader;->SUPPORTED_KRF_EXTENSIONS:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public loadContent(Ljava/lang/String;Ljava/io/File;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 3

    .line 83
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/system/io/ZippedFileUtils;->isZippedFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {p2, p0}, Lcom/amazon/kindle/content/loader/APFContentHandler;->handleZippedContent(Ljava/io/File;Lcom/amazon/kindle/content/loader/IContentLoader;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFContentLoader;->TAG:Ljava/lang/String;

    const-string p2, "zipped file is not KRIF supported"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 97
    :cond_1
    :goto_0
    invoke-static {p2, v1}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->createBookItemFromFile(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/rendering/KRIFBookItem;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 98
    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->isBookSupported(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 101
    :cond_2
    invoke-static {p1}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->createDefaultUserContent(Ljava/lang/String;)Lcom/amazon/kindle/content/UserContent;

    move-result-object p1

    .line 102
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    invoke-static {p2, p1, v0}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->createContentMetadataFromBookItem(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/kindle/content/UserContent;Lcom/amazon/kindle/model/content/ContentState;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->updateMetadata(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/rendering/KRIFBookItem;)V

    .line 104
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/content/ContentMetadata;->setLocalBook(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    return-object p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public loadContent(Ljava/lang/String;Ljava/io/File;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 3

    .line 111
    invoke-static {p2, p4}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->createBookItemFromFile(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/rendering/KRIFBookItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->isBookSupported(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bookId/ASIN mismatch between todo "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-interface {p4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and krf pulled asin "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    :cond_1
    invoke-virtual {v0, p4}, Lcom/amazon/kindle/rendering/KRIFBookItem;->resolveWithExistingBookId(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 126
    invoke-static {p1}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->createDefaultUserContent(Ljava/lang/String;)Lcom/amazon/kindle/content/UserContent;

    move-result-object p1

    .line 127
    invoke-static {v0, p1, p3}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->createContentMetadataFromBookItem(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/kindle/content/UserContent;Lcom/amazon/kindle/model/content/ContentState;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->updateMetadata(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/rendering/KRIFBookItem;)V

    .line 129
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setLocalBook(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    return-object p1

    .line 114
    :cond_2
    :goto_0
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFContentLoader;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bookItem is null, file "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadContent(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 3

    .line 68
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFBookItem;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    .line 73
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kindle/rendering/KRIFBookItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V

    .line 74
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setLocalBook(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    .line 75
    invoke-static {}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->initializeKRF()V

    :cond_0
    return-void
.end method

.method public resolveContentLoaderConflict(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;)Z
    .locals 0

    .line 219
    invoke-static {p1, p2}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->isBookSupported(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public resolveContentLoaderConflict(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 1

    .line 214
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->isBookSupported(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method updateMetadata(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/rendering/KRIFBookItem;)V
    .locals 1

    .line 141
    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setTitlePronunciation(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getAuthorPronunciation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setAuthorPronunciation(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setLanguage(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getParentAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setParentAsin(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setContentType(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->restoreBookMetadataFromContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-void
.end method
