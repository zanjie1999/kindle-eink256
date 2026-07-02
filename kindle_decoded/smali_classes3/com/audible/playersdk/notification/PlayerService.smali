.class public final Lcom/audible/playersdk/notification/PlayerService;
.super Landroid/app/Service;
.source "PlayerService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/playersdk/notification/PlayerService$PlayerNotificationServiceBinderImpl;,
        Lcom/audible/playersdk/notification/PlayerService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerService.kt\ncom/audible/playersdk/notification/PlayerService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,161:1\n1587#2,2:162\n*E\n*S KotlinDebug\n*F\n+ 1 PlayerService.kt\ncom/audible/playersdk/notification/PlayerService\n*L\n53#1,2:162\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/audible/playersdk/notification/PlayerService$Companion;

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final logger$1:Lorg/slf4j/Logger;

.field private final playerServiceEventResponders:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/audible/playersdk/notification/PlayerServiceEventResponder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/playersdk/notification/PlayerService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/playersdk/notification/PlayerService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/audible/playersdk/notification/PlayerService;->Companion:Lcom/audible/playersdk/notification/PlayerService$Companion;

    .line 87
    const-class v0, Lcom/audible/playersdk/notification/PlayerService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/audible/playersdk/notification/PlayerService;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    const-class v0, Lcom/audible/playersdk/notification/PlayerService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/playersdk/notification/PlayerService;->logger$1:Lorg/slf4j/Logger;

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/audible/playersdk/notification/PlayerService;->playerServiceEventResponders:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lorg/slf4j/Logger;
    .locals 1

    .line 21
    sget-object v0, Lcom/audible/playersdk/notification/PlayerService;->logger:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static final synthetic access$getPlayerServiceEventResponders$p(Lcom/audible/playersdk/notification/PlayerService;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/audible/playersdk/notification/PlayerService;->playerServiceEventResponders:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/audible/playersdk/notification/PlayerService;->logger$1:Lorg/slf4j/Logger;

    const-string v0, "PlayerNotificationService onBind"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 71
    new-instance p1, Lcom/audible/playersdk/notification/PlayerService$PlayerNotificationServiceBinderImpl;

    invoke-direct {p1, p0}, Lcom/audible/playersdk/notification/PlayerService$PlayerNotificationServiceBinderImpl;-><init>(Lcom/audible/playersdk/notification/PlayerService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/audible/playersdk/notification/PlayerService;->logger$1:Lorg/slf4j/Logger;

    const-string v1, "PlayerNotificationService created."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/audible/playersdk/notification/PlayerService;->logger$1:Lorg/slf4j/Logger;

    const-string v1, "PlayerNotificationService destroyed."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 66
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 28
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_1

    .line 29
    sget-object p1, Lcom/audible/playersdk/notification/PlayerNotificationProvider;->INSTANCE:Lcom/audible/playersdk/notification/PlayerNotificationProvider;

    invoke-virtual {p1}, Lcom/audible/playersdk/notification/PlayerNotificationProvider;->get()Landroid/app/Notification;

    move-result-object p1

    .line 30
    sget-object p2, Lcom/audible/playersdk/notification/PlayerNotificationProvider;->INSTANCE:Lcom/audible/playersdk/notification/PlayerNotificationProvider;

    invoke-virtual {p2}, Lcom/audible/playersdk/notification/PlayerNotificationProvider;->getId()I

    move-result p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 39
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/audible/playersdk/notification/PlayerService;->logger$1:Lorg/slf4j/Logger;

    const-string p2, "PlayerNotificationService started."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/audible/playersdk/notification/PlayerService;->logger$1:Lorg/slf4j/Logger;

    const-string v1, "PlayerNotificationService received onTaskRemoved."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 53
    iget-object p1, p0, Lcom/audible/playersdk/notification/PlayerService;->playerServiceEventResponders:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 162
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/playersdk/notification/PlayerServiceEventResponder;

    .line 54
    invoke-interface {v0}, Lcom/audible/playersdk/notification/PlayerServiceEventResponder;->onTaskRemoved()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 59
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 60
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
