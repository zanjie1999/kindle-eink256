.class public Lcom/amazon/kindle/network/AndroidWifiLockManager;
.super Ljava/lang/Object;
.source "AndroidWifiLockManager.java"

# interfaces
.implements Lcom/amazon/kindle/network/IWifiLockManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WAKE_LOCK_TAG:Ljava/lang/String; = "ReddingWakeLock"

.field private static final WIFI_LOCK_TAG:Ljava/lang/String; = "ReddingWifiLock"

.field private static volatile instance:Lcom/amazon/kindle/network/AndroidWifiLockManager;


# instance fields
.field private handler:Landroid/os/Handler;

.field private final locksToBeReleased:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;",
            ">;"
        }
    .end annotation
.end field

.field private powerManager:Landroid/os/PowerManager;

.field private wakeLockMode:I

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private wifiMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kindle/network/AndroidWifiLockManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->instance:Lcom/amazon/kindle/network/AndroidWifiLockManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->locksToBeReleased:Ljava/util/List;

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->wifiMode:I

    .line 45
    iput v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->wakeLockMode:I

    const-string v0, "power"

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->powerManager:Landroid/os/PowerManager;

    const-string v0, "wifi"

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 145
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/network/AndroidWifiLockManager;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->wakeLockMode:I

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/network/AndroidWifiLockManager;)Landroid/os/PowerManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->powerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/network/AndroidWifiLockManager;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->wifiMode:I

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/network/AndroidWifiLockManager;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/network/AndroidWifiLockManager;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->locksToBeReleased:Ljava/util/List;

    return-object p0
.end method

.method private cleanup()V
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->locksToBeReleased:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 227
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->locksToBeReleased:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 228
    iget-object v2, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->locksToBeReleased:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {v2}, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->performRealRelease()Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    sget-object v2, Lcom/amazon/kindle/network/AndroidWifiLockManager;->TAG:Ljava/lang/String;

    const-string v3, "Lock was not released"

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 235
    :cond_0
    sget-object v2, Lcom/amazon/kindle/network/AndroidWifiLockManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "At index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " of locksToBeReleased, the lock was null, size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->locksToBeReleased:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->locksToBeReleased:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 239
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amazon/kindle/network/AndroidWifiLockManager;
    .locals 1

    const/4 v0, 0x1

    .line 164
    invoke-static {p0, v0, v0}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->getInstance(Landroid/content/Context;II)Lcom/amazon/kindle/network/AndroidWifiLockManager;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;II)Lcom/amazon/kindle/network/AndroidWifiLockManager;
    .locals 2

    .line 149
    sget-object v0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->instance:Lcom/amazon/kindle/network/AndroidWifiLockManager;

    if-nez v0, :cond_1

    .line 150
    const-class v0, Lcom/amazon/kindle/network/AndroidWifiLockManager;

    monitor-enter v0

    .line 151
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/network/AndroidWifiLockManager;->instance:Lcom/amazon/kindle/network/AndroidWifiLockManager;

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Lcom/amazon/kindle/network/AndroidWifiLockManager;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/network/AndroidWifiLockManager;-><init>(Landroid/content/Context;)V

    .line 153
    iput p1, v1, Lcom/amazon/kindle/network/AndroidWifiLockManager;->wifiMode:I

    .line 154
    iput p2, v1, Lcom/amazon/kindle/network/AndroidWifiLockManager;->wakeLockMode:I

    .line 155
    sput-object v1, Lcom/amazon/kindle/network/AndroidWifiLockManager;->instance:Lcom/amazon/kindle/network/AndroidWifiLockManager;

    .line 157
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 160
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->instance:Lcom/amazon/kindle/network/AndroidWifiLockManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getNewWifiLock()Lcom/amazon/kindle/krx/network/IWifiLockManager$IWifiLock;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->getNewWifiLock()Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;

    move-result-object v0

    return-object v0
.end method

.method public getNewWifiLock()Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;
    .locals 2

    .line 174
    new-instance v0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;-><init>(Lcom/amazon/kindle/network/AndroidWifiLockManager;Lcom/amazon/kindle/network/AndroidWifiLockManager$1;)V

    .line 175
    invoke-virtual {v0}, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->lock()V

    .line 179
    invoke-direct {p0}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->cleanup()V

    return-object v0
.end method

.method releaseDelayed(Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;)V
    .locals 4

    .line 196
    check-cast p1, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;

    .line 198
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->locksToBeReleased:Ljava/util/List;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->locksToBeReleased:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->locksToBeReleased:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/network/AndroidWifiLockManager$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/network/AndroidWifiLockManager$1;-><init>(Lcom/amazon/kindle/network/AndroidWifiLockManager;Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p1

    .line 205
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
