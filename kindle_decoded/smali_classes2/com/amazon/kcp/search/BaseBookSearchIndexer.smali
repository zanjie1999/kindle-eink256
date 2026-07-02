.class public abstract Lcom/amazon/kcp/search/BaseBookSearchIndexer;
.super Ljava/lang/Object;
.source "BaseBookSearchIndexer.java"

# interfaces
.implements Lcom/amazon/kcp/search/IBookSearchIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;
    }
.end annotation


# static fields
.field private static final AmazonStopwordsEnglish:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AmazonStopwordsFrench:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AmazonStopwordsGerman:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AmazonStopwordsItalian:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AmazonStopwordsSpanish:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stopwordsEnglish:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stopwordsFrench:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stopwordsGerman:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stopwordsItalian:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stopwordsSpanish:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected analyzer:Lorg/apache/lucene/analysis/Analyzer;

.field protected book:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field protected cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected directory:Lorg/apache/lucene/store/Directory;

.field protected fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

.field protected indexDirectoryName:Ljava/lang/String;

.field protected indexWriter:Lorg/apache/lucene/index/IndexWriter;

.field protected initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected isIndexComplete:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected isIndexable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected progressFile:Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

.field protected searcher:Lorg/apache/lucene/search/IndexSearcher;

.field protected wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 94

    .line 198
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "the"

    const-string v2, "a"

    const-string v3, "an"

    const-string v4, "this"

    const-string v5, "that"

    const-string v6, "these"

    const-string v7, "those"

    const-string v8, "I"

    const-string/jumbo v9, "you"

    const-string v10, "she"

    const-string v11, "he"

    const-string v12, "it"

    const-string/jumbo v13, "we"

    const-string v14, "they"

    const-string v15, "as"

    const-string v16, "like"

    const-string v17, "at"

    const-string v18, "to"

    const-string v19, "also"

    const-string v20, "on"

    const-string v21, "of"

    const-string v22, "by"

    const-string v23, "for"

    const-string v24, "not"

    const-string v25, "only"

    const-string v26, "or"

    const-string v27, "so"

    const-string v28, "and"

    const-string v29, "about"

    const-string v30, "from"

    const-string v31, "in"

    filled-new-array/range {v1 .. v31}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->AmazonStopwordsEnglish:Ljava/util/Set;

    .line 201
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsEnglish:Ljava/util/Set;

    .line 204
    invoke-static {}, Lorg/apache/lucene/analysis/en/EnglishAnalyzer;->getDefaultStopSet()Ljava/util/Set;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 206
    instance-of v2, v1, [C

    if-eqz v2, :cond_0

    .line 207
    sget-object v2, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsEnglish:Ljava/util/Set;

    new-instance v3, Ljava/lang/String;

    check-cast v1, [C

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_1
    sget-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->AmazonStopwordsEnglish:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    sget-object v2, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsEnglish:Ljava/util/Set;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 215
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "der"

    const-string v2, "die"

    const-string v3, "das"

    const-string v4, "des"

    const-string v5, "dem"

    const-string v6, "den"

    const-string v7, "ein"

    const-string v8, "eine"

    const-string v9, "einer"

    const-string v10, "einem"

    const-string v11, "einen"

    const-string v12, "dies"

    const-string v13, "diese"

    const-string v14, "diesem"

    const-string v15, "diesem"

    const-string v16, "diesen"

    const-string v17, "dieser"

    const-string v18, "dieses"

    const-string v19, "ich"

    const-string v20, "du"

    const-string v21, "er"

    const-string v22, "sie"

    const-string v23, "es"

    const-string/jumbo v24, "wir"

    const-string v25, "ihr"

    const-string v26, "sie"

    const-string v27, "Sie"

    const-string v28, "als"

    const-string v29, "an"

    const-string v30, "ans"

    const-string v31, "auch"

    const-string v32, "auf"

    const-string v33, "aufs"

    const-string v34, "aus"

    const-string v35, "bei"

    const-string v36, "fuer"

    const-string v37, "fr"

    const-string v38, "nicht"

    const-string v39, "nur"

    const-string v40, "oder"

    const-string v41, "so"

    const-string/jumbo v42, "und"

    const-string/jumbo v43, "um"

    const-string/jumbo v44, "ums"

    const-string/jumbo v45, "vom"

    const-string/jumbo v46, "von"

    const-string v47, "in"

    const-string v48, "im"

    filled-new-array/range {v1 .. v48}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->AmazonStopwordsGerman:Ljava/util/Set;

    .line 218
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsGerman:Ljava/util/Set;

    .line 221
    invoke-static {}, Lorg/apache/lucene/analysis/de/GermanAnalyzer;->getDefaultStopSet()Ljava/util/Set;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 223
    instance-of v2, v1, [C

    if-eqz v2, :cond_3

    .line 224
    sget-object v2, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsGerman:Ljava/util/Set;

    new-instance v3, Ljava/lang/String;

    check-cast v1, [C

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 227
    :cond_4
    sget-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->AmazonStopwordsGerman:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    sget-object v2, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsGerman:Ljava/util/Set;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 232
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "el"

    const-string v2, "la"

    const-string v3, "los"

    const-string v4, "las"

    const-string/jumbo v5, "un"

    const-string/jumbo v6, "una"

    const-string/jumbo v7, "unos"

    const-string/jumbo v8, "unas"

    const-string v9, "del"

    const-string v10, "al"

    const-string v11, "este"

    const-string v12, "ese"

    const-string v13, "aquel"

    const-string v14, "estos"

    const-string v15, "esos"

    const-string v16, "aquellos"

    const-string v17, "esta"

    const-string v18, "esa"

    const-string v19, "aquella"

    const-string v20, "estas"

    const-string v21, "esas"

    const-string v22, "aquellas"

    const-string/jumbo v23, "yo"

    const-string v24, "t"

    const-string/jumbo v25, "tus"

    const-string/jumbo v26, "vos"

    const-string/jumbo v27, "usted"

    const-string v28, "l"

    const-string v29, "ella"

    const-string v30, "ello"

    const-string v31, "nosotros"

    const-string v32, "nosotras"

    const-string/jumbo v33, "vosotros"

    const-string/jumbo v34, "vosotras"

    const-string/jumbo v35, "ustedes"

    const-string v36, "ellos"

    const-string v37, "ellas"

    const-string v38, "en"

    const-string/jumbo v39, "y"

    const-string v40, "o"

    const-string v41, "a"

    const-string v42, "por"

    const-string v43, "no"

    const-string v44, "ni"

    const-string v45, "desde"

    const-string v46, "e"

    filled-new-array/range {v1 .. v46}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->AmazonStopwordsSpanish:Ljava/util/Set;

    .line 235
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsSpanish:Ljava/util/Set;

    .line 238
    invoke-static {}, Lorg/apache/lucene/analysis/es/SpanishAnalyzer;->getDefaultStopSet()Ljava/util/Set;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 240
    instance-of v2, v1, [C

    if-eqz v2, :cond_6

    .line 241
    sget-object v2, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsSpanish:Ljava/util/Set;

    new-instance v3, Ljava/lang/String;

    check-cast v1, [C

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 244
    :cond_7
    sget-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->AmazonStopwordsSpanish:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 245
    sget-object v2, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsSpanish:Ljava/util/Set;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 249
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "le"

    const-string v2, "la"

    const-string v3, "l\'"

    const-string v4, "les"

    const-string/jumbo v5, "un"

    const-string/jumbo v6, "une"

    const-string v7, "des"

    const-string v8, "du"

    const-string v9, "de"

    const-string v10, "la"

    const-string v11, "de"

    const-string v12, "l\'"

    const-string v13, "des"

    const-string v14, "au"

    const-string v15, "aux"

    const-string v16, "ce"

    const-string v17, "cet"

    const-string v18, "cette"

    const-string v19, "ces"

    const-string v20, "je"

    const-string/jumbo v21, "tu"

    const-string v22, "elle"

    const-string v23, "il"

    const-string v24, "on"

    const-string v25, "nous"

    const-string/jumbo v26, "vous"

    const-string v27, "elles"

    const-string v28, "ils"

    const-string v29, "comme"

    const-string v30, ""

    const-string v31, "aussi"

    const-string v32, "sur"

    const-string v33, "par"

    const-string v34, "pour"

    const-string v35, "ne"

    const-string v36, "n\'"

    const-string v37, "pas"

    const-string v38, "ou"

    const-string v39, "or"

    const-string v40, "donc"

    const-string v41, "et"

    const-string v42, "dans"

    filled-new-array/range {v1 .. v42}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->AmazonStopwordsFrench:Ljava/util/Set;

    .line 252
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsFrench:Ljava/util/Set;

    .line 255
    invoke-static {}, Lorg/apache/lucene/analysis/fr/FrenchAnalyzer;->getDefaultStopSet()Ljava/util/Set;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 257
    instance-of v2, v1, [C

    if-eqz v2, :cond_9

    .line 258
    sget-object v2, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsFrench:Ljava/util/Set;

    new-instance v3, Ljava/lang/String;

    check-cast v1, [C

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 261
    :cond_a
    sget-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->AmazonStopwordsFrench:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 262
    sget-object v2, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsFrench:Ljava/util/Set;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 266
    :cond_b
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "il"

    const-string v2, "lo"

    const-string v3, "la"

    const-string v4, "l\'"

    const-string v5, "i"

    const-string v6, "gli"

    const-string v7, "le"

    const-string/jumbo v8, "un"

    const-string/jumbo v9, "uno"

    const-string/jumbo v10, "una"

    const-string/jumbo v11, "un\'"

    const-string v12, "del"

    const-string v13, "dello"

    const-string v14, "della"

    const-string v15, "dell\'"

    const-string v16, "dei"

    const-string v17, "degli"

    const-string v18, "degl\'"

    const-string v19, "delle"

    const-string v20, "questo"

    const-string v21, "questa"

    const-string v22, "questi"

    const-string v23, "queste"

    const-string v24, "quello"

    const-string v25, "quella"

    const-string v26, "quelli"

    const-string v27, "codesto"

    const-string v28, "codesta"

    const-string v29, "codesti"

    const-string v30, "codeste"

    const-string v31, "io"

    const-string v32, "noi"

    const-string/jumbo v33, "tu"

    const-string/jumbo v34, "voi"

    const-string v35, "egli"

    const-string v36, "esso"

    const-string v37, "essi"

    const-string v38, "ella"

    const-string v39, "essa"

    const-string v40, "esse"

    const-string v41, "ad"

    const-string v42, "al"

    const-string v43, "allo"

    const-string v44, "agli"

    const-string v45, "all"

    const-string v46, "agl"

    const-string v47, "alla"

    const-string v48, "alle"

    const-string v49, "con"

    const-string v50, "col"

    const-string v51, "coi"

    const-string v52, "da"

    const-string v53, "dal"

    const-string v54, "dallo"

    const-string v55, "dai"

    const-string v56, "dagli"

    const-string v57, "dall"

    const-string v58, "dagl"

    const-string v59, "dalla"

    const-string v60, "dalle"

    const-string v61, "di"

    const-string v62, "del"

    const-string v63, "dello"

    const-string v64, "dei"

    const-string v65, "degli"

    const-string v66, "dell"

    const-string v67, "degl"

    const-string v68, "della"

    const-string v69, "delle"

    const-string v70, "in"

    const-string v71, "nel"

    const-string v72, "nello"

    const-string v73, "nei"

    const-string v74, "nell"

    const-string v75, "negl"

    const-string v76, "nella"

    const-string v77, "nelle"

    const-string v78, "su"

    const-string v79, "sul"

    const-string v80, "sullo"

    const-string v81, "sui"

    const-string v82, "sugli"

    const-string v83, "sull"

    const-string v84, "sugl"

    const-string v85, "sulla"

    const-string v86, "sulle"

    const-string v87, "per"

    const-string v88, "ed"

    const-string v89, "anche"

    const-string v90, "non"

    const-string v91, "a"

    const-string v92, "e"

    const-string v93, "o"

    filled-new-array/range {v1 .. v93}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->AmazonStopwordsItalian:Ljava/util/Set;

    .line 272
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsItalian:Ljava/util/Set;

    .line 275
    invoke-static {}, Lorg/apache/lucene/analysis/it/ItalianAnalyzer;->getDefaultStopSet()Ljava/util/Set;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 277
    instance-of v2, v1, [C

    if-eqz v2, :cond_c

    .line 278
    sget-object v2, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsItalian:Ljava/util/Set;

    new-instance v3, Ljava/lang/String;

    check-cast v1, [C

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 281
    :cond_d
    sget-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->AmazonStopwordsItalian:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 282
    sget-object v2, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsItalian:Ljava/util/Set;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexComplete:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;

    .line 69
    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->searcher:Lorg/apache/lucene/search/IndexSearcher;

    .line 71
    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->directory:Lorg/apache/lucene/store/Directory;

    .line 287
    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexDirectoryName:Ljava/lang/String;

    .line 289
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 291
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    .line 293
    new-instance p1, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexDirectoryName:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;-><init>(Lcom/amazon/kcp/search/BaseBookSearchIndexer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->progressFile:Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

    const-string p1, "en"

    if-eqz p2, :cond_1

    const-string v0, ""

    .line 295
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object p2, p1

    :cond_1
    if-eqz p2, :cond_9

    .line 298
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    goto/16 :goto_1

    .line 303
    :cond_2
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "de"

    .line 304
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    new-instance p1, Lorg/apache/lucene/analysis/de/GermanAnalyzer;

    sget-object p2, Lorg/apache/lucene/util/Version;->LUCENE_36:Lorg/apache/lucene/util/Version;

    sget-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsGerman:Ljava/util/Set;

    invoke-direct {p1, p2, v0}, Lorg/apache/lucene/analysis/de/GermanAnalyzer;-><init>(Lorg/apache/lucene/util/Version;Ljava/util/Set;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->analyzer:Lorg/apache/lucene/analysis/Analyzer;

    goto :goto_0

    .line 306
    :cond_3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 307
    new-instance p1, Lorg/apache/lucene/analysis/en/EnglishAnalyzer;

    sget-object p2, Lorg/apache/lucene/util/Version;->LUCENE_36:Lorg/apache/lucene/util/Version;

    sget-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsEnglish:Ljava/util/Set;

    invoke-direct {p1, p2, v0}, Lorg/apache/lucene/analysis/en/EnglishAnalyzer;-><init>(Lorg/apache/lucene/util/Version;Ljava/util/Set;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->analyzer:Lorg/apache/lucene/analysis/Analyzer;

    goto :goto_0

    :cond_4
    const-string p1, "es"

    .line 308
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 309
    new-instance p1, Lorg/apache/lucene/analysis/es/SpanishAnalyzer;

    sget-object p2, Lorg/apache/lucene/util/Version;->LUCENE_36:Lorg/apache/lucene/util/Version;

    sget-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsSpanish:Ljava/util/Set;

    invoke-direct {p1, p2, v0}, Lorg/apache/lucene/analysis/es/SpanishAnalyzer;-><init>(Lorg/apache/lucene/util/Version;Ljava/util/Set;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->analyzer:Lorg/apache/lucene/analysis/Analyzer;

    goto :goto_0

    :cond_5
    const-string p1, "fr"

    .line 310
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 311
    new-instance p1, Lorg/apache/lucene/analysis/fr/FrenchAnalyzer;

    sget-object p2, Lorg/apache/lucene/util/Version;->LUCENE_36:Lorg/apache/lucene/util/Version;

    sget-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsFrench:Ljava/util/Set;

    invoke-direct {p1, p2, v0}, Lorg/apache/lucene/analysis/fr/FrenchAnalyzer;-><init>(Lorg/apache/lucene/util/Version;Ljava/util/Set;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->analyzer:Lorg/apache/lucene/analysis/Analyzer;

    goto :goto_0

    :cond_6
    const-string p1, "it"

    .line 312
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 313
    new-instance p1, Lorg/apache/lucene/analysis/it/ItalianAnalyzer;

    sget-object p2, Lorg/apache/lucene/util/Version;->LUCENE_36:Lorg/apache/lucene/util/Version;

    sget-object v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->stopwordsItalian:Ljava/util/Set;

    invoke-direct {p1, p2, v0}, Lorg/apache/lucene/analysis/it/ItalianAnalyzer;-><init>(Lorg/apache/lucene/util/Version;Ljava/util/Set;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->analyzer:Lorg/apache/lucene/analysis/Analyzer;

    goto :goto_0

    :cond_7
    const-string p1, "nl"

    .line 314
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 315
    new-instance p1, Lorg/apache/lucene/analysis/nl/DutchAnalyzer;

    sget-object p2, Lorg/apache/lucene/util/Version;->LUCENE_36:Lorg/apache/lucene/util/Version;

    invoke-direct {p1, p2}, Lorg/apache/lucene/analysis/nl/DutchAnalyzer;-><init>(Lorg/apache/lucene/util/Version;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->analyzer:Lorg/apache/lucene/analysis/Analyzer;

    :goto_0
    return-void

    .line 317
    :cond_8
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown language="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 299
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static escapeSearchTerm(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 79
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x22

    if-ge v1, v2, :cond_2

    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2b

    const/16 v5, 0x5c

    if-eq v2, v4, :cond_0

    const/16 v4, 0x21

    if-eq v2, v4, :cond_0

    const/16 v4, 0x28

    if-eq v2, v4, :cond_0

    const/16 v4, 0x29

    if-eq v2, v4, :cond_0

    const/16 v4, 0x7b

    if-eq v2, v4, :cond_0

    const/16 v4, 0x7d

    if-eq v2, v4, :cond_0

    const/16 v4, 0x5b

    if-eq v2, v4, :cond_0

    const/16 v4, 0x5d

    if-eq v2, v4, :cond_0

    const/16 v4, 0x5e

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    const/16 v3, 0x7e

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_0

    if-ne v2, v5, :cond_1

    .line 97
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public declared-synchronized cleanup()V
    .locals 0

    monitor-enter p0

    .line 194
    monitor-exit p0

    return-void
.end method

.method protected createIndexWriterConfig()Lorg/apache/lucene/index/IndexWriterConfig;
    .locals 3

    .line 166
    new-instance v0, Lorg/apache/lucene/index/IndexWriterConfig;

    sget-object v1, Lorg/apache/lucene/util/Version;->LUCENE_36:Lorg/apache/lucene/util/Version;

    iget-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->analyzer:Lorg/apache/lucene/analysis/Analyzer;

    invoke-direct {v0, v1, v2}, Lorg/apache/lucene/index/IndexWriterConfig;-><init>(Lorg/apache/lucene/util/Version;Lorg/apache/lucene/analysis/Analyzer;)V

    return-object v0
.end method

.method protected deleteIndex()V
    .locals 5

    .line 345
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->progressFile:Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->setFurthestIndexedPostion(Ljava/lang/Integer;)V

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->directory:Lorg/apache/lucene/store/Directory;

    invoke-virtual {v0}, Lorg/apache/lucene/store/Directory;->listAll()[Ljava/lang/String;

    move-result-object v0

    .line 348
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 349
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 352
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v2, "LuceneBookStemmedIndexer.deleteIndex()"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public getFarthestIndexedPostion()J
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->progressFile:Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->getFarthestIndexedPostion()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public declared-synchronized getIndexReader()Lorg/apache/lucene/index/IndexReader;
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->LeakedClosableViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    monitor-enter p0

    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->initialize()Z

    .line 335
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->directory:Lorg/apache/lucene/store/Directory;

    invoke-static {v0}, Lorg/apache/lucene/index/IndexReader;->open(Lorg/apache/lucene/store/Directory;)Lorg/apache/lucene/index/IndexReader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 337
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v2, "LuceneBookStemmedIndexer.getIndexReader()"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->deleteIndex()V

    .line 339
    invoke-interface {p0}, Lcom/amazon/kcp/search/IBookSearchIndexer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 341
    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize()Z
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->LeakedClosableViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 120
    monitor-exit p0

    return v1

    .line 123
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexDirectoryName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexAvailable(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 128
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    new-instance v2, Lorg/apache/lucene/store/NIOFSDirectory;

    invoke-direct {v2, v0}, Lorg/apache/lucene/store/NIOFSDirectory;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->directory:Lorg/apache/lucene/store/Directory;

    .line 130
    invoke-static {v2}, Lorg/apache/lucene/index/IndexReader;->open(Lorg/apache/lucene/store/Directory;)Lorg/apache/lucene/index/IndexReader;

    move-result-object v0

    .line 131
    new-instance v2, Lorg/apache/lucene/search/IndexSearcher;

    invoke-direct {v2, v0}, Lorg/apache/lucene/search/IndexSearcher;-><init>(Lorg/apache/lucene/index/IndexReader;)V

    iput-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->searcher:Lorg/apache/lucene/search/IndexSearcher;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    :try_start_3
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create searcher: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    monitor-exit p0

    return v3

    .line 139
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;

    if-nez v2, :cond_2

    .line 141
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 143
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->createIndexWriterConfig()Lorg/apache/lucene/index/IndexWriterConfig;

    move-result-object v4

    .line 144
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/krl/R$integer;->lucene_search_buffer_size_mb:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-double v5, v5

    .line 145
    invoke-virtual {v4, v5, v6}, Lorg/apache/lucene/index/IndexWriterConfig;->setRAMBufferSizeMB(D)Lorg/apache/lucene/index/IndexWriterConfig;

    .line 146
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/krl/R$integer;->lucene_search_max_thread_states:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 147
    invoke-virtual {v4, v2}, Lorg/apache/lucene/index/IndexWriterConfig;->setMaxThreadStates(I)Lorg/apache/lucene/index/IndexWriterConfig;

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 149
    new-instance v2, Lorg/apache/lucene/store/NIOFSDirectory;

    invoke-direct {v2, v0}, Lorg/apache/lucene/store/NIOFSDirectory;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->directory:Lorg/apache/lucene/store/Directory;

    .line 150
    new-instance v0, Lorg/apache/lucene/index/IndexWriter;

    iget-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->directory:Lorg/apache/lucene/store/Directory;

    invoke-direct {v0, v2, v4}, Lorg/apache/lucene/index/IndexWriter;-><init>(Lorg/apache/lucene/store/Directory;Lorg/apache/lucene/index/IndexWriterConfig;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    :cond_2
    :goto_0
    :try_start_5
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    monitor-exit p0

    return v1

    :catch_1
    move-exception v0

    .line 153
    :try_start_6
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create indexer: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 154
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isBookIndexable()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isIndexAvailable(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 7

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexComplete:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->progressFile:Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->getFarthestIndexedPostion()I

    move-result v0

    int-to-long v3, v0

    .line 173
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookLastPosition()I

    move-result p1

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-ltz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexComplete:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexComplete:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 179
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexComplete:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
