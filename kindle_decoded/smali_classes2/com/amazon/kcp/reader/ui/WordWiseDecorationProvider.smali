.class public Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "WordWiseDecorationProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;


# static fields
.field private static final GLOSS_FILTERED:Ljava/lang/String; = "GlossFiltered reason: %s, senseId: %d, start: %d"

.field private static final MULTIPLE_CHOICE_INDICATOR:Ljava/lang/String; = " \u25bc"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected currentBook:Lcom/amazon/kindle/krx/content/IBook;

.field private currentColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

.field private final decorationCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected drawnSenseIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private glosses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;",
            ">;"
        }
    .end annotation
.end field

.field private hasLowConfidenceDrawn:Z

.field private lastOpenedBookId:Ljava/lang/String;

.field private final resources:Landroid/content/res/Resources;

.field protected final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->decorationCache:Ljava/util/Map;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->lastOpenedBookId:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->drawnSenseIds:Ljava/util/Set;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->hasLowConfidenceDrawn:Z

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->glosses:Ljava/util/Map;

    .line 85
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 86
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/List;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->createDecorationsForPage(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized createDecorationsForPage(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPage;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 235
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->getGlossesInRange(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/Map;

    move-result-object v1

    .line 237
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->drawnSenseIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const/4 v2, 0x0

    .line 238
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->hasLowConfidenceDrawn:Z

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 242
    new-instance v1, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$3;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;)V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 250
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->getDecorationColor()I

    move-result v1

    .line 251
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->getDecorationLocale()Ljava/util/Locale;

    move-result-object v3

    .line 252
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    .line 253
    invoke-direct {p0, v4}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->isValidEntry(Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-direct {p0, v4, v1, v3}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->createWordWiseDecoration(Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;ILjava/util/Locale;)Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;

    move-result-object v5

    .line 257
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->drawnSenseIds:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getSenseId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    iget-boolean v5, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->hasLowConfidenceDrawn:Z

    invoke-virtual {v4}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->isLowConfidence()Z

    move-result v4

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->hasLowConfidenceDrawn:Z

    goto :goto_0

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->decorationCache:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 264
    :try_start_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->decorationCache:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_2

    .line 267
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 268
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->decorationCache:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 272
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private createDecorationsForPageAsync(Lcom/amazon/kindle/krx/reader/IPage;)V
    .locals 2

    .line 205
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$2;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;Lcom/amazon/kindle/krx/reader/IPage;)V

    .line 225
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private createWordWiseDecoration(Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;ILjava/util/Locale;)Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;
    .locals 9

    .line 349
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getShortDefinition()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->isLowConfidence()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, " \u25bc"

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 353
    new-instance v5, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getStartPosition()I

    move-result v0

    invoke-direct {v5, v0}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 354
    new-instance v6, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getLastStartPosition()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 356
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getSenseId()I

    move-result v3

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->isLowConfidence()Z

    move-result v4

    move-object v1, v0

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;-><init>(Ljava/lang/String;IZLcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ILjava/util/Locale;)V

    return-object v0
.end method

.method private getGlossesInRange(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPage;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;",
            ">;"
        }
    .end annotation

    .line 328
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openGlossModelForCurrentBook()Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 329
    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 334
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 336
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->glosses:Ljava/util/Map;

    invoke-interface {v0, v1, p1, v2}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getGlosses(IILjava/util/Map;)V

    .line 337
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->glosses:Ljava/util/Map;

    return-object p1

    .line 330
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->TAG:Ljava/lang/String;

    const-string v1, "GlossModel null or not valid"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private isValidEntry(Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;)Z
    .locals 8

    .line 282
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->isSuppressed()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-string v3, "GlossFiltered reason: %s, senseId: %d, start: %d"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v6, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "Suppressed"

    aput-object v7, v2, v5

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getSenseId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getStartPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v6, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 287
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getShortDefinition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v6, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "Missing_Short_Def"

    aput-object v7, v2, v5

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getSenseId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getStartPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v6, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 292
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getDifficulty()I

    move-result v0

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getWordWiseDifficultyLevel()I

    move-result v6

    if-le v0, v6, :cond_2

    .line 293
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v6, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "Difficulty"

    aput-object v7, v2, v5

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getSenseId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getStartPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v6, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 297
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->isLowConfidence()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isLowConfidenceEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v6, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "LowConfidenceDisabled"

    aput-object v7, v2, v5

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getSenseId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getStartPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v6, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->drawnSenseIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getSenseId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " position="

    if-eqz v0, :cond_5

    .line 304
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLOSS_FILTERED: Sense_Id: senseID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getSenseId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getStartPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    return v5

    .line 310
    :cond_5
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->hasLowConfidenceDrawn:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->isLowConfidence()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 311
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLOSS_FILTERED: Multiple_Choice: senseID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getSenseId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getStartPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_6
    return v5

    :cond_7
    return v4
.end method


# virtual methods
.method public final clearDecorationCache()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->decorationCache:Ljava/util/Map;

    monitor-enter v0

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->decorationCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 415
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPage;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->get(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPage;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 161
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_2

    .line 166
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->lastOpenedBookId:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->clearDecorationCache()V

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->decorationCache:Ljava/util/Map;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->decorationCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 179
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->decorationCache:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 180
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->decorationCache:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 181
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 182
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 183
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_4

    .line 186
    monitor-exit v0

    return-object v1

    .line 192
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->isGlossModelLoaded()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 196
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->createDecorationsForPageAsync(Lcom/amazon/kindle/krx/reader/IPage;)V

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 201
    :cond_5
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->createDecorationsForPage(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 192
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 162
    :cond_6
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDecorationColor()I
    .locals 6

    .line 364
    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSelectedWordWiseLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 365
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$4;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ww/R$color;->wordwise_glossdecoration_color_white_mode_cn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ww/R$color;->wordwise_glossdecoration_color_green_mode_cn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ww/R$color;->wordwise_glossdecoration_color_sepia_mode_cn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ww/R$color;->wordwise_glossdecoration_color_night_mode_cn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ww/R$color;->wordwise_glossdecoration_color_black_mode_cn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 379
    :cond_4
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$4;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    .line 390
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ww/R$color;->wordwise_glossdecoration_color_white_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 387
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ww/R$color;->wordwise_glossdecoration_color_green_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 385
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ww/R$color;->wordwise_glossdecoration_color_sepia_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 383
    :cond_7
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ww/R$color;->wordwise_glossdecoration_color_night_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 381
    :cond_8
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ww/R$color;->wordwise_glossdecoration_color_black_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getDecorationLocale()Ljava/util/Locale;
    .locals 3

    .line 401
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 402
    sget-object v1, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSelectedWordWiseLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    :cond_0
    return-object v0
.end method

.method public getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
    .locals 1

    .line 149
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->WordWise:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/reader/IPage;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 56
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPage;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->getPriority(Lcom/amazon/kindle/krx/reader/IPage;)I

    move-result p1

    return p1
.end method

.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 128
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->lastOpenedBookId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 130
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->currentColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 1

    .line 140
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->lastOpenedBookId:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->clearDecorationCache()V

    :cond_1
    const/4 p2, 0x0

    .line 143
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->lastOpenedBookId:Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method

.method public onColorModeChangeEvent(Lcom/amazon/kindle/event/ColorModeChangeEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 113
    invoke-virtual {p1}, Lcom/amazon/kindle/event/ColorModeChangeEvent;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->currentColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    if-eq v0, v1, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/amazon/kindle/event/ColorModeChangeEvent;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->currentColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    .line 117
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->lastOpenedBookId:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->clearDecorationCache()V

    :cond_0
    return-void
.end method

.method public onContentDecorationEvent(Lcom/amazon/kindle/krx/events/ContentDecorationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 98
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->getStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->WordWise:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->getGestureType()Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;->Tap:Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;

    if-ne v0, v1, :cond_0

    .line 99
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 100
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;Lcom/amazon/kindle/krx/events/ContentDecorationEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
