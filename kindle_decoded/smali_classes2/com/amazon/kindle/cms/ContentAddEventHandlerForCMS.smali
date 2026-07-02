.class public Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;
.super Ljava/lang/Object;
.source "ContentAddEventHandlerForCMS.java"


# static fields
.field private static final MAX_FTUE_ITEMS_IN_CAROUSEL:I = 0x19

.field private static final TAG:Ljava/lang/String; = "ContentAddEventHandlerForCMS"


# instance fields
.field protected cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

.field protected ftueItemsAddedCount:I

.field protected libraryService:Lcom/amazon/kindle/content/ILibraryService;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/cms/IContentManagementSystem;Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    .line 47
    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 48
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private addMostRecentBackIssues(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->getMostRecentBackIssues(Ljava/util/Collection;)Ljava/util/HashMap;

    move-result-object v0

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->addMostRecentIssuesToItemsToAdd(Ljava/util/Collection;Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method protected addMostRecentIssuesToItemsToAdd(Ljava/util/Collection;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method protected getMostRecentBackIssues(Ljava/util/Collection;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 94
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    .line 95
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->supportsBackIssues(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/kindle/content/ILibraryService;->getIdOfMostRecentIssueOfPeriodical(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 105
    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected getNumItemsToAddToCarousel(Lcom/amazon/kindle/content/LibraryContentAddPayload;)I
    .locals 2

    .line 169
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getSource()Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->PARTIAL_FTUE_SYNC:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    if-eq v0, v1, :cond_1

    .line 170
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getSource()Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->FULL_FTUE_SYNC:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    if-eq v0, v1, :cond_1

    .line 171
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getSource()Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->RESTRICT_CAROUSEL:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    return p1

    .line 172
    :cond_1
    :goto_0
    iget p1, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->ftueItemsAddedCount:I

    rsub-int/lit8 p1, p1, 0x19

    return p1
.end method

.method protected incrementAndGetCarouselCount(Ljava/util/List;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 148
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-gtz p2, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-static {v1}, Lcom/amazon/kindle/cms/CMSUtils;->restrictFromCarousel(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 154
    iget v1, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->ftueItemsAddedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->ftueItemsAddedCount:I

    :cond_1
    add-int/lit8 v1, v0, 0x1

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 181
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 182
    iput p1, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->ftueItemsAddedCount:I

    :cond_0
    return-void
.end method

.method public onLibraryContentAddPayload(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_ADD"
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "ContentAddEventHandlerForCMS"

    const-string v2, "Add event received. Adding to CMS"

    .line 54
    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->getNumItemsToAddToCarousel(Lcom/amazon/kindle/content/LibraryContentAddPayload;)I

    move-result p1

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->incrementAndGetCarouselCount(Ljava/util/List;I)I

    move-result p1

    .line 67
    invoke-direct {p0, v0}, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->addMostRecentBackIssues(Ljava/util/Collection;)V

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 71
    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentMetadata;

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1, v0, v3, v2}, Lcom/amazon/kindle/cms/IContentManagementSystem;->addOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;ZZ)V

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-lt p1, v1, :cond_2

    .line 74
    iget-object p1, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    invoke-interface {p1, v0, v3}, Lcom/amazon/kindle/cms/IContentManagementSystem;->addOrUpdateMultipleItems(Ljava/util/Collection;Z)V

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    add-int/2addr p1, v3

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1, v3}, Lcom/amazon/kindle/cms/IContentManagementSystem;->addOrUpdateMultipleItems(Ljava/util/Collection;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected supportsBackIssues(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    .line 134
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq v1, p1, :cond_1

    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
