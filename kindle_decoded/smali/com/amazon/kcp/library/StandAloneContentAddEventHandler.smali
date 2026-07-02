.class public Lcom/amazon/kcp/library/StandAloneContentAddEventHandler;
.super Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;
.source "StandAloneContentAddEventHandler.java"


# static fields
.field private static final MAX_FTUE_CAMPAIGN_ITEMS:I = 0xa

.field private static final MAX_FTUE_ITEMS_IN_CAROUSEL:I = 0x15


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/cms/IContentManagementSystem;Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;-><init>(Lcom/amazon/kindle/cms/IContentManagementSystem;Lcom/amazon/kindle/content/ILibraryService;)V

    .line 27
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private excludeFromCarousel(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;I)Z
    .locals 0

    .line 64
    invoke-static {p1}, Lcom/amazon/kcp/util/LibraryUtils;->shouldShowInLibrary(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method protected getNumItemsToAddToCarousel(Lcom/amazon/kindle/content/LibraryContentAddPayload;)I
    .locals 2

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getCampaignSlot()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget p1, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->ftueItemsAddedCount:I

    rsub-int/lit8 p1, p1, 0xa

    return p1

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getSource()Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->PARTIAL_FTUE_SYNC:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    if-eq v0, v1, :cond_2

    .line 81
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getSource()Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->FULL_FTUE_SYNC:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    if-eq v0, v1, :cond_2

    .line 82
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getSource()Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->RESTRICT_CAROUSEL:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7fffffff

    return p1

    .line 83
    :cond_2
    :goto_0
    iget p1, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->ftueItemsAddedCount:I

    rsub-int/lit8 p1, p1, 0x15

    return p1
.end method

.method public onLibraryContentAddPayload(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_ADD"
    .end annotation

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getSource()Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v3}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/kindle/content/ILibraryService;->getItemCountInCarousel(Ljava/lang/String;)I

    move-result v3

    .line 41
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/content/ContentMetadata;

    .line 42
    invoke-direct {p0, v4, v2, v3}, Lcom/amazon/kcp/library/StandAloneContentAddEventHandler;->excludeFromCarousel(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 43
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_2

    .line 51
    iget-object p1, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-interface {p1, v1, v4, v4}, Lcom/amazon/kindle/cms/IContentManagementSystem;->addOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;ZZ)V

    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v3, :cond_3

    .line 53
    iget-object p1, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    invoke-interface {p1, v1, v4}, Lcom/amazon/kindle/cms/IContentManagementSystem;->addOrUpdateMultipleItems(Ljava/util/Collection;Z)V

    .line 57
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 58
    new-instance p1, Lcom/amazon/kindle/content/LibraryContentAddPayload;

    invoke-direct {p1, v0, v2}, Lcom/amazon/kindle/content/LibraryContentAddPayload;-><init>(Ljava/util/Collection;Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;)V

    .line 59
    invoke-super {p0, p1}, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->onLibraryContentAddPayload(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V

    :cond_4
    return-void
.end method
