.class public Lcom/amazon/kcp/library/BackIssuesLibraryCounter;
.super Lcom/amazon/kcp/library/LibraryCounter;
.source "BackIssuesLibraryCounter.java"


# instance fields
.field private forceUpdate:Z

.field private previousTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/callback/ICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/amazon/kcp/library/BackIssuesFilter;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/BackIssuesFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->CLOUD:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kcp/library/LibraryCounter;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/callback/ICallback;)V

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/amazon/kcp/library/BackIssuesLibraryCounter;->forceUpdate:Z

    return-void
.end method


# virtual methods
.method protected forceUpdate()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/amazon/kcp/library/BackIssuesLibraryCounter;->forceUpdate:Z

    return v0
.end method

.method protected getUserItemsCountFromDB()I
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/amazon/kcp/library/BackIssuesLibraryCounter;->forceUpdate:Z

    .line 64
    invoke-super {p0}, Lcom/amazon/kcp/library/LibraryCounter;->getUserItemsCountFromDB()I

    move-result v0

    return v0
.end method

.method public onContentAdd(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_ADD"
    .end annotation

    .line 112
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LibraryCounter;->onContentAdd(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V

    return-void
.end method

.method public onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_DELETE"
    .end annotation

    .line 118
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LibraryCounter;->onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V

    return-void
.end method

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

    .line 106
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LibraryCounter;->onContentUpdate(Ljava/util/Collection;)V

    return-void
.end method

.method protected shouldDecrementCounter(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/library/BackIssuesLibraryCounter;->previousTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isPeriodicalBackissue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->isPeriodicalBackissue()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/amazon/kcp/library/BackIssuesLibraryCounter;->previousTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected shouldIncrementCounter(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/library/BackIssuesLibraryCounter;->previousTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryCounter;->isCloudContent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isPeriodicalBackissue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/library/BackIssuesLibraryCounter;->previousTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected shouldIncrementCounter(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/library/BackIssuesLibraryCounter;->previousTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isPeriodicalBackissue()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->isPeriodicalBackissue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/library/BackIssuesLibraryCounter;->previousTitle:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
