.class public final Lcom/amazon/messaging/odot/OdotMessagePurger;
.super Ljava/lang/Object;
.source "OdotMessagePurger.java"


# static fields
.field private static DELAY_IN_MILLIS:J

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final odotClientDAO:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const-class v0, Lcom/amazon/messaging/odot/OdotMessagePurger;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/OdotMessagePurger;->TAG:Ljava/lang/String;

    const-wide/32 v0, 0xdbba0

    .line 21
    sput-wide v0, Lcom/amazon/messaging/odot/OdotMessagePurger;->DELAY_IN_MILLIS:J

    return-void
.end method

.method private constructor <init>(Lcom/amazon/messaging/odot/dao/IOdotClientDAO;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 29
    iput-object p1, p0, Lcom/amazon/messaging/odot/OdotMessagePurger;->odotClientDAO:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "odotClientDAO is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/messaging/odot/OdotMessagePurger;)Lcom/amazon/messaging/odot/dao/IOdotClientDAO;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/messaging/odot/OdotMessagePurger;->odotClientDAO:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/messaging/odot/OdotMessagePurger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/messaging/odot/OdotMessagePurger;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/messaging/odot/OdotMessagePurger;->purgeMessages()V

    return-void
.end method

.method static synthetic access$300()J
    .locals 2

    .line 17
    sget-wide v0, Lcom/amazon/messaging/odot/OdotMessagePurger;->DELAY_IN_MILLIS:J

    return-wide v0
.end method

.method static newInstance(Lcom/amazon/messaging/odot/dao/IOdotClientDAO;)Lcom/amazon/messaging/odot/OdotMessagePurger;
    .locals 1

    .line 33
    new-instance v0, Lcom/amazon/messaging/odot/OdotMessagePurger;

    invoke-direct {v0, p0}, Lcom/amazon/messaging/odot/OdotMessagePurger;-><init>(Lcom/amazon/messaging/odot/dao/IOdotClientDAO;)V

    return-object v0
.end method

.method private purgeMessages()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/amazon/messaging/odot/OdotMessagePurger;->odotClientDAO:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    invoke-interface {v0}, Lcom/amazon/messaging/odot/dao/IOdotClientDAO;->getRequestersAboveQueueSize()Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    iget-object v2, p0, Lcom/amazon/messaging/odot/OdotMessagePurger;->odotClientDAO:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    invoke-interface {v2, v1}, Lcom/amazon/messaging/odot/dao/IOdotClientDAO;->deleteDefunctOdotMessages(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public purgeOdotMessages()V
    .locals 4

    .line 37
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OdotMessagePurger"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    new-instance v0, Lcom/amazon/messaging/odot/OdotMessagePurger$1;

    invoke-direct {v0, p0, v1}, Lcom/amazon/messaging/odot/OdotMessagePurger$1;-><init>(Lcom/amazon/messaging/odot/OdotMessagePurger;Landroid/os/Handler;)V

    .line 65
    sget-wide v2, Lcom/amazon/messaging/odot/OdotMessagePurger;->DELAY_IN_MILLIS:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
