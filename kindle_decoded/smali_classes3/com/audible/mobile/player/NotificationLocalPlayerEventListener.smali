.class public final Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "NotificationLocalPlayerEventListener.java"


# instance fields
.field private final logger:Lorg/slf4j/Logger;

.field private final notificationFactory:Lcom/audible/mobile/notification/NotificationFactory;

.field private final playerService:Landroid/app/Service;


# direct methods
.method public constructor <init>(Landroid/app/Service;Lcom/audible/mobile/notification/NotificationFactory;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    .line 15
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    .line 30
    iput-object p1, p0, Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;->playerService:Landroid/app/Service;

    .line 31
    iput-object p2, p0, Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;->notificationFactory:Lcom/audible/mobile/notification/NotificationFactory;

    return-void
.end method


# virtual methods
.method public onPlay()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v1, "Received AudibleReadyPlayer event onPlay - starting foreground"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;->playerService:Landroid/app/Service;

    iget-object v1, p0, Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;->notificationFactory:Lcom/audible/mobile/notification/NotificationFactory;

    invoke-interface {v1}, Lcom/audible/mobile/notification/NotificationFactory;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;->notificationFactory:Lcom/audible/mobile/notification/NotificationFactory;

    invoke-interface {v2}, Lcom/audible/mobile/framework/Factory;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onReset(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v0, "Received AudibleReadyPlayer event onReset - stopping foreground"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;->playerService:Landroid/app/Service;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v1, "Received AudibleReadyPlayer event onStop - stopping foreground"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;->playerService:Landroid/app/Service;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method
