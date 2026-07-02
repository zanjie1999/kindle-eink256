.class public final Lcom/amazon/kedu/ftue/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final MOP_EXT_AZW4:Ljava/lang/String; = "azw4"

.field private static final MOP_EXT_MOP:Ljava/lang/String; = "mop"

.field private static final SMD_TEXTBOOK_KEY:Ljava/lang/String; = "textbook_type"


# direct methods
.method public static isFixedFormat(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 39
    invoke-static {p0}, Lcom/amazon/kedu/ftue/util/Utils;->isMop(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 44
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFixedLayout()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isFixedFormatTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 27
    invoke-static {p0}, Lcom/amazon/kedu/ftue/util/Utils;->isMop(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/kedu/ftue/util/Utils;->isFixedFormat(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/amazon/kedu/ftue/util/Utils;->isTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

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

.method public static isMobiOrTopaz(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 103
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object p0

    .line 104
    sget-object v1, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI8:Lcom/amazon/kindle/krx/content/BookFormat;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI7:Lcom/amazon/kindle/krx/content/BookFormat;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/content/BookFormat;->TOPAZ:Lcom/amazon/kindle/krx/content/BookFormat;

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isMop(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    if-eqz p0, :cond_2

    .line 56
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 60
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getFilename()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const/16 v0, 0x2e

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    add-int/2addr v0, v1

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const-string v0, "azw4"

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 89
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    if-eq v1, v2, :cond_0

    const-string v1, "textbook_type"

    invoke-interface {p0, v1}, Lcom/amazon/kindle/krx/content/IBook;->getExtendedMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
