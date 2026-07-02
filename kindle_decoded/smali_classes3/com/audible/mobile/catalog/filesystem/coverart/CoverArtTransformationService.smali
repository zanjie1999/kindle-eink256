.class public final Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;
.super Landroidx/core/app/JobIntentService;
.source "CoverArtTransformationService.java"


# static fields
.field private static final COMPRESSION_QUALITY:I = 0x64

.field public static final EXTRA_ASIN:Ljava/lang/String;

.field public static final EXTRA_LOCATION_URI:Ljava/lang/String;

.field private static final EXTRA_PREFIX:Ljava/lang/String;

.field static final JOB_ID:I = 0x3f704ca0

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private coverArtTypeFactory:Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->LOGGER:Lorg/slf4j/Logger;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".coverart.transformation.extra"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->EXTRA_PREFIX:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->EXTRA_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "asin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->EXTRA_ASIN:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->EXTRA_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "location.uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->EXTRA_LOCATION_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 84
    const-class v0, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;

    const v1, 0x3f704ca0

    invoke-static {p0, v0, v1, p1}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method private rescaleBitmap(Landroid/content/Context;Ljava/io/File;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/audio/metadata/CoverArtType;I)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, p1, p3, p5}, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->constructFileName(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;I)Ljava/lang/String;

    move-result-object p5

    invoke-direct {v0, v1, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 133
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 135
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 136
    invoke-interface {p4}, Lcom/audible/mobile/audio/metadata/CoverArtType;->getResourceId()I

    move-result p2

    invoke-static {p1, p2, v1}, Lcom/audible/mobile/util/BitmapUtils;->rescaleImage(Landroid/content/Context;ILjava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    .line 138
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 139
    sget-object p2, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Unable to create scaled image for asin {} and cover art type {}"

    invoke-interface {p2, v1, p3, p4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 156
    invoke-static {p5}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object p5

    .line 143
    :cond_1
    :try_start_2
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 144
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 147
    sget-object v1, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Unable to compress asin {} and coverArtTYpe {} to output stream"

    invoke-interface {v1, v2, p3, p4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    invoke-static {p2}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_2

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object p5

    .line 156
    :cond_3
    invoke-static {p2}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_4

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception p3

    move-object p5, p2

    move-object p2, p3

    goto :goto_1

    :catch_0
    move-exception p3

    move-object p5, p2

    move-object p2, p3

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, p5

    goto :goto_1

    :catch_2
    move-exception p2

    move-object p1, p5

    .line 153
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 154
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    .line 156
    :goto_1
    invoke-static {p5}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_5

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 161
    :cond_5
    throw p2
.end method

.method private updateCoverArtFor(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;Ljava/io/File;Ljava/lang/String;Lcom/audible/mobile/audio/metadata/CoverArtType;)V
    .locals 8

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {p5}, Lcom/audible/mobile/audio/metadata/CoverArtType;->getResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    .line 105
    :try_start_0
    invoke-direct/range {v2 .. v7}, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->rescaleBitmap(Landroid/content/Context;Ljava/io/File;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/audio/metadata/CoverArtType;I)Ljava/io/File;

    move-result-object p3

    if-nez p3, :cond_0

    .line 107
    sget-object p1, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->LOGGER:Lorg/slf4j/Logger;

    const-string p3, "Rescaled cover-art file is null, returning"

    invoke-interface {p1, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_0
    new-instance p5, Landroid/content/ContentValues;

    invoke-direct {p5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "ASIN"

    .line 111
    invoke-interface {p2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FILE_TYPE"

    .line 112
    sget-object v1, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->COVER_ART:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FILE_SUB_TYPE"

    .line 113
    invoke-virtual {p5, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FILE_LOCATION_URI"

    .line 114
    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p1}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$CatalogFiles;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1, p5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    sget-object p3, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->LOGGER:Lorg/slf4j/Logger;

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p5, v0

    const/4 p2, 0x1

    aput-object p4, p5, p2

    const/4 p2, 0x2

    aput-object p1, p5, p2

    const-string p1, "Ran out of memory attempting to generate cover art for asin {} with subtype of {}"

    invoke-interface {p3, p1, p5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 117
    sget-object p2, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->LOGGER:Lorg/slf4j/Logger;

    const-string p3, "Unable to save cover art."

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected constructFileName(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;I)Ljava/lang/String;
    .locals 3

    .line 97
    sget v0, Lcom/audible/mobile/catalog/filesystem/R$string;->localCoverArtDownloadDestinationPattern:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 59
    invoke-super {p0}, Landroidx/core/app/JobIntentService;->onCreate()V

    .line 60
    invoke-static {p0}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v0

    const-class v1, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTypeFactory;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTypeFactory;

    iput-object v0, p0, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->coverArtTypeFactory:Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTypeFactory;

    return-void
.end method

.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 11

    .line 66
    sget-object v0, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->EXTRA_ASIN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/Asin;

    .line 67
    sget-object v1, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->EXTRA_LOCATION_URI:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 68
    invoke-static {p1}, Lcom/audible/mobile/util/UriUtils;->uriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 70
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 72
    iget-object v1, p0, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->coverArtTypeFactory:Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTypeFactory;

    invoke-interface {v1}, Lcom/audible/mobile/framework/Factory;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [Lcom/audible/mobile/audio/metadata/CoverArtType;

    array-length v9, v8

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_0

    aget-object v6, v8, v10

    .line 73
    invoke-interface {v6}, Lcom/audible/mobile/audio/metadata/CoverArtType;->name()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->updateCoverArtFor(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;Ljava/io/File;Ljava/lang/String;Lcom/audible/mobile/audio/metadata/CoverArtType;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
