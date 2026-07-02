.class public Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;
.super Ljava/lang/Object;
.source "GlossOverrideDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private book:Lcom/amazon/kindle/krx/content/IBook;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 358
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 359
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method

.method public static createGlossOverride()Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;
    .locals 1

    .line 363
    new-instance v0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;

    invoke-direct {v0}, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_1

    .line 384
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseOverrideFileName(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseOverrideFile(Lcom/amazon/kindle/krx/content/IBook;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 389
    new-instance v0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    return-object v0

    .line 387
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sdk"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "book"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withBook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-object p0
.end method

.method public withSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method
