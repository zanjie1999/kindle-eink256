.class public Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;
.super Landroid/app/IntentService;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private o:Lcom/amazon/identity/auth/device/ed;

.field private w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p0}, Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public static d(Lcom/amazon/identity/auth/device/ed;)Z
    .locals 1

    const-string v0, "dcp_data_storage_factory"

    .line 31
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/gd;

    .line 32
    invoke-interface {p0}, Lcom/amazon/identity/auth/device/gd;->fe()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 38
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 40
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    .line 42
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v1, "dcp_data_storage_factory"

    .line 43
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/gd;

    .line 44
    invoke-interface {v0}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;->w:Lcom/amazon/identity/auth/device/gc;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .line 55
    sget-object p1, Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/IntentService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Package %s is syncing dirty data to other processes"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;->d(Lcom/amazon/identity/auth/device/ed;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 59
    sget-object p1, Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;->TAG:Ljava/lang/String;

    const-string v0, "Ignoring dirty data sync request because this platform does not use the distributed datastorage"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gc;->eS()V

    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;->o:Lcom/amazon/identity/auth/device/ed;

    return-void
.end method
