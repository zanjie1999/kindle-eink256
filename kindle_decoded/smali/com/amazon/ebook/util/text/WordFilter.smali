.class public Lcom/amazon/ebook/util/text/WordFilter;
.super Ljava/lang/Object;


# instance fields
.field private collator:Ljava/text/Collator;

.field private collatorStrength:I

.field private firstChars:Ljava/lang/String;

.field private volatile language:Ljava/lang/String;

.field private maxLen:I

.field private wordMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v1, v0, v2}, Lcom/amazon/ebook/util/text/WordFilter;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/ebook/util/text/WordFilter;->firstChars:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/amazon/ebook/util/text/WordFilter;->maxLen:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/amazon/ebook/util/text/WordFilter;->collatorStrength:I

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-static {p2}, Lcom/amazon/ebook/util/text/LanguageTag;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p2, p0, Lcom/amazon/ebook/util/text/WordFilter;->language:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/amazon/ebook/util/text/WordFilter;->language:Ljava/lang/String;

    :goto_0
    iput p3, p0, Lcom/amazon/ebook/util/text/WordFilter;->collatorStrength:I

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/WordFilter;->initCollator()V

    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/ebook/util/text/WordFilter;->wordMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/amazon/ebook/util/text/WordFilter;->addWord(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private initCollator()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/ebook/util/text/WordFilter;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/ebook/util/text/LanguageTag;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ebook/util/text/WordFilter;->collator:Ljava/text/Collator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setDecomposition(I)V

    iget-object v0, p0, Lcom/amazon/ebook/util/text/WordFilter;->collator:Ljava/text/Collator;

    iget v1, p0, Lcom/amazon/ebook/util/text/WordFilter;->collatorStrength:I

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    invoke-virtual {p0}, Lcom/amazon/ebook/util/text/WordFilter;->computeKeys()V

    return-void
.end method


# virtual methods
.method public addWord(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/ebook/util/text/WordFilter;->collator:Ljava/text/Collator;

    invoke-virtual {v1, p1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ebook/util/text/WordFilter;->wordMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/amazon/ebook/util/text/WordFilter;->wordMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/amazon/ebook/util/text/WordFilter;->maxLen:I

    if-ge v2, v1, :cond_2

    iput v1, p0, Lcom/amazon/ebook/util/text/WordFilter;->maxLen:I

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/WordFilter;->firstChars:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ebook/util/text/WordFilter;->firstChars:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ebook/util/text/WordFilter;->firstChars:Ljava/lang/String;

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method protected declared-synchronized computeKeys()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ebook/util/text/WordFilter;->wordMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/ebook/util/text/WordFilter;->wordMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/amazon/ebook/util/text/WordFilter;->wordMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ebook/util/text/WordFilter;->collator:Ljava/text/Collator;

    invoke-virtual {v3, v2}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/amazon/ebook/util/text/WordFilter;->wordMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    :try_start_1
    iput-object v0, p0, Lcom/amazon/ebook/util/text/WordFilter;->wordMap:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/ebook/util/text/WordFilter;->wordMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/ebook/util/text/WordFilter;->collator:Ljava/text/Collator;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/WordFilter;->wordMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
