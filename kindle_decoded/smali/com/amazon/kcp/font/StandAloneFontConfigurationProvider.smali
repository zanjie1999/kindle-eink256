.class public Lcom/amazon/kcp/font/StandAloneFontConfigurationProvider;
.super Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;
.source "StandAloneFontConfigurationProvider.java"


# instance fields
.field private final fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/font/StandAloneFontConfigurationProvider;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    return-void
.end method


# virtual methods
.method public getFallbackFontConfigFile(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Ljava/io/File;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFallbackFontConfigFile(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFontConfigFile(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/io/File;
    .locals 0

    .line 60
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/font/StandAloneFontConfigurationProvider;->getFontConfigFile(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getFontConfigFile(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Ljava/io/File;
    .locals 2

    .line 49
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v0, v1, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/font/StandAloneFontConfigurationProvider;->getFontConfigFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getFontConfigFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 33
    invoke-static {p1}, Lcom/amazon/kcp/font/FontUtils;->getBaseLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/font/StandAloneFontConfigurationProvider;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-static {v0, p1}, Lcom/amazon/kcp/font/FontUtils;->getFontConfigurationPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
