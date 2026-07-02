.class public final Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;
.super Ljava/lang/Object;
.source "FullPlayerState.java"

# interfaces
.implements Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;


# static fields
.field private static final LISTENING_MODE_NAME:Ljava/lang/String; = "FullPlayer"

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final readerModeContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "readerModeContext can\'t be null."

    .line 30
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;->readerModeContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    return-void
.end method


# virtual methods
.method public applicationBackgrounded()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;->readerModeContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;->getOutsideApplicationState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/write/IStateContext;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method public applicationForegrounded()V
    .locals 2

    .line 44
    sget-object v0, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Application should have been already foregrounded. Do nothing."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public deviceUnlocked()V
    .locals 2

    .line 68
    sget-object v0, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Screen should have been already unlocked. Do nothing."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public getListeningModeName()Ljava/lang/String;
    .locals 1

    const-string v0, "FullPlayer"

    return-object v0
.end method

.method public readerActivityBackgrounded()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;->readerModeContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;->getOutsideBookState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/write/IStateContext;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method public readerActivityForegrounded()V
    .locals 2

    .line 56
    sget-object v0, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Reader should have been already foregrounded. Do nothing."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public screenOff()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;->readerModeContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;->getLockScreenState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/write/IStateContext;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method public switchToInsideBookMode()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;->readerModeContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;->getInsideBookState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/write/IStateContext;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method public switchToPlayerMode()V
    .locals 2

    .line 74
    sget-object v0, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Reader should have been already in player mode. Do nothing."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method
