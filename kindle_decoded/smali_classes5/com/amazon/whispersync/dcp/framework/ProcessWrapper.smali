.class public Lcom/amazon/whispersync/dcp/framework/ProcessWrapper;
.super Ljava/lang/Object;
.source "ProcessWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElapsedCpuTime()J
    .locals 2

    .line 10
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGidForName(Ljava/lang/String;)I
    .locals 0

    .line 15
    invoke-static {p1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getThreadPriority(I)I
    .locals 0

    .line 20
    invoke-static {p1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p1

    return p1
.end method

.method public getUidForName(Ljava/lang/String;)I
    .locals 0

    .line 25
    invoke-static {p1}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public killProcess(I)V
    .locals 0

    .line 30
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public myPid()I
    .locals 1

    .line 35
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public myTid()I
    .locals 1

    .line 40
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    return v0
.end method

.method public myUid()I
    .locals 1

    .line 45
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    return v0
.end method

.method public sendSignal(II)V
    .locals 0

    .line 50
    invoke-static {p1, p2}, Landroid/os/Process;->sendSignal(II)V

    return-void
.end method

.method public setThreadPriority(I)V
    .locals 0

    .line 60
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method

.method public setThreadPriority(II)V
    .locals 0

    .line 55
    invoke-static {p1, p2}, Landroid/os/Process;->setThreadPriority(II)V

    return-void
.end method

.method supportsProcesses()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v0

    return v0
.end method
