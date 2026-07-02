.class public final Lcom/audible/android/kcp/AiRUserRegistrationHandler;
.super Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;
.source "AiRUserRegistrationHandler.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final mActivationManager:Lcom/audible/android/kcp/activation/ActivationManager;

.field private mAirPreferenceStore:Lcom/audible/mobile/preferences/PreferenceStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

.field private final mContext:Landroid/content/Context;

.field private final mEventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/AiRUserRegistrationHandler;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/audible/android/kcp/download/AudioFileManager;Lcom/audible/android/kcp/activation/ActivationManager;Lcom/audible/mobile/preferences/PreferenceStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lde/greenrobot/event/EventBus;",
            "Lcom/audible/android/kcp/download/AudioFileManager;",
            "Lcom/audible/android/kcp/activation/ActivationManager;",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;-><init>(Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;)V

    .line 52
    iput-object p1, p0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 54
    iput-object p3, p0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    .line 55
    iput-object p4, p0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->mActivationManager:Lcom/audible/android/kcp/activation/ActivationManager;

    .line 56
    iput-object p5, p0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->mAirPreferenceStore:Lcom/audible/mobile/preferences/PreferenceStore;

    return-void
.end method

.method private stopPlayer()V
    .locals 3

    .line 92
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/audible/android/kcp/player/receiver/PlayerAction;->STOP_PLAYER:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    iget-object v2, p0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->SOURCE:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {v1}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/audible/android/kcp/util/BroadcastSource;->DEREGISTRATION:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onDeregistration()V
    .locals 2

    .line 67
    sget-object v0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onDeregistration - Cleaning up"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Stop the player"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->stopPlayer()V

    .line 72
    sget-object v0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Clear data"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Clearing download queues ..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    invoke-interface {v0}, Lcom/audible/android/kcp/download/AudioFileManager;->clearAllDownloads()V

    .line 77
    sget-object v0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Clearing audio and sync files ..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    invoke-interface {v0}, Lcom/audible/android/kcp/download/AudioFileManager;->deleteAllFiles()I

    .line 80
    sget-object v0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Clearing share preferences ..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->mAirPreferenceStore:Lcom/audible/mobile/preferences/PreferenceStore;

    invoke-interface {v0}, Lcom/audible/mobile/preferences/PreferenceStore;->clear()V

    .line 83
    sget-object v0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Deactivating device ..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/audible/android/kcp/AiRUserRegistrationHandler;->mActivationManager:Lcom/audible/android/kcp/activation/ActivationManager;

    invoke-interface {v0}, Lcom/audible/android/kcp/activation/ActivationManager;->deactivateDevice()Z

    return-void
.end method

.method protected onRegistration(Lcom/amazon/kindle/krx/application/IUserAccount;)V
    .locals 0

    return-void
.end method
