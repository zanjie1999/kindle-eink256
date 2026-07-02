.class public Lcom/amazon/sitb/android/utils/BookUtils;
.super Ljava/lang/Object;
.source "BookUtils.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/utils/BookUtils;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/utils/BookUtils;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDifferentState(Lcom/amazon/kindle/krx/content/IBook$DownloadState;Lcom/amazon/kindle/krx/content/IBook$DownloadState;)Z
    .locals 0

    .line 77
    invoke-static {p0, p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isSameState(Lcom/amazon/kindle/krx/content/IBook$DownloadState;Lcom/amazon/kindle/krx/content/IBook$DownloadState;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isFullBook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 30
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p0

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRelevantContentType(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 38
    invoke-static {p0}, Lcom/amazon/sitb/android/utils/BookUtils;->isFullBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/sitb/android/utils/BookUtils;->isSample(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSameBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {p0, p1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isSameState(Lcom/amazon/kindle/krx/content/IBook$DownloadState;Lcom/amazon/kindle/krx/content/IBook$DownloadState;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSample(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 22
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p0

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toString(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "<null>"

    return-object p0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sample: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {p0}, Lcom/amazon/sitb/android/utils/BookUtils;->isSample(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {}, Lcom/amazon/sitb/android/utils/BuildUtils;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", content type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", MIME type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fixed layout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFixedLayout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", free trial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFreeTrial()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", content language: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", content class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
