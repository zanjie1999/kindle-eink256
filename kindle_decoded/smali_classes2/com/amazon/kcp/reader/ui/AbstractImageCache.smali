.class public abstract Lcom/amazon/kcp/reader/ui/AbstractImageCache;
.super Ljava/lang/Object;
.source "AbstractImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/AbstractImageCache$Observer;
    }
.end annotation


# static fields
.field protected static final PENDING_SERVICE_DRAWABLE:Landroid/graphics/drawable/Drawable;

.field private static final SHA_1:Ljava/lang/String; = "SHA-1"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field protected cacheDir:Ljava/io/File;

.field protected thumbnailCachePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->PENDING_SERVICE_DRAWABLE:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->cacheDir:Ljava/io/File;

    return-void
.end method

.method protected static createThumbnailCachePrefix(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;
    .locals 2

    .line 95
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    .line 96
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 101
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->createThumbnailCachePrefixFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createThumbnailCachePrefixFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "ThumbnailScrubber"

    :try_start_0
    const-string v1, "SHA-1"

    .line 66
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 67
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 68
    new-instance p0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {p0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "Could not get bytes out of PDF info strings"

    .line 73
    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v1, "Could not create MessageDigest"

    .line 70
    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string/jumbo p0, "unknown"

    .line 76
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract configureAndCreateSics(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;III)V
.end method

.method abstract drawCachedThumbnail(IILandroid/widget/ImageView;)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method getCachedBitmapPath(I)Ljava/io/File;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->thumbnailCachePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_bitmap.jpg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getThumbnailCachePrefix()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->thumbnailCachePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public abstract observeView(ILcom/amazon/kcp/reader/ui/AbstractImageCache$Observer;)V
.end method

.method public abstract reset(I)V
.end method

.method public abstract runWhenReady(Ljava/lang/Runnable;)V
.end method

.method abstract shutdown()V
.end method

.method abstract updateCache(I)V
.end method
