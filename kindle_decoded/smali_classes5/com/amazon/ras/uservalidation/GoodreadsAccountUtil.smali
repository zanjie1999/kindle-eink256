.class public Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;
.super Ljava/lang/Object;
.source "GoodreadsAccountUtil.java"

# interfaces
.implements Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;


# instance fields
.field private final context:Landroid/content/Context;

.field private deviceConfigurationCache:Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;

.field private final deviceType:Lcom/amazon/ras/uservalidation/DeviceType;

.field private getDeviceConfigTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ras/uservalidation/DeviceType;Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->deviceType:Lcom/amazon/ras/uservalidation/DeviceType;

    .line 36
    iput-object p3, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->deviceConfigurationCache:Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;

    .line 38
    invoke-virtual {p0}, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->fetchData()V

    return-void
.end method

.method private isNetworkAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 100
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public declared-synchronized fetchData()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 52
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->fetchData(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchData(Z)V
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->deviceConfigurationCache:Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;

    invoke-interface {v0}, Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 58
    iget-object p1, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->getDeviceConfigTask:Landroid/os/AsyncTask;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->getDeviceConfigTask:Landroid/os/AsyncTask;

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne p1, v0, :cond_2

    .line 60
    :cond_1
    new-instance p1, Lcom/amazon/ras/uservalidation/GetDeviceConfigurationAsyncTask;

    iget-object v0, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->deviceConfigurationCache:Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;

    invoke-direct {p1, v0, v1}, Lcom/amazon/ras/uservalidation/GetDeviceConfigurationAsyncTask;-><init>(Landroid/content/Context;Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;)V

    iput-object p1, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->getDeviceConfigTask:Landroid/os/AsyncTask;

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->getDeviceConfigTask:Landroid/os/AsyncTask;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->getDeviceConfigTask:Landroid/os/AsyncTask;

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq p1, v0, :cond_3

    .line 65
    iget-object p1, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->getDeviceConfigTask:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getGrokState()Lcom/amazon/ras/uservalidation/models/GrokState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ras/uservalidation/exception/GoodreadsAccountUtilException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->fetchData()V

    .line 77
    iget-object v0, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->deviceType:Lcom/amazon/ras/uservalidation/DeviceType;

    sget-object v1, Lcom/amazon/ras/uservalidation/DeviceType;->ANDROID:Lcom/amazon/ras/uservalidation/DeviceType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->deviceConfigurationCache:Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;

    invoke-interface {v0}, Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;->isEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/ras/uservalidation/models/GrokState;->SUPPORTED:Lcom/amazon/ras/uservalidation/models/GrokState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/ras/uservalidation/models/GrokState;->UNSUPPORTED:Lcom/amazon/ras/uservalidation/models/GrokState;

    :goto_0
    return-object v0
.end method

.method public getProfileLink()Lcom/amazon/ras/uservalidation/models/ProfileLink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ras/uservalidation/exception/GoodreadsAccountUtilException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->fetchData()V

    .line 85
    iget-object v0, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->deviceConfigurationCache:Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;

    invoke-interface {v0}, Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;->getProfileLink()Lcom/amazon/ras/uservalidation/models/ProfileLink;

    move-result-object v0

    return-object v0
.end method

.method public isGrokLinked()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ras/uservalidation/exception/GoodreadsAccountUtilException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->fetchData()V

    .line 92
    iget-object v0, p0, Lcom/amazon/ras/uservalidation/GoodreadsAccountUtil;->deviceConfigurationCache:Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;

    invoke-interface {v0}, Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;->getProfileLink()Lcom/amazon/ras/uservalidation/models/ProfileLink;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/amazon/ras/uservalidation/models/ProfileLink;->getGoodreadsUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/amazon/ras/uservalidation/models/ProfileLink;->getGoodreadsUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
