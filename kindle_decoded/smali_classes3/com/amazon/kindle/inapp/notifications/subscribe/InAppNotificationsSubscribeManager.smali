.class public Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;
.super Ljava/lang/Object;
.source "InAppNotificationsSubscribeManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager$Holder;,
        Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# instance fields
.field private final subscribers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;->Companion:Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager$Companion;

    .line 17
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager$Companion$instance$2;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;->subscribers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public getSubscriber(Ljava/lang/String;)Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriber;
    .locals 1

    const-string v0, "tapActionName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;->subscribers:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriber;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/subscribe/UnsupportedInAppNotificationsSubscriber;

    invoke-direct {p1}, Lcom/amazon/kindle/inapp/notifications/subscribe/UnsupportedInAppNotificationsSubscriber;-><init>()V

    :goto_0
    return-object p1
.end method

.method public final declared-synchronized subscribe(Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriber;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {p1}, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriber;->supportedTapActions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;->subscribers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 29
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
