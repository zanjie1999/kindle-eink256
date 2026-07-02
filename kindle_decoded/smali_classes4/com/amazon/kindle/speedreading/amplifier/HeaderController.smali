.class public Lcom/amazon/kindle/speedreading/amplifier/HeaderController;
.super Ljava/lang/Object;
.source "HeaderController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;
    }
.end annotation


# instance fields
.field private amplifierSessionAlive:Z

.field private chapterTitleView:Landroid/widget/TextView;

.field private chapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/speedreading/toc/ChapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final clipsProvider:Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;

.field private context:Landroid/content/Context;

.field private currentChapter:Lcom/amazon/kindle/speedreading/toc/ChapterItem;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private final logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private ttrView:Landroid/widget/TextView;


# direct methods
.method static synthetic access$000(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->chapterTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;)Lcom/amazon/kindle/speedreading/toc/ChapterItem;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->currentChapter:Lcom/amazon/kindle/speedreading/toc/ChapterItem;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;)Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->clipsProvider:Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;J)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->getTimeRemainingString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->ttrView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;)Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-object p0
.end method

.method private getTimeRemainingString(J)Ljava/lang/String;
    .locals 12

    .line 273
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v1, 0xe10

    .line 275
    div-long v3, p1, v1

    .line 276
    rem-long/2addr p1, v1

    const-wide/16 v1, 0x3c

    div-long/2addr p1, v1

    const-wide/16 v1, 0x0

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v9, v3, v1

    if-lez v9, :cond_5

    const/4 v9, 0x2

    cmp-long v10, v3, v5

    if-lez v10, :cond_0

    cmp-long v11, p1, v5

    if-lez v11, :cond_0

    .line 282
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/speedreading/R$string;->ttr_hoursmins:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v8

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_0
    if-nez v10, :cond_1

    cmp-long v11, p1, v5

    if-lez v11, :cond_1

    .line 286
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/speedreading/R$string;->ttr_hourmins:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v8

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_1
    if-lez v10, :cond_2

    cmp-long v11, p1, v5

    if-nez v11, :cond_2

    .line 290
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/speedreading/R$string;->ttr_hoursmin:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v8

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_2
    if-nez v10, :cond_3

    cmp-long v11, p1, v5

    if-nez v11, :cond_3

    .line 294
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/speedreading/R$string;->ttr_hourmin:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v8

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    if-lez v10, :cond_4

    cmp-long v5, p1, v1

    if-nez v5, :cond_4

    .line 298
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->context:Landroid/content/Context;

    sget p2, Lcom/amazon/kindle/speedreading/R$string;->ttr_hours:I

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    if-nez v10, :cond_7

    cmp-long v5, p1, v1

    if-nez v5, :cond_7

    .line 302
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->context:Landroid/content/Context;

    sget p2, Lcom/amazon/kindle/speedreading/R$string;->ttr_hour:I

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    cmp-long v1, p1, v5

    if-lez v1, :cond_6

    .line 309
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/speedreading/R$string;->ttr_mins:I

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 313
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->context:Landroid/content/Context;

    sget p2, Lcom/amazon/kindle/speedreading/R$string;->ttr_min:I

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    :cond_7
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateChapterTitle()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->currentChapter:Lcom/amazon/kindle/speedreading/toc/ChapterItem;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->getTocEntry()Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/speedreading/R$string;->amplify_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->chapterTitleView:Landroid/widget/TextView;

    new-instance v2, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$1;-><init>(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateCurrentChapter()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->chapters:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->currentChapter:Lcom/amazon/kindle/speedreading/toc/ChapterItem;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->containsPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->chapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/speedreading/toc/ChapterItem;

    .line 97
    invoke-virtual {v2, v0}, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->containsPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    iput-object v2, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->currentChapter:Lcom/amazon/kindle/speedreading/toc/ChapterItem;

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->currentChapter:Lcom/amazon/kindle/speedreading/toc/ChapterItem;

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 2

    .line 144
    iget-boolean p1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->amplifierSessionAlive:Z

    if-eqz p1, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->updateCurrentChapter()V

    .line 147
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->updateChapterTitle()V

    .line 149
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    .line 151
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->currentChapter:Lcom/amazon/kindle/speedreading/toc/ChapterItem;

    if-eqz p2, :cond_0

    .line 153
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;-><init>(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/reader/IPosition;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public onStopAmplify(Lcom/amazon/kindle/speedreading/amplifier/AmplifyStoppedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 75
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->amplifierSessionAlive:Z

    return-void
.end method
