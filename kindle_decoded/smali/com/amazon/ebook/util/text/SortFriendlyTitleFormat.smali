.class public Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;
.super Lcom/amazon/ebook/util/text/SortFriendlyFormat;


# direct methods
.method private constructor <init>(Ljava/util/Locale;Z)V
    .locals 1

    invoke-static {}, Lcom/amazon/ebook/util/text/PlatformSortFriendlyTitleFormat;->getCharsToPreserve()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/ebook/util/text/SortFriendlyFormat;-><init>(Ljava/util/Locale;Ljava/util/Collection;Z)V

    return-void
.end method

.method public static getInstance()Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;->getInstance(Ljava/util/Locale;Z)Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;
    .locals 2

    new-instance v0, Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;

    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;-><init>(Ljava/util/Locale;Z)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Z)Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;
    .locals 1

    new-instance v0, Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;

    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;-><init>(Ljava/util/Locale;Z)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;
    .locals 2

    new-instance v0, Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;-><init>(Ljava/util/Locale;Z)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;Z)Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;
    .locals 1

    new-instance v0, Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;-><init>(Ljava/util/Locale;Z)V

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->removePunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->moveArticles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->addCJKPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
