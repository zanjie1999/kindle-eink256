.class public Lcom/amazon/kindle/cms/ContentDeleteEventHandlerForCMS;
.super Ljava/lang/Object;
.source "ContentDeleteEventHandlerForCMS.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentDeleteEventHandlerForCMS"


# instance fields
.field private cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;


# virtual methods
.method public handleEvent(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_DELETE"
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "ContentDeleteEventHandlerForCMS"

    const-string v2, "Delete event recieved. Removing from CMS"

    .line 31
    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 33
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    iget-object v2, p0, Lcom/amazon/kindle/cms/ContentDeleteEventHandlerForCMS;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/amazon/kindle/cms/IContentManagementSystem;->removeItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentDeleteEventHandlerForCMS;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/amazon/kindle/cms/IContentManagementSystem;->removeMultipleItems(Ljava/lang/String;Ljava/util/Collection;)V

    :cond_1
    return-void
.end method
