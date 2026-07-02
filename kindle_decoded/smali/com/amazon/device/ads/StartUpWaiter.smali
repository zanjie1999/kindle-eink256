.class abstract Lcom/amazon/device/ads/StartUpWaiter;
.super Ljava/lang/Object;
.source "StartUpWaiter.java"

# interfaces
.implements Lcom/amazon/device/ads/Configuration$ConfigurationListener;
.implements Lcom/amazon/device/ads/Settings$SettingsListener;


# static fields
.field private static final executors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callbackType:I

.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final settings:Lcom/amazon/device/ads/Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/StartUpWaiter;->executors:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$MainThreadScheduler;

    invoke-direct {v0}, Lcom/amazon/device/ads/ThreadUtils$MainThreadScheduler;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/amazon/device/ads/StartUpWaiter;->putRunnableExecutor(ILcom/amazon/device/ads/ThreadUtils$RunnableExecutor;)V

    .line 30
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$ThreadPoolScheduler;

    invoke-direct {v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadPoolScheduler;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/amazon/device/ads/StartUpWaiter;->putRunnableExecutor(ILcom/amazon/device/ads/ThreadUtils$RunnableExecutor;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Configuration;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/amazon/device/ads/StartUpWaiter;->callbackType:I

    .line 40
    iput-object p1, p0, Lcom/amazon/device/ads/StartUpWaiter;->settings:Lcom/amazon/device/ads/Settings;

    .line 41
    iput-object p2, p0, Lcom/amazon/device/ads/StartUpWaiter;->configuration:Lcom/amazon/device/ads/Configuration;

    return-void
.end method

.method static getExecutor(I)Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;
    .locals 2

    .line 114
    sget-object v0, Lcom/amazon/device/ads/StartUpWaiter;->executors:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;

    return-object p0
.end method

.method private onFinished(Ljava/lang/Runnable;)V
    .locals 1

    .line 93
    iget v0, p0, Lcom/amazon/device/ads/StartUpWaiter;->callbackType:I

    invoke-static {v0}, Lcom/amazon/device/ads/StartUpWaiter;->getExecutor(I)Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static putRunnableExecutor(ILcom/amazon/device/ads/ThreadUtils$RunnableExecutor;)V
    .locals 1

    if-nez p1, :cond_0

    .line 135
    sget-object p1, Lcom/amazon/device/ads/StartUpWaiter;->executors:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 139
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/StartUpWaiter;->executors:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method getConfiguration()Lcom/amazon/device/ads/Configuration;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/device/ads/StartUpWaiter;->configuration:Lcom/amazon/device/ads/Configuration;

    return-object v0
.end method

.method getSettings()Lcom/amazon/device/ads/Settings;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/device/ads/StartUpWaiter;->settings:Lcom/amazon/device/ads/Settings;

    return-object v0
.end method

.method public onConfigurationFailure()V
    .locals 1

    .line 80
    new-instance v0, Lcom/amazon/device/ads/StartUpWaiter$2;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/StartUpWaiter$2;-><init>(Lcom/amazon/device/ads/StartUpWaiter;)V

    .line 88
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/StartUpWaiter;->onFinished(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigurationReady()V
    .locals 1

    .line 66
    new-instance v0, Lcom/amazon/device/ads/StartUpWaiter$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/StartUpWaiter$1;-><init>(Lcom/amazon/device/ads/StartUpWaiter;)V

    .line 74
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/StartUpWaiter;->onFinished(Ljava/lang/Runnable;)V

    return-void
.end method

.method public settingsLoaded()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/device/ads/StartUpWaiter;->configuration:Lcom/amazon/device/ads/Configuration;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/Configuration;->queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/device/ads/StartUpWaiter;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/Settings;->listenForSettings(Lcom/amazon/device/ads/Settings$SettingsListener;)V

    return-void
.end method

.method protected abstract startUpFailed()V
.end method

.method protected abstract startUpReady()V
.end method
