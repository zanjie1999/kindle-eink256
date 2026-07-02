.class public Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;
.super Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;
.source "PinyinDecorationProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method private declared-synchronized createDecorationsForPage(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/List;
    .locals 12
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

    .line 62
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 63
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openPinyinModel()Lcom/amazon/kcp/wordwise/gloss/PinyinModel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 71
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;->TAG:Ljava/lang/String;

    const-string v1, "Pinyin model is null"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 75
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getPinyinDifficultyLevel()I

    move-result v3

    invoke-virtual {v2, v0, p1, v3}, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->getPinyinEntriesForPage(III)Ljava/util/Collection;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :try_start_3
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;

    if-eqz v3, :cond_1

    .line 84
    new-instance v11, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;

    invoke-virtual {v3}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getPinyin()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-virtual {v3}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getRowid()I

    move-result v6

    const/4 v7, 0x0

    new-instance v8, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {v3}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getStartPosition()I

    move-result v4

    invoke-direct {v8, v4}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    new-instance v9, Lcom/amazon/kindle/model/Annotations/IntPosition;

    .line 86
    invoke-virtual {v3}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getEndPosition()I

    move-result v3

    invoke-direct {v9, v3}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->getDecorationColor()I

    move-result v10

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;-><init>(Ljava/lang/String;IZLcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;I)V

    .line 88
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pinyin decorations for page from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " created. Number of decorations = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Difficulty="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getPinyinDifficultyLevel()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-interface {v2, v3, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    monitor-exit p0

    return-object v1

    .line 78
    :catch_0
    :try_start_4
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;->TAG:Ljava/lang/String;

    const-string v1, "getPinyinEntries failed. Return empty list"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPage;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;->get(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/Collection;
    .locals 2
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

    if-eqz p1, :cond_3

    .line 43
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

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

    .line 48
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 51
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;->createDecorationsForPage(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 44
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onContentDecorationEvent(Lcom/amazon/kindle/krx/events/ContentDecorationEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    return-void
.end method
