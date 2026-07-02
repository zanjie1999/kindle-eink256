.class public Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;
.super Ljava/lang/Object;
.source "ContentUpdateEventHandlerForCMS.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentUpdateEventHandlerForCMS"

.field protected static final interestingFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    .line 27
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_MESSAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_READ_ALONG:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLISHER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_XRAY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->DELIVERY_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/cms/IContentManagementSystem;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    .line 55
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private removeItemFromCarousel(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/cms/IContentManagementSystem;->removeItemFromCarousel(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
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

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-string v1, "ContentUpdateEventHandlerForCMS"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2

    .line 62
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->shouldUpdateSingleItem(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 63
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/content/ContentUpdate;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->shouldRemoveItemFromCarousel(Lcom/amazon/kindle/content/ContentUpdate;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/content/ContentUpdate;

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->removeItemFromCarousel(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 68
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update event recieved. Updating CMS."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/content/ContentUpdate;

    invoke-virtual {v5}, Lcom/amazon/kindle/content/ContentUpdate;->getUpdatedFields()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 69
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/content/ContentUpdate;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->shouldAddItemToCarousel(Lcom/amazon/kindle/content/ContentUpdate;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 70
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentUpdate;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/content/ContentUpdate;

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentUpdate;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->isUserInitiated()Z

    move-result v0

    invoke-interface {p1, v1, v4, v2, v0}, Lcom/amazon/kindle/cms/IContentManagementSystem;->addOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;ZZ)V

    goto :goto_2

    .line 73
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/content/ContentUpdate;

    .line 75
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0, v4}, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->shouldRemoveItemFromCarousel(Lcom/amazon/kindle/content/ContentUpdate;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 78
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->removeItemFromCarousel(Lcom/amazon/kindle/content/ContentMetadata;)V

    goto :goto_1

    .line 81
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update event recieved. Updating CMS with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "items"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    invoke-interface {v0, p1, v3}, Lcom/amazon/kindle/cms/IContentManagementSystem;->addOrUpdateMultipleItems(Ljava/util/Collection;Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected shouldAddItemToCarousel(Lcom/amazon/kindle/content/ContentUpdate;)Z
    .locals 7

    .line 116
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentUpdate;->getUpdatedFields()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method protected shouldRemoveItemFromCarousel(Lcom/amazon/kindle/content/ContentUpdate;)Z
    .locals 1

    .line 101
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsInCarousel()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method shouldUpdateSingleItem(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/content/ContentUpdate;

    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentUpdate;->wereFieldsUpdated(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
