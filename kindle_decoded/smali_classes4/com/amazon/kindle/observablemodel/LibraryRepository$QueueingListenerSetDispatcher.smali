.class Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;
.super Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;
.source "LibraryRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueingListenerSetDispatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ChangeUpdate:",
        "Ljava/lang/Object;",
        "Change",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher<",
        "Lcom/amazon/kindle/observablemodel/ContainerID;",
        "TChangeUpdate;TChange",
        "Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountState:Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

.field private final changeList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ContainerID;",
            "Ljava/util/Vector<",
            "TChangeUpdate;>;>;"
        }
    .end annotation
.end field

.field private final listenerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ContainerID;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "TChange",
            "Listener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ContainerID;",
            "Ljava/util/Vector<",
            "TChangeUpdate;>;>;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ContainerID;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "TChange",
            "Listener;",
            ">;>;>;)V"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;-><init>()V

    .line 340
    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;->accountState:Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    .line 341
    iput-object p3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;->changeList:Ljava/util/Map;

    .line 342
    iput-object p4, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;->listenerList:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public handleListenerValueForKey(Lcom/amazon/kindle/observablemodel/ContainerID;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/observablemodel/ContainerID;",
            "TChangeUpdate;TChange",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;->changeList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;->changeList:Ljava/util/Map;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;->changeList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 352
    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 356
    iget-object p3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;->listenerList:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 357
    iget-object p3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;->listenerList:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_1
    iget-object p3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;->listenerList:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 361
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic handleListenerValueForKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 334
    check-cast p1, Lcom/amazon/kindle/observablemodel/ContainerID;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;->handleListenerValueForKey(Lcom/amazon/kindle/observablemodel/ContainerID;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public keyHasNoListeners(Lcom/amazon/kindle/observablemodel/ContainerID;)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;->accountState:Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    iget-object v0, v0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->releaseContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)V

    return-void
.end method

.method public bridge synthetic keyHasNoListeners(Ljava/lang/Object;)V
    .locals 0

    .line 334
    check-cast p1, Lcom/amazon/kindle/observablemodel/ContainerID;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;->keyHasNoListeners(Lcom/amazon/kindle/observablemodel/ContainerID;)V

    return-void
.end method
