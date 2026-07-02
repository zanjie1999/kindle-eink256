.class final Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$DictionaryParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;->createStemToSuffixPatternMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public populateMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5

    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/amazon/ebook/util/text/StringUtil;->split2(Ljava/lang/String;C)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$SuffixPattern;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x2c

    invoke-static {v3, v4}, Lcom/amazon/ebook/util/text/StringUtil;->split2(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$SuffixPattern;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/amazon/ebook/util/text/StringUtil;->split2(Ljava/lang/String;C)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v1, v0}, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;->access$100(Ljava/util/Map;Ljava/lang/String;Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$SuffixPattern;)V

    goto :goto_0

    :cond_1
    return-void
.end method
