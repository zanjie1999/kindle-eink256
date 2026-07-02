.class public Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;
.super Ljava/lang/Object;
.source "ActivityManagerWrapper.java"


# instance fields
.field private final mInner:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;->mInner:Landroid/app/ActivityManager;

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager;)V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;->mInner:Landroid/app/ActivityManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity"

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;->mInner:Landroid/app/ActivityManager;

    return-void
.end method


# virtual methods
.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;->mInner:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMemoryClass()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;->mInner:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    return v0
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;->mInner:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    return-void
.end method

.method public getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;->mInner:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p1

    return-object p1
.end method

.method public getProcessesInErrorState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;->mInner:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecentTasks(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;->mInner:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;->mInner:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;->mInner:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getRunningServices(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;->mInner:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRunningTasks(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;->mInner:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public killBackgroundProcesses(Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;->mInner:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    return-void
.end method

.method public restartPackage(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ActivityManagerWrapper;->mInner:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    return-void
.end method
