.class public Lcom/amazon/readingactions/ui/helpers/StartActionsBookSupport;
.super Ljava/lang/Object;
.source "StartActionsBookSupport.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.readingactions.ui.helpers.StartActionsBookSupport"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static isSupported(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 14
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 15
    sget-object p0, Lcom/amazon/readingactions/ui/helpers/StartActionsBookSupport;->TAG:Ljava/lang/String;

    const-string v1, "book is null, not start actions supported"

    invoke-static {p0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0

    .line 21
    :cond_1
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    .line 22
    sget-object v2, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 27
    :cond_2
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v1

    .line 28
    sget-object v2, Lcom/amazon/kindle/krx/content/BookFormat;->MOP:Lcom/amazon/kindle/krx/content/BookFormat;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/amazon/kindle/krx/content/BookFormat;->PDF:Lcom/amazon/kindle/krx/content/BookFormat;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 33
    :cond_3
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v1

    .line 34
    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 39
    :cond_4
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isDictionary()Z

    move-result v1

    if-eqz v1, :cond_5

    return v0

    .line 44
    :cond_5
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_6
    :goto_0
    return v0
.end method
