.class public Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;
.super Ljava/lang/Object;
.source "GestureHandlerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static gestureHandlerComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eventHandlers:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;"
        }
    .end annotation
.end field

.field private gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

.field private readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory$1;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->gestureHandlerComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->eventHandlers:Ljava/util/TreeSet;

    .line 55
    new-instance v0, Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/gestures/GestureService;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    .line 56
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 57
    new-instance p1, Ljava/util/TreeSet;

    sget-object v0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->gestureHandlerComparator:Ljava/util/Comparator;

    invoke-direct {p1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->eventHandlers:Ljava/util/TreeSet;

    return-void
.end method

.method private initHandlerList()Z
    .locals 4

    .line 119
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->clearHandlers()V

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->populateGestureFactory(Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;)V

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 127
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 130
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContent(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 132
    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->eventHandlers:Ljava/util/TreeSet;

    monitor-enter v2

    .line 134
    :try_start_0
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    .line 135
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getGestureHandlerProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 137
    iget-object v3, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->eventHandlers:Ljava/util/TreeSet;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 139
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 142
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    new-instance v1, Lcom/amazon/kcp/reader/gestures/GestureService$GestureServiceEvent;

    sget-object v2, Lcom/amazon/kcp/events/ReaderEventTypes;->INITIALIZING_GESTURE_HANDLERS_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/gestures/GestureService$GestureServiceEvent;-><init>(Lcom/amazon/kcp/events/ReaderEventTypes;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->publishEvent(Lcom/amazon/kcp/reader/gestures/GestureService$GestureServiceEvent;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addHandler(Lcom/amazon/kindle/krx/gesture/IGestureHandler;)Z
    .locals 3

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->eventHandlers:Ljava/util/TreeSet;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->eventHandlers:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onActivate()V

    .line 81
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-interface {p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onActivate()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 81
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 83
    sget-object v0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception adding new handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public addHandlerList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;)Z"
        }
    .end annotation

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->eventHandlers:Ljava/util/TreeSet;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->eventHandlers:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 100
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 102
    invoke-interface {v0}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onActivate()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 100
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 106
    sget-object v0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception adding new handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public clearHandlers()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->eventHandlers:Ljava/util/TreeSet;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->eventHandlers:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 153
    invoke-interface {v2}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onDeactivate()V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->eventHandlers:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    .line 156
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->destroy()V

    return-void
.end method

.method public getHandlers()Ljava/util/TreeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->eventHandlers:Ljava/util/TreeSet;

    monitor-enter v0

    .line 62
    :try_start_0
    new-instance v1, Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->eventHandlers:Ljava/util/TreeSet;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-object v0
.end method

.method public getService()Lcom/amazon/kcp/reader/gestures/GestureService;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    return-object v0
.end method

.method public initHandlers(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->setLayout(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Z

    .line 167
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 168
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->initHandlerList()Z

    move-result p1

    return p1
.end method
