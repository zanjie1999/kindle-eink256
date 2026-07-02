.class public Lcom/amazon/kcp/wordwise/plugin/WordwiseContentUpdateHandler;
.super Ljava/lang/Object;
.source "WordwiseContentUpdateHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/update/IContentUpdateHandler;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WORDWISE_ERROR_CODE:Ljava/lang/String; = "FAILED_PLUGIN_WORDWISE_RETRYABLE"


# instance fields
.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kcp/wordwise/plugin/WordwiseContentUpdateHandler;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordwiseContentUpdateHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/plugin/WordwiseContentUpdateHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method private truncateInstanceLevelOverrides(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 103
    invoke-static {}, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->createGlossOverride()Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->withBook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/plugin/WordwiseContentUpdateHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->withSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;

    .line 106
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->build()Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;->truncateInstanceLevelOverride()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/plugin/WordwiseContentUpdateHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordwiseContentUpdateHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Override db for book "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getPluginUpdateState(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;
    .locals 1

    .line 48
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseVisible()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_2

    .line 52
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->sidecarExists(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 55
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->READY:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1

    .line 61
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object p4

    .line 62
    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p1, v0}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarFileWithAsinAndGuid(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    .line 63
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_4

    if-eqz v0, :cond_4

    .line 66
    new-instance p3, Ljava/io/File;

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarDirPath(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 69
    :try_start_0
    invoke-static {p1, p3, p4}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "FAILED_PLUGIN_WORDWISE_RETRYABLE"

    .line 71
    invoke-static {p1}, Lcom/amazon/kindle/krx/update/PluginUpdateState;->fromFailureCode(Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;

    move-result-object p1

    return-object p1

    .line 75
    :cond_3
    :goto_1
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->READY:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1

    .line 77
    :cond_4
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->WAIT:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1

    .line 49
    :cond_5
    :goto_2
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->READY:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1
.end method

.method public onContentUpdateComplete(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    const/4 p3, 0x0

    if-eqz p5, :cond_0

    .line 85
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object p2

    const/4 p4, 0x1

    invoke-virtual {p2, p1, p4, p3}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->removeWordWiseSidecarFile(Lcom/amazon/kindle/krx/content/IBook;ZZ)V

    .line 87
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->overrideExists(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 88
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/plugin/WordwiseContentUpdateHandler;->truncateInstanceLevelOverrides(Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p3}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->removeWordWiseSidecarFile(Lcom/amazon/kindle/krx/content/IBook;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onContentUpdateStart(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
