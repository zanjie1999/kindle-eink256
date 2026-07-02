.class public Lcom/audible/hushpuppy/common/upsell/ToDoCheckCountdownTimer;
.super Landroid/os/CountDownTimer;
.source "ToDoCheckCountdownTimer.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final mSetting:Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;

.field private final mSyncManager:Lcom/amazon/kindle/krx/sync/ISyncManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/upsell/ToDoCheckCountdownTimer;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/upsell/ToDoCheckCountdownTimer;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;Lcom/amazon/kindle/krx/sync/ISyncManager;)V
    .locals 4

    .line 36
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->getTimerLengthMilliseconds()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->getTickLengthMilliseconds()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 38
    sget-object v0, Lcom/audible/hushpuppy/common/upsell/ToDoCheckCountdownTimer;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Create new ToDoCheckCountdownTimer"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lcom/audible/hushpuppy/common/upsell/ToDoCheckCountdownTimer;->mSyncManager:Lcom/amazon/kindle/krx/sync/ISyncManager;

    .line 40
    iput-object p1, p0, Lcom/audible/hushpuppy/common/upsell/ToDoCheckCountdownTimer;->mSetting:Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;

    return-void
.end method

.method private getTicks(J)I
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/audible/hushpuppy/common/upsell/ToDoCheckCountdownTimer;->mSetting:Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->getTotalTicks()I

    move-result v0

    iget-object v1, p0, Lcom/audible/hushpuppy/common/upsell/ToDoCheckCountdownTimer;->mSetting:Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->getTickLengthMilliseconds()I

    move-result v1

    int-to-long v1, v1

    div-long/2addr p1, v1

    long-to-int p2, p1

    sub-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public final onTick(J)V
    .locals 2

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/common/upsell/ToDoCheckCountdownTimer;->getTicks(J)I

    move-result p1

    .line 49
    iget-object p2, p0, Lcom/audible/hushpuppy/common/upsell/ToDoCheckCountdownTimer;->mSetting:Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;

    invoke-virtual {p2}, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->getRequestTicks()Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 50
    sget-object p2, Lcom/audible/hushpuppy/common/upsell/ToDoCheckCountdownTimer;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manually Sync at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/upsell/ToDoCheckCountdownTimer;->mSetting:Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;

    invoke-virtual {v1, p1}, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;->getSecondsFromTick(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Seconds."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/audible/hushpuppy/common/upsell/ToDoCheckCountdownTimer;->mSyncManager:Lcom/amazon/kindle/krx/sync/ISyncManager;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/sync/ISyncManager;->triggerToDoSync()V

    :cond_0
    return-void
.end method
