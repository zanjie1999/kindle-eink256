.class public Lcom/amazon/kindle/socialsharing/util/BookCoverHelper;
.super Ljava/lang/Object;
.source "BookCoverHelper.java"


# static fields
.field private static final COVER_FILE_EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/util/BookCoverHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/BookCoverHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prepareCoverImage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 41
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getCoverManager()Lcom/amazon/kindle/krx/cover/ICoverManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;->THUMBNAIL:Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/krx/cover/ICoverManager;->getCoverFilePath(Ljava/lang/String;Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Ljava/lang/String;

    move-result-object p1

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/FileHelper;->isExternalStorageWritable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    sget-object p0, Lcom/amazon/kindle/socialsharing/util/BookCoverHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot copy cover image to external cache storage. Thus not attaching book cover for book "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    if-nez p0, :cond_1

    .line 56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    :goto_0
    const-string v1, ".jpg"

    .line 59
    invoke-static {p2, v1, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    .line 63
    invoke-static {v0, p0}, Lcom/amazon/kindle/socialsharing/util/FileHelper;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 65
    invoke-static {p0}, Lcom/amazon/kindle/socialsharing/util/FileHelper;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    .line 70
    sget-object p2, Lcom/amazon/kindle/socialsharing/util/BookCoverHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Error happening when dealing with files"

    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method
