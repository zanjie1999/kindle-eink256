.class public Lcom/audible/android/kcp/hushpuppy/handler/AudiobookFileNotFoundEventHandler;
.super Ljava/lang/Object;
.source "AudiobookFileNotFoundEventHandler.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/hushpuppy/handler/AudiobookFileNotFoundEventHandler;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/hushpuppy/handler/AudiobookFileNotFoundEventHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/audible/android/kcp/hushpuppy/handler/AudiobookFileNotFoundEventHandler;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onEventAsync(Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;)V
    .locals 3

    .line 31
    sget-object p1, Lcom/audible/android/kcp/hushpuppy/handler/AudiobookFileNotFoundEventHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received LocalAudiobookFileNotFoundEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/audible/android/kcp/hushpuppy/handler/AudiobookFileNotFoundEventHandler;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/audible/android/kcp/player/receiver/PlayerAction;->STOP:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    iget-object v2, p0, Lcom/audible/android/kcp/hushpuppy/handler/AudiobookFileNotFoundEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    iget-object p1, p0, Lcom/audible/android/kcp/hushpuppy/handler/AudiobookFileNotFoundEventHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->clearPlayerNotification(Landroid/content/Context;)V

    return-void
.end method
