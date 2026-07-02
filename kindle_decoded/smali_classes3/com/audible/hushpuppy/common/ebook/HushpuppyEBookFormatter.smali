.class public final Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;
.super Ljava/lang/Object;
.source "HushpuppyEBookFormatter.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractEBookInfo(Lcom/amazon/kindle/krx/content/IBook;Z)Lcom/audible/hushpuppy/common/ebook/EBookInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 56
    sget-object p0, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p1, "ebook is null, no eBookInfo was extracted"

    invoke-interface {p0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0

    .line 59
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->getVersionFromGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object p0

    invoke-static {p0}, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->getFormatFromBookFormat(Lcom/amazon/kindle/krx/content/BookFormat;)Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    .line 64
    invoke-static {v2}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    :cond_1
    new-instance p1, Lcom/audible/hushpuppy/common/ebook/EBookInfo;

    new-instance v0, Lcom/audible/mobile/domain/ImmutableAsinImpl;

    invoke-direct {v0, v1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v2, p0}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;-><init>(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 67
    :cond_2
    sget-object p0, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p1, "At least one eBook field was not found, no eBook was extracted"

    invoke-interface {p0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0
.end method

.method public static extractEBookInfoWithVersion(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/ebook/EBookInfo;
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-static {p0, v0}, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->extractEBookInfo(Lcom/amazon/kindle/krx/content/IBook;Z)Lcom/audible/hushpuppy/common/ebook/EBookInfo;

    move-result-object p0

    return-object p0
.end method

.method public static extractEBookInfoWithoutVersion(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/ebook/EBookInfo;
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-static {p0, v0}, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->extractEBookInfo(Lcom/amazon/kindle/krx/content/IBook;Z)Lcom/audible/hushpuppy/common/ebook/EBookInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getFormatFromBookFormat(Lcom/amazon/kindle/krx/content/BookFormat;)Ljava/lang/String;
    .locals 3

    .line 98
    sget-object v0, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting format for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVersionFromGuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 80
    sget-object v0, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting version from GUID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 82
    invoke-static {p0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x3a

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 88
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
