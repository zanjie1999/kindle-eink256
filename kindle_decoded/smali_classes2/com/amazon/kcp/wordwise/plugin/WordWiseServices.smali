.class public Lcom/amazon/kcp/wordwise/plugin/WordWiseServices;
.super Ljava/lang/Object;
.source "WordWiseServices.java"

# interfaces
.implements Lcom/amazon/kindle/krx/pluginservices/wordwise/IWordWiseServices;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kcp/wordwise/plugin/WordWiseServices;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWiseServices;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/plugin/WordWiseServices;->glosses:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized getGlossesBetween(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntries;
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 40
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 43
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    .line 48
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    .line 50
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openGlossModelForCurrentBook()Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 51
    invoke-interface {v4}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 52
    new-instance v5, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntries;

    invoke-direct {v5, p1, p2, v3}, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntries;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/IBook;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/plugin/WordWiseServices;->glosses:Ljava/util/Map;

    invoke-interface {v4, p1, p2, v0}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->getGlosses(IILjava/util/Map;)V

    .line 54
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/plugin/WordWiseServices;->glosses:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/plugin/WordWiseServices;->glosses:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    .line 58
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getDifficulty()I

    move-result v3

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getWordWiseDifficultyLevel()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 59
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v1, p2}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    .line 60
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getDifficulty()I

    move-result v3

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->isLowConfidence()Z

    move-result v0

    invoke-virtual {v5, p2, v3, v0}, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntries;->addEntry(Lcom/amazon/kindle/krx/reader/IPosition;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    move-object v0, v5

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception p1

    .line 65
    :goto_1
    :try_start_3
    sget-object p2, Lcom/amazon/kcp/wordwise/plugin/WordWiseServices;->TAG:Ljava/lang/String;

    const-string v1, "Unable to provide gloss entries"

    invoke-interface {v2, p2, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :cond_2
    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isShowingFtueWhileEnabled()Z
    .locals 3

    .line 77
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->hasShownFtueDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 86
    :cond_1
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->isDownloadingSidecar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 87
    :cond_3
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWiseServices;->TAG:Ljava/lang/String;

    const-string v2, "Showing FTUE since Word Wise is on"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    return v1
.end method
