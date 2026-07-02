.class public Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;
.super Ljava/lang/Object;
.source "GlossDictionaryDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dictionaryId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;->context:Landroid/content/Context;

    .line 317
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;->dictionaryId:Ljava/lang/String;

    return-void
.end method

.method public static createGlossDictionary()Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;
    .locals 1

    .line 321
    new-instance v0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;

    invoke-direct {v0}, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;
    .locals 5
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

    .line 336
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;->dictionaryId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 344
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;->dictionaryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getGlossDictionaryFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;->dictionaryId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getGlossDictionaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    new-instance v0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 347
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB file does not exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 340
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dictionaryId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withContext(Landroid/content/Context;)Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;->dictionaryId:Ljava/lang/String;

    return-object p0
.end method
