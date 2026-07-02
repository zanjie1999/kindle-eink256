.class public final Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenOnOffReceiver.java"


# static fields
.field private static final DELAY_TIME:Lcom/audible/mobile/domain/Time;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final filter:Landroid/content/IntentFilter;

.field private final handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

.field private final readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->DELAY_TIME:Lcom/audible/mobile/domain/Time;

    .line 31
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;Lcom/audible/hushpuppy/common/system/IWorkerHandler;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    .line 52
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    .line 53
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->filter:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.USER_PRESENT"

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;)Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    return-object p0
.end method


# virtual methods
.method public getFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->filter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Screen Off"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    new-instance p2, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver$1;

    invoke-direct {p2, p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver$1;-><init>(Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;)V

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/system/IWorkerHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Device Unlocked"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    new-instance p2, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver$2;

    invoke-direct {p2, p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver$2;-><init>(Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;)V

    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->DELAY_TIME:Lcom/audible/mobile/domain/Time;

    .line 80
    invoke-interface {v0}, Lcom/audible/mobile/domain/Time;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->DELAY_TIME:Lcom/audible/mobile/domain/Time;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Time;->getAmount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 75
    invoke-interface {p1, p2, v0, v1}, Lcom/audible/hushpuppy/common/system/IWorkerHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 82
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported action received."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
