.class public Lcom/audible/application/stats/services/LanguageChangeService;
.super Landroid/app/Service;
.source "LanguageChangeService.java"


# instance fields
.field private final commandExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/application/stats/services/LanguageChangeService;->commandExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/application/stats/services/LanguageChangeService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/audible/application/stats/services/LanguageChangeService;->commandExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method protected execute()V
    .locals 2

    const-string v0, "LanguageResetService.execute start"

    .line 50
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->i(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/audible/application/stats/integration/StatsApplication;

    .line 52
    invoke-interface {v0}, Lcom/audible/application/stats/integration/StatsApplication;->getStats()Lcom/audible/application/stats/StatsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/application/stats/StatsService;->resetSdcardBadgeIcons()V

    .line 53
    invoke-interface {v0}, Lcom/audible/application/stats/integration/StatsApplication;->getStats()Lcom/audible/application/stats/StatsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/application/stats/StatsService;->resetDatabaseMetadata()V

    .line 54
    invoke-interface {v0}, Lcom/audible/application/stats/integration/StatsApplication;->getStats()Lcom/audible/application/stats/StatsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/application/stats/StatsService;->syncBadgeMetadata()V

    const-string v0, "LanguageResetService.execute end"

    .line 55
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 26
    iget-object p1, p0, Lcom/audible/application/stats/services/LanguageChangeService;->commandExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "LanguageResetService.onStartCommand: ignoring. command is already executing."

    .line 27
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    return p2

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/audible/application/stats/services/LanguageChangeService$1;

    invoke-direct {p3, p0}, Lcom/audible/application/stats/services/LanguageChangeService$1;-><init>(Lcom/audible/application/stats/services/LanguageChangeService;)V

    const-string v0, "LanguageResetService.onStartCommand"

    invoke-direct {p1, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return p2
.end method
