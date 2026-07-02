.class public Lcom/amazon/kcp/search/autocomplete/InBookLatinBasedContentIndexer;
.super Ljava/lang/Object;
.source "InBookLatinBasedContentIndexer.java"


# static fields
.field private static final DELIMITER:C = ' '

.field private static final SECTION_SIZE:I = 0xc8


# instance fields
.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private stopWordHandler:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/InBookLatinBasedContentIndexer;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 45
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/autocomplete/InBookLatinBasedContentIndexer;->stopWordHandler:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;

    return-void
.end method


# virtual methods
.method public getBookContent()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "[^\\s\\p{L}\\p{N}\'\u2019]|(?<=(^|\\s))[\'\u2019]|[\'\u2019](?=($|\\s))"

    .line 59
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 61
    iget-object v3, p0, Lcom/amazon/kcp/search/autocomplete/InBookLatinBasedContentIndexer;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDoc;->getBeginningPosition()I

    move-result v3

    .line 64
    iget-object v4, p0, Lcom/amazon/kcp/search/autocomplete/InBookLatinBasedContentIndexer;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 66
    invoke-interface {v4, v3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    :cond_0
    const/16 v3, 0xc8

    const/16 v5, 0x20

    .line 69
    invoke-interface {v4, v3, v5}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->nextNWords(IC)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v3

    .line 71
    iget-object v6, v3, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 75
    :cond_1
    iget-object v3, v3, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    .line 78
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v8, v3, v6

    .line 83
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 85
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/amazon/kcp/search/autocomplete/InBookLatinBasedContentIndexer;->stopWordHandler:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;

    invoke-virtual {v9, v8}, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;->isStopWord(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 89
    :cond_2
    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_3

    .line 90
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 92
    :cond_3
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 98
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 101
    new-instance v4, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v4, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object v1
.end method
