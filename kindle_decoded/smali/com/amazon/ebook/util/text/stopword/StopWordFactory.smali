.class public Lcom/amazon/ebook/util/text/stopword/StopWordFactory;
.super Ljava/lang/Object;


# static fields
.field private static final CACHE:Ljava/util/LinkedHashMap;

.field private static final INITIAL_CAPACITY:I = 0x10

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final MAX_CACHE_SIZE:I = 0x18

.field private static final RB_NAME:Ljava/lang/String; = "com.amazon.ebook.util.text.stopword.resources.StopWordData"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/amazon/ebook/util/text/stopword/StopWordFactory$1;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/ebook/util/text/stopword/StopWordFactory$1;-><init>(IFZ)V

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/StopWordFactory;->CACHE:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(ILjava/lang/String;)Lcom/amazon/ebook/util/text/stopword/StopWordList;
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object p1

    :cond_1
    sget-object v0, Lcom/amazon/ebook/util/text/stopword/StopWordFactory;->CACHE:Ljava/util/LinkedHashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/ebook/util/text/stopword/StopWordFactory;->CACHE:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, Lcom/amazon/ebook/util/text/stopword/StopWordFactory;->CACHE:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/ebook/util/text/stopword/StopWordList;

    monitor-exit v0

    return-object p0

    :cond_2
    const-string v2, "com.amazon.ebook.util.text.stopword.resources.StopWordData"

    invoke-static {p1}, Lcom/amazon/ebook/util/text/LanguageTag;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ebook/util/ResourceBundleUtil;->getBundleNoDefaultLocaleInFallback(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string/jumbo v3, "stop.word.strength"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq p0, v4, :cond_8

    const/4 v4, 0x4

    if-eq p0, v4, :cond_7

    const/16 v4, 0x8

    if-eq p0, v4, :cond_6

    const/16 v4, 0x10

    if-eq p0, v4, :cond_5

    const/16 v4, 0x20

    if-eq p0, v4, :cond_4

    const/16 v4, 0x40

    if-eq p0, v4, :cond_3

    const-string/jumbo p0, "search.word.list"

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "mesoclitic.list"

    goto :goto_0

    :cond_4
    const-string p0, "enclitic.list"

    goto :goto_0

    :cond_5
    const-string/jumbo p0, "title.prefix.elision.list"

    goto :goto_0

    :cond_6
    const-string p0, "elision.shorten.article.list"

    goto :goto_0

    :cond_7
    const-string/jumbo p0, "title.prefix.word.list"

    goto :goto_0

    :cond_8
    const-string p0, "dictionary.word.list"

    :goto_0
    invoke-virtual {v2, p0}, Ljava/util/ResourceBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v2, Lcom/amazon/ebook/util/text/stopword/StopWordList;

    invoke-direct {v2, p0, p1, v3}, Lcom/amazon/ebook/util/text/stopword/StopWordList;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    sget-object p0, Lcom/amazon/ebook/util/text/stopword/StopWordFactory;->CACHE:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
