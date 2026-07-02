.class public abstract Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;
.super Ljava/lang/Object;
.source "AbstractFontConfigurationProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFallbackFontConfigFile(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Ljava/io/File;
.end method

.method public abstract getFallbackFontConfigFile(Ljava/lang/String;)Ljava/io/File;
.end method

.method public getFallbackFontConfigPath(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Ljava/lang/String;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;->getFallbackFontConfigFile(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getFallbackFontConfigPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;->getFallbackFontConfigFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public abstract getFontConfigFile(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/io/File;
.end method

.method public abstract getFontConfigFile(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Ljava/io/File;
.end method

.method public abstract getFontConfigFile(Ljava/lang/String;)Ljava/io/File;
.end method

.method public getFontConfigPath(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;->getFontConfigFile(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getFontConfigPath(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;->getFontConfigFile(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getFontConfigPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;->getFontConfigFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method
