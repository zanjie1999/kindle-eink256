.class public final Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction;
.super Ljava/lang/Object;
.source "StateAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlayerAction(Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;)Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;
    .locals 1

    const-string v0, "player state can\'t be null."

    .line 81
    invoke-static {p0, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    instance-of v0, p0, Lcom/audible/hushpuppy/model/write/playerstate/PlayState;

    if-eqz v0, :cond_0

    .line 84
    sget-object p0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->PLAY:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    return-object p0

    .line 85
    :cond_0
    instance-of v0, p0, Lcom/audible/hushpuppy/model/write/playerstate/PauseState;

    if-eqz v0, :cond_1

    .line 86
    sget-object p0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->PAUSE:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    return-object p0

    .line 87
    :cond_1
    instance-of p0, p0, Lcom/audible/hushpuppy/model/write/playerstate/ErrorState;

    if-eqz p0, :cond_2

    .line 88
    sget-object p0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->ERROR:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    return-object p0

    .line 90
    :cond_2
    sget-object p0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Unknown player state, returning UNKNOWN as action"

    invoke-interface {p0, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 91
    sget-object p0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->UNKOWN:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    return-object p0
.end method

.method public static getReaderAction(Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;)Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;
    .locals 1

    const-string v0, "reader state can\'t be null."

    .line 103
    invoke-static {p0, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    sget-object p0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->MODE:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    return-object p0
.end method
