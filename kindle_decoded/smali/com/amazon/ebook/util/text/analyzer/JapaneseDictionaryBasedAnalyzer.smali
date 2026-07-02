.class public Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$DictionaryParser;,
        Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$SuffixPattern;
    }
.end annotation


# static fields
.field private static final BASEFORM_WORDS_DIC_RESOURCE_PATH:Ljava/lang/String; = "/com/amazon/ebook/util/text/analyzer/resources/baseform_words_table_ja.dic"

.field private static final PATTERN_STEMS_DIC_RESOURCE_PATH:Ljava/lang/String; = "/com/amazon/ebook/util/text/analyzer/resources/suffixpattern_stems_table_ja.dic"

.field private static final PROP_RESOURCE_PATH:Ljava/lang/String; = "/com/amazon/ebook/util/text/analyzer/resources/tables_ja.conf"

.field private static instance:Ljava/lang/ref/SoftReference;


# instance fields
.field private maxSuffixLen:I

.field private maxWordLen:I

.field private final stemToSuffixPatternMap:Ljava/util/Map;

.field private final wordToBaseformMap:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;->maxWordLen:I

    iput v0, p0, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;->maxSuffixLen:I

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;->loadProperties()V

    invoke-static {}, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;->createWordToBaseformMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;->wordToBaseformMap:Ljava/util/Map;

    invoke-static {}, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;->createStemToSuffixPatternMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;->stemToSuffixPatternMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Ljava/util/Map;Ljava/lang/String;Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$SuffixPattern;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;->addToMap(Ljava/util/Map;Ljava/lang/String;Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$SuffixPattern;)V

    return-void
.end method

.method private static addToMap(Ljava/util/Map;Ljava/lang/String;Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$SuffixPattern;)V
    .locals 2

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$SuffixPattern;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private static createMapFromDictionary(Ljava/lang/String;Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$DictionaryParser;)Ljava/util/Map;
    .locals 4

    const-class v0, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :cond_1
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/high16 v2, 0x3f400000    # 0.75f

    int-to-float p0, p0

    div-float/2addr p0, v2

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p0, v2}, Ljava/util/HashMap;-><init>(IF)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p1, p0, v3}, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$DictionaryParser;->populateMap(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    return-object v3

    :catch_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    return-object v0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_4
    nop

    goto :goto_2

    :catch_5
    nop

    goto :goto_4

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_3
    throw p0

    :catch_7
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_4

    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_5

    :catch_8
    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_4

    goto :goto_3

    :catch_9
    :cond_4
    :goto_5
    return-object v0
.end method

.method private static createStemToSuffixPatternMap()Ljava/util/Map;
    .locals 2

    new-instance v0, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$2;

    invoke-direct {v0}, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$2;-><init>()V

    const-string v1, "/com/amazon/ebook/util/text/analyzer/resources/suffixpattern_stems_table_ja.dic"

    invoke-static {v1, v0}, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;->createMapFromDictionary(Ljava/lang/String;Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$DictionaryParser;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    return-object v0
.end method

.method private static createWordToBaseformMap()Ljava/util/Map;
    .locals 2

    new-instance v0, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$1;

    invoke-direct {v0}, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$1;-><init>()V

    const-string v1, "/com/amazon/ebook/util/text/analyzer/resources/baseform_words_table_ja.dic"

    invoke-static {v1, v0}, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;->createMapFromDictionary(Ljava/lang/String;Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$DictionaryParser;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    return-object v0
.end method

.method private loadProperties()V
    .locals 3

    const-class v0, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;

    const-string v1, "/com/amazon/ebook/util/text/analyzer/resources/tables_ja.conf"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string/jumbo v2, "max.word.len"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;->maxWordLen:I

    :goto_0
    const-string/jumbo v2, "max.suffix.len"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;->maxSuffixLen:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw v1

    :catch_2
    :goto_2
    return-void
.end method
