.class public Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;
.super Ljava/lang/Object;
.source "GlossSidecarDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private book:Lcom/amazon/kindle/krx/content/IBook;

.field private context:Landroid/content/Context;

.field private guid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->context:Landroid/content/Context;

    .line 325
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->book:Lcom/amazon/kindle/krx/content/IBook;

    .line 326
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->guid:Ljava/lang/String;

    return-void
.end method

.method public static createGlossSidecar()Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;
    .locals 1

    .line 330
    new-instance v0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;

    invoke-direct {v0}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->context:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 353
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_3

    .line 358
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->guid:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v1

    .line 360
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarFileNameWithAsinAndGuid(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v2, v3, v1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarFileWithAsinAndGuid(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 362
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 363
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DBFile found with Asin and GUID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v5}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 368
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarFileWithAsin(Lcom/amazon/kindle/krx/content/IBook;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 369
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 370
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBFile found with Asin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 374
    :cond_2
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "book"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withBook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-object p0
.end method

.method public withContext(Landroid/content/Context;)Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public withGuid(Ljava/lang/String;)Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->guid:Ljava/lang/String;

    return-object p0
.end method
