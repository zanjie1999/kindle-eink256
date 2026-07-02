.class public Lcom/amazon/kindle/krx/library/ContentUpdateEventHandler;
.super Ljava/lang/Object;
.source "ContentUpdateEventHandler.java"


# instance fields
.field private manager:Lcom/amazon/kindle/krx/library/LibraryManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/library/LibraryManager;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/amazon/kindle/krx/library/ContentUpdateEventHandler;->manager:Lcom/amazon/kindle/krx/library/LibraryManager;

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/krx/library/ContentUpdateEventHandler;->manager:Lcom/amazon/kindle/krx/library/LibraryManager;

    .line 24
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 4
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

    .line 29
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentUpdate;

    .line 30
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    .line 31
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 32
    new-instance v2, Lcom/amazon/kindle/krx/content/Book;

    invoke-direct {v2, v1}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 35
    new-instance v1, Lcom/amazon/kindle/krx/content/Book;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/ContentUpdateEventHandler;->manager:Lcom/amazon/kindle/krx/library/LibraryManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/library/LibraryManager;->getListeners()Ljava/util/Collection;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/library/ILibraryEventListener;

    .line 41
    invoke-interface {v3, v2}, Lcom/amazon/kindle/krx/library/ILibraryEventListener;->onContentUpdate(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 43
    invoke-interface {v3, v2, v1}, Lcom/amazon/kindle/krx/library/ILibraryEventListener;->onContentUpdate(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_0

    :cond_2
    return-void
.end method
