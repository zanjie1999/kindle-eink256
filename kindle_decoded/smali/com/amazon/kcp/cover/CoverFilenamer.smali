.class public Lcom/amazon/kcp/cover/CoverFilenamer;
.super Ljava/lang/Object;
.source "CoverFilenamer.java"

# interfaces
.implements Lcom/amazon/kindle/cover/ICoverFilenamer;


# instance fields
.field private coverCacheDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/amazon/kcp/cover/CoverFilenamer;->coverCacheDirectory:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverFilenamer;->coverCacheDirectory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCoverFilename(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 34
    invoke-static {}, Lcom/amazon/kindle/cover/BackupCover;->getInstance()Lcom/amazon/kindle/cover/BackupCover;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/amazon/kindle/cover/BackupCover;->getPath(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/cover/CoverImageService;->getCoverId(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/cover/CoverFilenamer;->coverCacheDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    if-eqz p1, :cond_2

    .line 49
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 50
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 54
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCoverFilename(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 25
    invoke-static {}, Lcom/amazon/kindle/cover/BackupCover;->getInstance()Lcom/amazon/kindle/cover/BackupCover;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/amazon/kindle/cover/BackupCover;->getPath(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/cover/CoverFilenamer;->getCoverFilename(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
