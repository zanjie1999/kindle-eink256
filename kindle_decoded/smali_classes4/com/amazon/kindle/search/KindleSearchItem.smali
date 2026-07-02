.class public Lcom/amazon/kindle/search/KindleSearchItem;
.super Ljava/lang/Object;
.source "KindleSearchItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;,
        Lcom/amazon/kindle/search/KindleSearchItem$SearchResult;,
        Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;
    }
.end annotation


# static fields
.field private static final INDEX_MONTITOR_SLEEP_INTERVAL:J = 0xfaL

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final POST_CONTEXT_MAX_SIZE:I

.field private final PRE_CONTEXT_MAX_SIZE:I

.field private final m_callback:Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;

.field private m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m_inContext:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;",
            ">;"
        }
    .end annotation
.end field

.field private final m_isComplexTextLanguage:Z

.field private final m_postContext:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;",
            ">;"
        }
    .end annotation
.end field

.field private final m_preContext:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;",
            ">;"
        }
    .end annotation
.end field

.field private final m_query:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[C>;"
        }
    .end annotation
.end field

.field protected m_rawQuery:Ljava/lang/String;

.field private m_searcher:Lcom/amazon/kcp/search/IBookSearchIndexer;

.field private final m_stripDiacritics:Z

.field private final m_tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

.field private final m_treatCharacterAsWord:Z

.field private final m_useLuceneSearch:Z

