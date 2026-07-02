.class public Lcom/amazon/kcp/library/models/BookCapability;
.super Ljava/lang/Object;
.source "BookCapability.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kcp/library/models/BookCapability;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/models/BookCapability;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidCapability(I)Z
    .locals 3

    if-ltz p0, :cond_1

    const/4 v0, 0x4

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kcp/library/models/BookCapability;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejecting invalid capability value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static supportsCapability(Lcom/amazon/kindle/model/content/IListableBook;I)Z
    .locals 3

    .line 79
    invoke-static {p1}, Lcom/amazon/kcp/library/models/BookCapability;->isValidCapability(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    return v0

    .line 108
    :cond_0
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result p0

    return p0

    .line 105
    :cond_1
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isListableBookLocalPDF(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 94
    :cond_3
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    if-eq p1, v2, :cond_4

    .line 95
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-eq p1, v2, :cond_4

    .line 96
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq p1, v2, :cond_4

    .line 97
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne p1, v2, :cond_5

    .line 98
    :cond_4
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->isArchivable()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 99
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    .line 86
    :cond_6
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 87
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    if-eq p1, v2, :cond_7

    .line 88
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-eq p1, v2, :cond_7

    .line 89
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    if-ne p1, v2, :cond_8

    .line 90
    :cond_7
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->isArchivable()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 91
    invoke-static {p0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    .line 80
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
