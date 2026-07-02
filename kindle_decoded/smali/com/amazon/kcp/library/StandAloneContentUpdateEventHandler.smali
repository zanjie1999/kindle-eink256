.class public Lcom/amazon/kcp/library/StandAloneContentUpdateEventHandler;
.super Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;
.source "StandAloneContentUpdateEventHandler.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    sget-object v0, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->interestingFields:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/cms/IContentManagementSystem;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;-><init>(Lcom/amazon/kindle/cms/IContentManagementSystem;)V

    return-void
.end method

.method private excludeFromCarousel(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 0

    .line 46
    invoke-static {p1}, Lcom/amazon/kcp/util/LibraryUtils;->shouldShowInLibrary(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 0
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

    .line 52
    invoke-super {p0, p1}, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->onContentUpdate(Ljava/util/Collection;)V

    return-void
.end method

.method protected shouldAddItemToCarousel(Lcom/amazon/kindle/content/ContentUpdate;)Z
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;->shouldAddItemToCarousel(Lcom/amazon/kindle/content/ContentUpdate;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/StandAloneContentUpdateEventHandler;->excludeFromCarousel(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected shouldRemoveItemFromCarousel(Lcom/amazon/kindle/content/ContentUpdate;)Z
    .locals 1

    .line 29
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getIsInCarousel()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 42
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
