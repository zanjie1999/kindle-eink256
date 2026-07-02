.class public final Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;
.super Ljava/lang/Object;
.source "ConnectivityBroadcaster.kt"

# interfaces
.implements Lcom/audible/playersdk/common/connectivity/ConnectivityResponder;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final responders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/playersdk/common/connectivity/ConnectivityResponder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;-><init>(Ljava/util/Set;Ljava/util/concurrent/ExecutorService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/audible/playersdk/common/connectivity/ConnectivityResponder;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    const-string v0, "responders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executorService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->responders:Ljava/util/Set;

    iput-object p2, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/concurrent/ExecutorService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 10
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    const-string p4, "Collections.newSetFromMa\u2026sponder, Boolean>()\n    )"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 11
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    const-string p3, "Executors.newSingleThreadExecutor()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;-><init>(Ljava/util/Set;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static final synthetic access$getResponders$p(Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;)Ljava/util/Set;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->responders:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final getRegisteredRespondersSize()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->responders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public onConnectedToAnyNetwork()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster$onConnectedToAnyNetwork$1;

    invoke-direct {v1, p0}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster$onConnectedToAnyNetwork$1;-><init>(Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnectedToCellular()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster$onConnectedToCellular$1;

    invoke-direct {v1, p0}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster$onConnectedToCellular$1;-><init>(Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnectedFromAnyNetwork()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster$onDisconnectedFromAnyNetwork$1;

    invoke-direct {v1, p0}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster$onDisconnectedFromAnyNetwork$1;-><init>(Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnectedFromCellular()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster$onDisconnectedFromCellular$1;

    invoke-direct {v1, p0}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster$onDisconnectedFromCellular$1;-><init>(Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final registerResponder(Lcom/audible/playersdk/common/connectivity/ConnectivityResponder;)V
    .locals 1

    const-string v0, "responder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->responders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unregisterResponder(Lcom/audible/playersdk/common/connectivity/ConnectivityResponder;)V
    .locals 1

    const-string v0, "responder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->responders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
