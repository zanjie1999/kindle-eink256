.class public final Lcom/amazon/identity/auth/device/ge;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/gd;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ge"

.field private static nC:Lcom/amazon/identity/auth/device/ge;


# instance fields
.field private final aZ:Lcom/amazon/identity/auth/device/ds;

.field private final av:Lcom/amazon/identity/auth/device/co;

.field private final nD:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/amazon/identity/auth/device/gc;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ge;->nD:Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    sget-object v0, Lcom/amazon/identity/auth/device/ge;->TAG:Ljava/lang/String;

    const-string v1, "Creating new DataStorageFactoryImpl"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ge;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v0, "sso_platform"

    .line 28
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ds;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ge;->aZ:Lcom/amazon/identity/auth/device/ds;

    .line 29
    iget-object p1, p0, Lcom/amazon/identity/auth/device/ge;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dV()Lcom/amazon/identity/auth/device/co;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ge;->av:Lcom/amazon/identity/auth/device/co;

    return-void
.end method

.method public static declared-synchronized T(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ge;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/ge;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/ge;->nC:Lcom/amazon/identity/auth/device/ge;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/amazon/identity/auth/device/ge;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/ge;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/identity/auth/device/ge;->nC:Lcom/amazon/identity/auth/device/ge;

    .line 39
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/ge;->nC:Lcom/amazon/identity/auth/device/ge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public dU()Lcom/amazon/identity/auth/device/gc;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ge;->nD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 66
    sget-object v0, Lcom/amazon/identity/auth/device/ge;->TAG:Ljava/lang/String;

    const-string v1, "Initializing new DataStorage"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ge;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gr;->ad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/amazon/identity/auth/device/ge;->TAG:Ljava/lang/String;

    const-string v1, "Creating and using RuntimeSwitchableDataStorage"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ge;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gr;->ac(Landroid/content/Context;)Lcom/amazon/identity/auth/device/gr;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ge;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->aa(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lcom/amazon/identity/auth/device/ge;->TAG:Ljava/lang/String;

    const-string v1, "Creating and using new NonCanonicalDataStorage"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ge;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ge;->aZ:Lcom/amazon/identity/auth/device/ds;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ge;->av:Lcom/amazon/identity/auth/device/co;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/fy;->a(Lcom/amazon/identity/auth/device/ds;Lcom/amazon/identity/auth/device/co;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    sget-object v0, Lcom/amazon/identity/auth/device/ge;->TAG:Ljava/lang/String;

    const-string v1, "Creating and using new CentralLocalDataStorage"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ge;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/fy;->S(Landroid/content/Context;)Lcom/amazon/identity/auth/device/fy;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ge;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/fx;->c(Lcom/amazon/identity/auth/device/ds;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    sget-object v0, Lcom/amazon/identity/auth/device/ge;->TAG:Ljava/lang/String;

    const-string v1, "Creating and using new CentralAccountManagerDataStorage"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ge;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/fx;->R(Landroid/content/Context;)Lcom/amazon/identity/auth/device/fx;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_3
    sget-object v0, Lcom/amazon/identity/auth/device/ge;->TAG:Ljava/lang/String;

    const-string v1, "Creating and using new DistributedDataStorage"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ge;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gg;->U(Landroid/content/Context;)Lcom/amazon/identity/auth/device/gg;

    move-result-object v0

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ge;->nD:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v0

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ge;->nD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/gc;

    return-object v0
.end method

.method public fe()Z
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ge;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 49
    instance-of v1, v0, Lcom/amazon/identity/auth/device/gg;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 53
    :cond_0
    instance-of v1, v0, Lcom/amazon/identity/auth/device/gr;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Lcom/amazon/identity/auth/device/gr;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gr;->fM()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
