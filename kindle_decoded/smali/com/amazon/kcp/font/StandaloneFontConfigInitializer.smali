.class public Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;
.super Lcom/amazon/kcp/font/FontConfigInitializer;
.source "StandaloneFontConfigInitializer.java"


# static fields
.field private static final CN_DEFAULT_FONT_PKG:Ljava/lang/String; = "CNDefaultFont.zip"

.field private static final FONT_CACHE_DIRECTORY_NAME:Ljava/lang/String; = "font-cache"

.field private static final FONT_FILES:[Ljava/lang/String;

.field private static final REMOVED_FONT_FILES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 61

    .line 40
    const-class v0, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->TAG:Ljava/lang/String;

    const-string v0, "PMN Caecilia LT.ttf"

    const-string v1, "Helvetica Neue WGL.ttf"

    .line 45
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->REMOVED_FONT_FILES:[Ljava/lang/String;

    const-string v1, "Baskerville.ttf"

    const-string v2, "Caecilia.ttf"

    const-string v3, "Droid Serif.ttf"

    const-string v4, "Georgia.ttf"

    const-string v5, "Helvetica.ttf"

    const-string v6, "LucidaSansWGL.ttf"

    const-string v7, "Palatino.ttf"

    const-string v8, "Bookerly-Regular.ttf"

    const-string v9, "Bookerly-Bold.ttf"

    const-string v10, "Bookerly-BoldItalic.ttf"

    const-string v11, "Bookerly-RegularItalic.ttf"

    const-string v12, "Amazon-Ember-Light.ttf"

    const-string v13, "Amazon-Ember-Regular.ttf"

    const-string v14, "Amazon-Ember-Medium.ttf"

    const-string v15, "Amazon-Ember-RegularItalic.ttf"

    const-string v16, "Georgia-Bold.ttf"

    const-string v17, "Georgia-Italic.ttf"

    const-string v18, "Georgia-BoldItalic.ttf"

    const-string v19, "Helvetica-Bold.ttf"

    const-string v20, "Helvetica-BoldItalic.ttf"

    const-string v21, "Helvetica-Italic.ttf"

    const-string v22, "Baskerville-Bold.ttf"

    const-string v23, "Baskerville-BoldItalic.ttf"

    const-string v24, "Baskerville-Italic.ttf"

    const-string v25, "Caecilia-Bold.ttf"

    const-string v26, "Caecilia-BoldItalic.ttf"

    const-string v27, "Caecilia-Italic.ttf"

    const-string v28, "DiwanMuna-Regular.ttf"

    const-string v29, "DiwanMuna-Bold.ttf"

    const-string v30, "LucidaSansWGL-Regular.ttf"

    const-string v31, "LucidaSansWGL-BoldItalic.ttf"

    const-string v32, "LucidaSansWGL-Italic.ttf"

    const-string v33, "LucidaSansWGL-Bold.ttf"

    const-string v34, "Palatino-Bold.ttf"

    const-string v35, "Palatino-BoldItalic.ttf"

    const-string v36, "Palatino-Italic.ttf"

    const-string v37, "DroidSerif-Bold.ttf"

    const-string v38, "DroidSerif-BoldItalic.ttf"

    const-string v39, "DroidSerif-Italic.ttf"

    const-string v40, "NotoNaskh-Regular.ttf"

    const-string v41, "NotoNaskh-Bold.ttf"

    const-string v42, "NotoSansGujarati-Regular.ttf"

    const-string v43, "NotoSansGujarati-Bold.ttf"

    const-string v44, "NotoSansDevanagari-Regular.ttf"

    const-string v45, "NotoSansDevanagari-Bold.ttf"

    const-string v46, "NotoSansMalayalam-Regular.ttf"

    const-string v47, "NotoSansMalayalam-Bold.ttf"

    const-string v48, "NotoSansTamil-Regular.ttf"

    const-string v49, "NotoSansTamil-Bold.ttf"

    const-string v50, "SakkalKitab-Regular.ttf"

    const-string v51, "SakkalKitab-Bold.ttf"

    const-string v52, "OpenDyslexic-Regular.otf"

    const-string v53, "OpenDyslexic-Bold.otf"

    const-string v54, "OpenDyslexic-BoldItalic.otf"

    const-string v55, "OpenDyslexic-Italic.otf"

    const-string v56, "Roboto-Bold.ttf"

    const-string v57, "Roboto-Italic.ttf"

    const-string v58, "Roboto-Light.ttf"

    const-string v59, "Roboto-Medium.ttf"

    const-string v60, "Roboto-Regular.ttf"

    .line 50
    filled-new-array/range {v1 .. v60}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->FONT_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/amazon/kcp/font/FontConfigInitializer;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/amazon/kcp/font/FontConfigInitializer;->context:Landroid/content/Context;

    return-void
.end method

.method private copyAssetToInternalStorage(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->LeakedClosableViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/font/FontConfigInitializer;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/amazon/kcp/font/FontConfigInitializer;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 197
    invoke-static {v0, p1}, Lcom/amazon/kcp/util/IOUtils;->writeInToOut(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void
.end method

.method private copyCNDefaultFontFromAssetsToFontDir()V
    .locals 7

    const-string v0, "CNDefaultFont.zip"

    const/4 v1, 0x0

    .line 208
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/font/FontConfigInitializer;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v3

    .line 215
    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/kcp/font/FontUtils;->getFontDir(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 219
    sget-object v0, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->TAG:Ljava/lang/String;

    const-string v1, "Unable to create location for CN default font storage"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copy font from asset to target directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    invoke-static {v2, v4}, Lcom/amazon/kcp/util/IOUtils;->writeInToFile(Ljava/io/InputStream;Ljava/lang/String;)I

    .line 225
    new-instance v4, Lcom/amazon/kcp/font/FontExtractor;

    invoke-direct {v4, v3, v0, v1}, Lcom/amazon/kcp/font/FontExtractor;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/callback/ICallback;)V

    .line 226
    invoke-virtual {v4}, Lcom/amazon/kcp/font/FontExtractor;->execute()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :goto_0
    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    .line 210
    :catch_2
    :try_start_2
    sget-object v0, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->TAG:Ljava/lang/String;

    const-string v2, "CN default font is not in assets folder, skip the copy process"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    .line 229
    :goto_1
    :try_start_3
    sget-object v2, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->TAG:Ljava/lang/String;

    const-string v3, "Cannot copy CN default font from assets directory to target directory"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 231
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    :goto_2
    return-void

    :goto_3
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 232
    throw v0
.end method

.method private shouldCopyCNDefaultFont()Z
    .locals 2

    .line 240
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->MYINGHEI:Lcom/mobipocket/android/drawing/FontFamily;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/font/FontUtils;->getFontPath(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 241
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private updateFontCacheForMobi()V
    .locals 1

    .line 276
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 278
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isMobiMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->resetFontCache()V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized initializeFonts()V
    .locals 5

    monitor-enter p0

    .line 125
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kcp/font/FontConfigInitializer;->isFontConfigInitialized:Z

    if-nez v0, :cond_2

    const-string v0, "/system/fonts"

    .line 126
    iget-object v1, p0, Lcom/amazon/kcp/font/FontConfigInitializer;->context:Landroid/content/Context;

    .line 127
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/amazon/kcp/font/FontUtils;->getFontDir(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/kcp/font/FontConfigInitializer;->context:Landroid/content/Context;

    .line 129
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "font-cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/krf/platform/KRF;->initFonts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->wasAppUpdated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->wasAndroidUpdated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/KRFExperimentUtils;->isKRFLibLoadWeblabEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    invoke-static {}, Lcom/amazon/krf/platform/KRF;->updateFontConfigCache()Z

    .line 136
    :cond_1
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer$1;-><init>(Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/amazon/kcp/font/FontConfigInitializer;->isFontConfigInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBookOpen(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 284
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->initializeFonts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onFontDelete()V
    .locals 0

    .line 253
    invoke-super {p0}, Lcom/amazon/kcp/font/FontConfigInitializer;->onFontDelete()V

    .line 255
    invoke-direct {p0}, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->updateFontCacheForMobi()V

    return-void
.end method

.method public onFontDownload()V
    .locals 0

    .line 246
    invoke-super {p0}, Lcom/amazon/kcp/font/FontConfigInitializer;->onFontDownload()V

    .line 248
    invoke-direct {p0}, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->updateFontCacheForMobi()V

    return-void
.end method

.method public unpackBundledFonts()V
    .locals 8

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    sget-object v1, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->FONT_FILES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 153
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/amazon/kcp/font/FontConfigInitializer;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 155
    :try_start_0
    invoke-direct {p0, v5}, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->copyAssetToInternalStorage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 157
    :catch_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 163
    sget-object v1, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->TAG:Ljava/lang/String;

    const-string v2, "************************************************************************************"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v1, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        unpackBundledFonts - failed to copy font files: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-static {v5, v0}, Lcom/amazon/dcp/framework/StringUtils;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->shouldCopyCNDefaultFont()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    invoke-direct {p0}, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->copyCNDefaultFontFromAssetsToFontDir()V

    .line 179
    :cond_3
    sget-object v0, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->REMOVED_FONT_FILES:[Ljava/lang/String;

    array-length v1, v0

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v2, v0, v3

    .line 180
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/amazon/kcp/font/FontConfigInitializer;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 182
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z
    .locals 2

    .line 262
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getCurrentBookLanguage()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/amazon/kcp/font/FontUtils;->supportSeparatelyFontsDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->supportFont(Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 266
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/font/FontUtils;->getFontPath(Lcom/mobipocket/android/drawing/FontFamily;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 269
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/kcp/font/FontConfigInitializer;->validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result p1

    return p1
.end method
