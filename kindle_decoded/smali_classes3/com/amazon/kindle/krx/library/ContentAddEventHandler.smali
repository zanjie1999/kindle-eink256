.class public Lcom/amazon/kindle/krx/library/ContentAddEventHandler;
.super Ljava/lang/Object;
.source "ContentAddEventHandler.java"


# instance fields
.field private manager:Lcom/amazon/kindle/krx/library/LibraryManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/library/LibraryManager;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/amazon/kindle/krx/library/ContentAddEventHandler;->manager:Lcom/amazon/kindle/krx/library/LibraryManager;

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/krx/library/ContentAddEventHandler;->manager:Lcom/amazon/kindle/krx/library/LibraryManager;

    .line 24
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onLibraryContentAddPayload(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_ADD"
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentMetadata;

    .line 31
    new-instance v1, Lcom/amazon/kindle/krx/content/Book;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/ContentAddEventHandler;->manager:Lcom/amazon/kindle/krx/library/LibraryManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/library/LibraryManager;->getListeners()Ljava/util/Collection;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/library/ILibraryEventListener;

    .line 34
    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/library/ILibraryEventListener;->onContentAdd(Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_0

    :cond_1
    return-void
.end method
