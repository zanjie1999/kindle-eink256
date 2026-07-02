.class public final Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;
.super Ljava/lang/Object;
.source "LicensingEventBroadcasterImpl.kt"

# interfaces
.implements Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;


# instance fields
.field private final eventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/audible/license/events/LicensingEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;-><init>(Ljava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;->executor:Ljava/util/concurrent/Executor;

    .line 20
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;->eventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 17
    const-class p1, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/util/Executors;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string p2, "Executors.newSingleThrea\u2026class.java.canonicalName)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static final synthetic access$getEventListeners$p(Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;->eventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method


# virtual methods
.method public onContentRemovalRequest(Lcom/audible/mobile/domain/Asin;)V
    .locals 2

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl$onContentRemovalRequest$1;

    invoke-direct {v1, p0, p1}, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl$onContentRemovalRequest$1;-><init>(Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;Lcom/audible/mobile/domain/Asin;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLicensingError(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/events/LicensingError;)V
    .locals 2

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "licensingError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl$onLicensingError$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl$onLicensingError$1;-><init>(Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;Lcom/audible/mobile/domain/Asin;Lcom/audible/license/events/LicensingError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
