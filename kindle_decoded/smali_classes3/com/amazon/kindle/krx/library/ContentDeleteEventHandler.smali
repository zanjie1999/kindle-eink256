.class public Lcom/amazon/kindle/krx/library/ContentDeleteEventHandler;
.super Ljava/lang/Object;
.source "ContentDeleteEventHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private manager:Lcom/amazon/kindle/krx/library/LibraryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/krx/library/ContentDeleteEventHandler;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/library/ContentDeleteEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/library/LibraryManager;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/amazon/kindle/krx/library/ContentDeleteEventHandler;->manager:Lcom/amazon/kindle/krx/library/LibraryManager;

    .line 24
    iput-object p1, p0, Lcom/amazon/kindle/krx/library/ContentDeleteEventHandler;->manager:Lcom/amazon/kindle/krx/library/LibraryManager;

    .line 25
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_DELETE"
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcom/amazon/kindle/krx/library/ContentDeleteEventHandler;->manager:Lcom/amazon/kindle/krx/library/LibraryManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/library/LibraryManager;->getListeners()Ljava/util/Collection;

    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/library/ILibraryEventListener;

    const/4 v3, 0x0

    .line 34
    invoke-interface {v2, v0, v3}, Lcom/amazon/kindle/krx/library/ILibraryEventListener;->onContentDelete(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onContentRevoked(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_REVOKED"
    .end annotation

    .line 41
    new-instance v0, Lcom/amazon/kindle/krx/content/Book;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 42
    iget-object p1, p0, Lcom/amazon/kindle/krx/library/ContentDeleteEventHandler;->manager:Lcom/amazon/kindle/krx/library/LibraryManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/library/LibraryManager;->getListeners()Ljava/util/Collection;

    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/library/ILibraryEventListener;

    .line 44
    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/library/ILibraryEventListener;->onContentRevoked(Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_0

    :cond_0
    return-void
.end method
