.class public Lcom/amazon/xray/plugin/util/BookUtil;
.super Ljava/lang/Object;
.source "BookUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.plugin.util.BookUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getAsin()Ljava/lang/String;
    .locals 2

    .line 51
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 56
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method public static getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 27
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    return-object v0
.end method

.method public static getFpr()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 3

    .line 73
    invoke-static {}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->getCurrentPageEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/amazon/xray/plugin/util/BookUtil;->TAG:Ljava/lang/String;

    const-string v1, "Current page end is null; cannot get furthest page read; returning null"

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-nez v1, :cond_1

    .line 81
    sget-object v1, Lcom/amazon/xray/plugin/util/BookUtil;->TAG:Ljava/lang/String;

    const-string v2, "Current book is null; cannot get furthest page read; returning current page end"

    invoke-static {v1, v2}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 85
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getLocalBookData()Lcom/amazon/kindle/krx/content/ILocalBookData;

    move-result-object v1

    if-nez v1, :cond_2

    .line 87
    sget-object v1, Lcom/amazon/xray/plugin/util/BookUtil;->TAG:Ljava/lang/String;

    const-string v2, "Local book data is null, cannot get furthest page read; returning current page end"

    invoke-static {v1, v2}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 91
    :cond_2
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/ILocalBookData;->getFurtherestPositionRead()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-nez v1, :cond_3

    .line 93
    sget-object v1, Lcom/amazon/xray/plugin/util/BookUtil;->TAG:Ljava/lang/String;

    const-string v2, "FPR from KRX is null, cannot get furthest page read; returning current page end"

    invoke-static {v1, v2}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 97
    :cond_3
    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    return-object v0
.end method

.method public static getTitle()Ljava/lang/String;
    .locals 2

    .line 34
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 39
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method