.field protected final m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private matchedPositions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/amazon/kindle/search/KindleSearchItem;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/search/KindleSearchItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)V
    .locals 4

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->matchedPositions:Ljava/util/Set;

    .line 142
    iput-object p1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 143
    iput-object p2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_rawQuery:Ljava/lang/String;

    .line 145
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 146
    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 147
    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    .line 148
    :goto_3
    iput-boolean v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_treatCharacterAsWord:Z

    .line 149
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/debug/DebugUtils;->isSearchDiacriticsStrippingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    iget-boolean v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_treatCharacterAsWord:Z

    xor-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_stripDiacritics:Z

    goto :goto_5

    :cond_4
    if-eqz p1, :cond_5

    const-string v2, "ar"

    .line 153
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_stripDiacritics:Z

    :goto_5
    if-eqz p1, :cond_6

    .line 155
    invoke-static {p1}, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->isComplexTextLanguage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_6

    :cond_6
    const/4 p1, 0x0

    :goto_6
    iput-boolean p1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_isComplexTextLanguage:Z

    .line 158
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 159
    iget-boolean v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_treatCharacterAsWord:Z

    if-eqz v2, :cond_7

    .line 160
    sget v2, Lcom/amazon/kindle/krl/R$integer;->max_post_context_word_cn_jp:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->POST_CONTEXT_MAX_SIZE:I

    .line 161
    sget v2, Lcom/amazon/kindle/krl/R$integer;->max_pre_context_word_cn_jp:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->PRE_CONTEXT_MAX_SIZE:I

    goto :goto_7

    .line 163
    :cond_7
    sget v2, Lcom/amazon/kindle/krl/R$integer;->max_post_context_word_en:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->POST_CONTEXT_MAX_SIZE:I

    .line 164
    sget v2, Lcom/amazon/kindle/krl/R$integer;->max_pre_context_word_en:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->PRE_CONTEXT_MAX_SIZE:I

    .line 168
    :goto_7
    iget-boolean v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_stripDiacritics:Z

    if-eqz v2, :cond_8

    .line 169
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->stripDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 172
    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/search/SearchUtils;->stripPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-boolean v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_treatCharacterAsWord:Z

    invoke-static {p2, v2}, Lcom/amazon/kindle/search/SearchUtils;->split(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_query:Ljava/util/List;

    .line 173
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_preContext:Ljava/util/LinkedList;

    .line 174
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_inContext:Ljava/util/LinkedList;

    .line 175
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_postContext:Ljava/util/LinkedList;

    .line 176
    iput-object p3, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_callback:Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;

    .line 177
    iput-object p4, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    .line 178
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    sget p2, Lcom/amazon/kindle/krl/R$bool;->enable_lucene_search:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-nez p2, :cond_a

    sget p2, Lcom/amazon/kindle/krl/R$bool;->enable_lucene_search_stemmed:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_8
    iput-boolean v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_useLuceneSearch:Z

    if-eqz v0, :cond_b

    .line 183
    iget-object p1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSearchIndexer()Lcom/amazon/kcp/search/IBookSearchIndexer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_searcher:Lcom/amazon/kcp/search/IBookSearchIndexer;

    :cond_b
    return-void
.end method

.method private appendWordListToText(Ljava/lang/StringBuilder;Ljava/util/LinkedList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/LinkedList<",
            "Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;",
            ">;)Z"
        }
    .end annotation

    .line 459
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/util/CharacterAnalyzer;->isNoSpaceScript(Ljava/lang/Character;)Z

    move-result v0

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 465
    :goto_0
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;

    .line 466
    iget-object v6, v5, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->originalText:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/android/util/CharacterAnalyzer;->isNoSpaceScript(Ljava/lang/Character;)Z

    move-result v6

    .line 467
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_2

    if-nez v0, :cond_1

    if-nez v6, :cond_2

    :cond_1
    const-string v0, " "

    .line 468
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    xor-int/lit8 v0, v6, 0x1

    .line 475
    iget-object v4, v5, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->originalText:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    return v3
.end method

.method private doLuceneSearch(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 7

    .line 234
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_searcher:Lcom/amazon/kcp/search/IBookSearchIndexer;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/search/IBookSearchIndexer;->isIndexAvailable(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0

    .line 235
    iget-object v1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_callback:Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;

    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;->onStart(Z)V

    .line 237
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/search/KindleSearchItem;->waitForIndex(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 241
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_searcher:Lcom/amazon/kcp/search/IBookSearchIndexer;

    invoke-interface {v1, p1}, Lcom/amazon/kcp/search/IBookSearchIndexer;->isIndexAvailable(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_callback:Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;->onStart(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_searcher:Lcom/amazon/kcp/search/IBookSearchIndexer;

    iget-object v3, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_callback:Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;

    iget-object v5, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_rawQuery:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    move-object v2, p0

    move-object v4, v0

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kcp/search/IBookSearchIndexer;->search(Lcom/amazon/kindle/search/KindleSearchItem;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/search/IKindleWordTokenIterator;Ljava/lang/String;Lcom/amazon/kindle/services/download/IStatusTracker;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 261
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    .line 253
    :try_start_2
    sget-object v2, Lcom/amazon/kindle/search/KindleSearchItem;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookFurthestPosition()I

    move-result p1

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/services/download/IStatusTracker;->setMaxProgress(J)V

    const/4 p1, -0x1

    const v1, 0x7fffffff

    .line 258
    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/kindle/search/KindleSearchItem;->doSearch(IILcom/amazon/kindle/search/IKindleWordTokenIterator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 261
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    .line 263
    :cond_4
    throw p1
.end method

.method private static getMatchLength([CI[CII)I
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_1

    .line 679
    array-length v3, p0

    if-ge v1, v3, :cond_1

    if-ltz p3, :cond_1

    array-length v3, p2

    if-ge p3, v3, :cond_1

    .line 680
    aget-char v2, p0, v1

    aget-char v3, p2, p3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    sub-int v2, v1, p1

    .line 683
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, p4

    .line 684
    invoke-static {p0, v1, p4}, Lcom/amazon/kindle/search/KindleSearchItem;->getNextNonNullCharacterIndex([CII)I

    move-result v1

    add-int/2addr p3, p4

    goto :goto_0

    :cond_1
    if-ltz p3, :cond_2

    .line 688
    array-length p0, p2

    if-lt p3, p0, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method

.method private static getMatchOffsetAndLength([C[CZ)[I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 643
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    move v5, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 646
    :cond_0
    array-length v2, p0

    sub-int/2addr v2, v1

    const/4 v3, -0x1

    .line 648
    array-length v4, p1

    sub-int/2addr v4, v1

    .line 649
    array-length v5, p0

    sub-int/2addr v5, v1

    .line 650
    array-length v6, p1

    sub-int/2addr v6, v1

    .line 653
    :goto_0
    invoke-static {p0, v2, v3}, Lcom/amazon/kindle/search/KindleSearchItem;->getNextNonNullCharacterIndex([CII)I

    move-result v2

    :goto_1
    if-lt v2, v4, :cond_3

    if-gt v2, v5, :cond_3

    .line 655
    invoke-static {p0, v2, p1, v6, v3}, Lcom/amazon/kindle/search/KindleSearchItem;->getMatchLength([CI[CII)I

    move-result v7

    if-lez v7, :cond_2

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    sub-int/2addr v2, v7

    add-int/2addr v2, v1

    :goto_2
    const/4 p0, 0x2

    new-array p0, p0, [I

    aput v2, p0, v0

    aput v7, p0, v1

    return-object p0

    :cond_2
    add-int/2addr v2, v3

    .line 660
    invoke-static {p0, v2, v3}, Lcom/amazon/kindle/search/KindleSearchItem;->getNextNonNullCharacterIndex([CII)I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method static getMatchOffsets(Ljava/util/List;Ljava/util/List;)[I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[C>;",
            "Ljava/util/List<",
            "[C>;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    .line 576
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 581
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/search/KindleSearchItem;->getMatchOffsetAndLength([C[CZ)[I

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    .line 585
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    new-array p1, v4, [I

    .line 586
    aget v0, v2, v1

    aput v0, p1, v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    array-length p0, p0

    aget v0, v2, v5

    sub-int/2addr p0, v0

    aget v0, v2, v1

    sub-int/2addr p0, v0

    aput p0, p1, v5

    return-object p1

    .line 590
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    aget v6, v2, v1

    aget v7, v2, v5

    add-int/2addr v6, v7

    invoke-static {v3, v6, v5}, Lcom/amazon/kindle/search/KindleSearchItem;->getNextNonNullCharacterIndex([CII)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    return-object v0

    .line 594
    :cond_3
    aget v2, v2, v1

    const/4 v3, 0x1

    .line 597
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    if-ge v3, v7, :cond_7

    .line 598
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [C

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [C

    invoke-static {v7, v8, v5}, Lcom/amazon/kindle/search/KindleSearchItem;->getMatchOffsetAndLength([C[CZ)[I

    move-result-object v7

    if-nez v7, :cond_4

    return-object v0

    .line 603
    :cond_4
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [C

    aget v9, v7, v1

    sub-int/2addr v9, v5

    invoke-static {v8, v9, v6}, Lcom/amazon/kindle/search/KindleSearchItem;->getNextNonNullCharacterIndex([CII)I

    move-result v8

    if-eq v8, v6, :cond_5

    return-object v0

    .line 607
    :cond_5
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [C

    aget v9, v7, v1

    aget v7, v7, v5

    add-int/2addr v9, v7

    invoke-static {v8, v9, v5}, Lcom/amazon/kindle/search/KindleSearchItem;->getNextNonNullCharacterIndex([CII)I

    move-result v7

    if-eq v7, v6, :cond_6

    return-object v0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 614
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    invoke-static {v3, p1, v5}, Lcom/amazon/kindle/search/KindleSearchItem;->getMatchOffsetAndLength([C[CZ)[I

    move-result-object p1

    if-nez p1, :cond_8

    return-object v0

    .line 619
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    aget v7, p1, v1

    sub-int/2addr v7, v5

    invoke-static {v3, v7, v6}, Lcom/amazon/kindle/search/KindleSearchItem;->getNextNonNullCharacterIndex([CII)I

    move-result v3

    if-eq v3, v6, :cond_9

    return-object v0

    :cond_9
    new-array v0, v4, [I

    aput v2, v0, v1

    .line 625
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    array-length p0, p0

    aget v2, p1, v5

    sub-int/2addr p0, v2

    aget p1, p1, v1

    sub-int/2addr p0, p1

    aput p0, v0, v5

    :cond_a
    :goto_1
    return-object v0
.end method

.method private static getNextNonNullCharacterIndex([CII)I
    .locals 1

    :goto_0
    if-ltz p1, :cond_1

    .line 692
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 693
    aget-char v0, p0, p1

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/2addr p1, p2

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public adjustPreContextPosition(Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;",
            ">;",
            "Ljava/util/LinkedList<",
            "Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public cancel()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public createBookSearchResult(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;IIIII)Lcom/amazon/android/docviewer/BookSearchResult;
    .locals 11

    .line 547
    new-instance v9, Lcom/amazon/kindle/search/KindleSearchItem$SearchResult;

    move-object v10, p0

    iget-object v8, v10, Lcom/amazon/kindle/search/KindleSearchItem;->m_rawQuery:Ljava/lang/String;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/search/KindleSearchItem$SearchResult;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;IIIIILjava/lang/String;)V

    return-object v9
.end method

.method public createBookSearchResult(Ljava/lang/String;IIIII)Lcom/amazon/android/docviewer/BookSearchResult;
    .locals 11

    move-object v0, p0

    .line 562
    new-instance v10, Lcom/amazon/kindle/search/KindleSearchItem$SearchResult;

    iget-object v2, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v9, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_rawQuery:Ljava/lang/String;

    move-object v1, v10

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kindle/search/KindleSearchItem$SearchResult;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;IIIIILjava/lang/String;)V

    return-object v10
.end method

.method public createBookSearchResult(Ljava/util/List;II)Lcom/amazon/android/docviewer/BookSearchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[C>;II)",
            "Lcom/amazon/android/docviewer/BookSearchResult;"
        }
    .end annotation

    .line 490
    iget-object p1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_preContext:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_inContext:Ljava/util/LinkedList;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/search/KindleSearchItem;->adjustPreContextPosition(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    .line 492
    iget-object p1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_preContext:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_preContext:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;

    iget p1, p1, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->firstIntPosition:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_inContext:Ljava/util/LinkedList;

    .line 493
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;

    iget p1, p1, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->firstIntPosition:I

    :goto_0
    move v5, p1

    .line 494
    iget-object p1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_inContext:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;

    iget v6, p1, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->firstIntPosition:I

    .line 495
    iget-object p1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_inContext:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;

    iget v7, p1, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->lastIntPosition:I

    .line 497
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_preContext:Ljava/util/LinkedList;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/search/KindleSearchItem;->appendWordListToText(Ljava/lang/StringBuilder;Ljava/util/LinkedList;)Z

    .line 501
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 504
    iget-boolean v1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_isComplexTextLanguage:Z

    if-nez v1, :cond_1

    add-int/2addr v0, p2

    .line 508
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_inContext:Ljava/util/LinkedList;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/search/KindleSearchItem;->appendWordListToText(Ljava/lang/StringBuilder;Ljava/util/LinkedList;)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v3, v0

    .line 512
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v3

    .line 515
    iget-boolean v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_isComplexTextLanguage:Z

    if-nez v0, :cond_3

    .line 517
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_inContext:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;

    .line 518
    iget-object v1, v0, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->comparisonText:[C

    array-length v1, v1

    iget-object v0, v0, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->originalText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    sub-int/2addr p2, p3

    :cond_3
    move v4, p2

    .line 521
    iget-object p2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_postContext:Ljava/util/LinkedList;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/search/KindleSearchItem;->appendWordListToText(Ljava/lang/StringBuilder;Ljava/util/LinkedList;)Z

    .line 523
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kindle/search/KindleSearchItem;->createBookSearchResult(Ljava/lang/String;IIIII)Lcom/amazon/android/docviewer/BookSearchResult;

    move-result-object p1

    return-object p1
.end method

.method public doSearch(IILcom/amazon/kindle/search/IKindleWordTokenIterator;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 288
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_query:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 289
    :goto_0
    iget-object v5, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_query:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_0

    .line 290
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 293
    :cond_0
    iget v4, v0, Lcom/amazon/kindle/search/KindleSearchItem;->POST_CONTEXT_MAX_SIZE:I

    .line 296
    iget-object v5, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_query:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v1, :cond_1

    .line 298
    invoke-interface/range {p3 .. p3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->first()Z

    move-object/from16 v7, p3

    goto :goto_2

    :cond_1
    move-object/from16 v7, p3

    .line 300
    invoke-interface {v7, v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    const/4 v1, 0x0

    .line 303
    :goto_1
    iget-object v8, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_query:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    invoke-interface/range {p3 .. p3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->previous()Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    :cond_2
    iget-object v8, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_query:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    invoke-interface/range {p3 .. p3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v1

    if-nez v1, :cond_3

    .line 312
    invoke-interface/range {p3 .. p3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    :cond_3
    :goto_2
    const-wide/16 v8, 0x0

    .line 331
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-nez v10, :cond_5

    .line 335
    iget-boolean v13, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_treatCharacterAsWord:Z

    if-eqz v13, :cond_4

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 336
    :cond_4
    invoke-interface/range {p3 .. p3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v13

    goto :goto_4

    :cond_5
    move-object v13, v6

    :goto_4
    if-eqz v13, :cond_8

    .line 339
    iget-object v14, v13, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    if-eqz v14, :cond_8

    .line 340
    iget-boolean v14, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_treatCharacterAsWord:Z

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    .line 342
    :goto_5
    iget-object v15, v13, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_6

    .line 343
    new-instance v15, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    iget-object v6, v13, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iget v3, v13, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    move/from16 p1, v4

    iget v4, v13, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    invoke-direct {v15, v6, v3, v4}, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;-><init>(Ljava/lang/String;II)V

    .line 344
    invoke-virtual {v1, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move/from16 v4, p1

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    move/from16 p1, v4

    .line 346
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    goto :goto_6

    :cond_7
    move/from16 p1, v4

    .line 349
    :goto_6
    new-instance v3, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;

    iget-boolean v4, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_stripDiacritics:Z

    iget-boolean v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_isComplexTextLanguage:Z

    invoke-direct {v3, v13, v4, v6}, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;-><init>(Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;ZZ)V

    .line 350
    iget-object v4, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_postContext:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    move/from16 p1, v4

    .line 351
    iget-boolean v3, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_treatCharacterAsWord:Z

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 352
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    .line 353
    new-instance v4, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;

    iget-boolean v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_stripDiacritics:Z

    iget-boolean v13, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_isComplexTextLanguage:Z

    invoke-direct {v4, v3, v6, v13}, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;-><init>(Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;ZZ)V

    .line 354
    iget-object v3, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_postContext:Ljava/util/LinkedList;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_7
    move/from16 v4, p1

    goto :goto_8

    .line 358
    :cond_9
    iget-object v3, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_postContext:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 443
    iget-object v1, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_inContext:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 444
    iget-object v1, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_preContext:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 445
    iget-object v1, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_postContext:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 447
    iget-object v1, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_callback:Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;

    invoke-interface {v1, v11}, Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;->onResultCount(I)V

    return-void

    :cond_a
    const/4 v4, 0x0

    .line 363
    :goto_8
    iget-object v3, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_postContext:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;

    iget v3, v3, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->lastIntPosition:I

    .line 366
    iget-boolean v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_useLuceneSearch:Z

    if-eqz v6, :cond_b

    iget-object v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_searcher:Lcom/amazon/kcp/search/IBookSearchIndexer;

    if-eqz v6, :cond_b

    .line 367
    invoke-interface {v6}, Lcom/amazon/kcp/search/IBookSearchIndexer;->isBookIndexable()Z

    move-result v6

    if-nez v6, :cond_c

    :cond_b
    int-to-long v13, v3

    const-wide/16 v16, 0x5

    add-long v16, v8, v16

    cmp-long v6, v13, v16

    if-lez v6, :cond_c

    .line 370
    iget-object v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    invoke-interface {v6, v13, v14}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportCurrentProgress(J)V

    move-wide v8, v13

    .line 375
    :cond_c
    iget-object v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_d

    return-void

    .line 383
    :cond_d
    iget-object v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_postContext:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-le v6, v4, :cond_f

    .line 384
    iget-object v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_postContext:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;

    .line 385
    iget-boolean v14, v6, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->valid:Z

    if-eqz v14, :cond_e

    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x1

    goto :goto_9

    :cond_e
    const/4 v14, 0x0

    .line 389
    :goto_9
    iget-object v15, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_inContext:Ljava/util/LinkedList;

    invoke-virtual {v15, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    const/4 v14, 0x0

    .line 394
    :goto_a
    iget-object v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_query:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v12, v6, :cond_10

    .line 395
    iget-object v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_preContext:Ljava/util/LinkedList;

    iget-object v14, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_inContext:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, -0x1

    const/4 v14, 0x1

    .line 402
    :cond_10
    :goto_b
    iget-object v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_inContext:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_inContext:Ljava/util/LinkedList;

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;

    iget-boolean v6, v6, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->valid:Z

    if-nez v6, :cond_11

    .line 403
    iget-object v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_preContext:Ljava/util/LinkedList;

    iget-object v15, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_inContext:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 407
    :cond_11
    :goto_c
    iget-object v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_preContext:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    iget v15, v0, Lcom/amazon/kindle/search/KindleSearchItem;->PRE_CONTEXT_MAX_SIZE:I

    if-le v6, v15, :cond_12

    .line 408
    iget-object v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_preContext:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_c

    .line 413
    :cond_12
    iget-object v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_query:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v12, v6, :cond_15

    if-eqz v14, :cond_15

    .line 415
    iget-object v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_inContext:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v15, 0x0

    :cond_13
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;

    .line 416
    iget-boolean v13, v14, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->valid:Z

    if-eqz v13, :cond_13

    add-int/lit8 v13, v15, 0x1

    .line 417
    iget-object v14, v14, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->comparisonText:[C

    invoke-virtual {v2, v15, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v15, v13

    goto :goto_d

    .line 420
    :cond_14
    iget-object v6, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_query:Ljava/util/List;

    invoke-static {v2, v6}, Lcom/amazon/kindle/search/KindleSearchItem;->getMatchOffsets(Ljava/util/List;Ljava/util/List;)[I

    move-result-object v6

    if-eqz v6, :cond_15

    const/4 v13, 0x0

    .line 422
    aget v14, v6, v13

    const/4 v15, 0x1

    aget v6, v6, v15

    invoke-virtual {v0, v2, v14, v6}, Lcom/amazon/kindle/search/KindleSearchItem;->createBookSearchResult(Ljava/util/List;II)Lcom/amazon/android/docviewer/BookSearchResult;

    move-result-object v6

    .line 423
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/BookSearchResult;->getSearchStartPosition()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 425
    iget-object v13, v0, Lcom/amazon/kindle/search/KindleSearchItem;->matchedPositions:Ljava/util/Set;

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 426
    iget-object v13, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_callback:Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;

    invoke-interface {v13, v6}, Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;->onResult(Lcom/amazon/android/docviewer/BookSearchResult;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_15
    const/4 v15, 0x1

    :cond_16
    :goto_e
    move/from16 v6, p2

    if-lt v3, v6, :cond_17

    add-int/lit8 v5, v5, -0x1

    :cond_17
    if-gtz v5, :cond_18

    const/4 v10, 0x1

    goto :goto_f

    .line 439
    :cond_18
    iget-object v13, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v13}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v13

    invoke-interface {v13}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookFurthestPosition()I

    move-result v13

    if-gt v3, v13, :cond_1a

    iget-boolean v3, v0, Lcom/amazon/kindle/search/KindleSearchItem;->m_treatCharacterAsWord:Z

    if-eqz v3, :cond_19

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 440
    :cond_19
    invoke-interface/range {p3 .. p3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    :cond_1a
    :goto_f
    const/4 v6, 0x0

    goto/16 :goto_3
.end method

.method public isCancelled()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public search()V
    .locals 6

    .line 197
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->refreshSearchResults()V

    const/4 v1, 0x0

    .line 202
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_searcher:Lcom/amazon/kcp/search/IBookSearchIndexer;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_searcher:Lcom/amazon/kcp/search/IBookSearchIndexer;

    invoke-interface {v2}, Lcom/amazon/kcp/search/IBookSearchIndexer;->isBookIndexable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-direct {p0, v0}, Lcom/amazon/kindle/search/KindleSearchItem;->doLuceneSearch(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 212
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookFurthestPosition()I

    move-result v0

    int-to-long v4, v0

    .line 213
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    invoke-interface {v0, v4, v5}, Lcom/amazon/kindle/services/download/IStatusTracker;->setMaxProgress(J)V

    .line 214
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_callback:Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;

    invoke-interface {v0, v3}, Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;->onStart(Z)V

    const/4 v0, -0x1

    const v2, 0x7fffffff

    .line 215
    invoke-virtual {p0, v0, v2, v1}, Lcom/amazon/kindle/search/KindleSearchItem;->doSearch(IILcom/amazon/kindle/search/IKindleWordTokenIterator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/search/KindleSearchItem;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_callback:Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;->onCanceled()V

    goto :goto_1

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_callback:Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;->onComplete()V

    :goto_1
    if-eqz v1, :cond_4

    .line 227
    :goto_2
    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 219
    :try_start_1
    sget-object v2, Lcom/amazon/kindle/search/KindleSearchItem;->TAG:Ljava/lang/String;

    const-string v3, "failed to complete search"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    invoke-virtual {p0}, Lcom/amazon/kindle/search/KindleSearchItem;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_callback:Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;->onCanceled()V

    goto :goto_3

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_callback:Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;->onComplete()V

    :goto_3
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_4
    return-void

    :catchall_1
    move-exception v0

    .line 221
    invoke-virtual {p0}, Lcom/amazon/kindle/search/KindleSearchItem;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 222
    iget-object v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_callback:Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;->onCanceled()V

    goto :goto_5

    .line 224
    :cond_5
    iget-object v2, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_callback:Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;->onComplete()V

    :goto_5
    if-eqz v1, :cond_6

    .line 227
    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    .line 229
    :cond_6
    throw v0
.end method

.method public waitForIndex(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/services/download/IStatusTracker;)V
    .locals 2

    .line 273
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookFurthestPosition()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/services/download/IStatusTracker;->setMaxProgress(J)V

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_searcher:Lcom/amazon/kcp/search/IBookSearchIndexer;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/search/IBookSearchIndexer;->isIndexAvailable(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xfa

    .line 276
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_searcher:Lcom/amazon/kcp/search/IBookSearchIndexer;

    invoke-interface {v0}, Lcom/amazon/kcp/search/IBookSearchIndexer;->getFarthestIndexedPostion()J

    move-result-wide v0

    .line 282
    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportCurrentProgress(J)V

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
