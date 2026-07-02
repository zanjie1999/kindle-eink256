.class public Lcom/amazon/kcp/library/LibraryCounter;
.super Lcom/amazon/kcp/library/AbstractUserItemsCounter;
.source "LibraryCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LibraryCounter$CounterFilterWrapper;
    }
.end annotation


# instance fields
.field private filter:Lcom/amazon/kcp/library/LibraryContentFilter;

.field private groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/library/LibraryCounter;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/content/ILibraryService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p3}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;-><init>(Lcom/amazon/kindle/callback/ICallback;)V

    .line 81
    new-instance p3, Lcom/amazon/kcp/library/LibraryCounter$CounterFilterWrapper;

    invoke-direct {p3, p0, p1}, Lcom/amazon/kcp/library/LibraryCounter$CounterFilterWrapper;-><init>(Lcom/amazon/kcp/library/LibraryCounter;Lcom/amazon/kcp/library/LibraryContentFilter;)V

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryCounter;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 82
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryCounter;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    return-void
.end method

.method private isLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    .line 192
    sget-object v0, Lcom/amazon/kcp/library/LibraryConstants$ContentStates;->ON_DEVICE_CONTENT_STATES:Ljava/util/List;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected getUserItemsCountFromDB()I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryCounter;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryCursorFactory;->queryNumberOfLibraryItems(Lcom/amazon/kcp/library/LibraryContentFilter;)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method protected isCloudContent(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 1

    .line 184
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onContentAdd(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_ADD"
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object p1

    const/4 v0, 0x0

    .line 140
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    .line 141
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/LibraryCounter;->shouldIncrementCounter(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->executeUpdateCallback()V

    :cond_3
    return-void
.end method

.method public onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_DELETE"
    .end annotation

    .line 125
    iget-object p1, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p1, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->resetCountFromDB()V

    return-void
.end method

.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 103
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentUpdate;

    .line 104
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    .line 105
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 107
    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryCounter;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v4, v1}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryCounter;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v4, v2}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/amazon/kcp/library/LibraryCounter;->shouldIncrementCounter(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p0, v2, v1}, Lcom/amazon/kcp/library/LibraryCounter;->shouldDecrementCounter(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 119
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->executeUpdateCallback()V

    :cond_5
    return-void
.end method

.method protected shouldDecrementCounter(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryCounter;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 171
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryCounter;->isLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/LibraryCounter;->isLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryCounter;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 172
    :cond_1
    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->CLOUD:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne v0, v1, :cond_3

    .line 173
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryCounter;->isCloudContent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/amazon/kcp/library/LibraryCounter;->isCloudContent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryCounter;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryCounter;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryCounter;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method protected shouldIncrementCounter(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryCounter;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryCounter;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->CLOUD:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne v0, v1, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryCounter;->isCloudContent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryCounter;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne v0, v1, :cond_2

    .line 156
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryCounter;->isLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected shouldIncrementCounter(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryCounter;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 161
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryCounter;->isLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/LibraryCounter;->isLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryCounter;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 162
    :cond_1
    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->CLOUD:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne v0, v1, :cond_3

    .line 163
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryCounter;->isCloudContent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/amazon/kcp/library/LibraryCounter;->isCloudContent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryCounter;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryCounter;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryCounter;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method
