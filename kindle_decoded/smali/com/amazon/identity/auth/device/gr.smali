.class public Lcom/amazon/identity/auth/device/gr;
.super Lcom/amazon/identity/auth/device/gc;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.gr"

.field private static oM:Lcom/amazon/identity/auth/device/gr;


# instance fields
.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private oN:Lcom/amazon/identity/auth/device/gc;

.field private oO:Lcom/amazon/identity/auth/device/gc;

.field private final oP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gc;-><init>()V

    .line 38
    sget-object v0, Lcom/amazon/identity/auth/device/gr;->TAG:Ljava/lang/String;

    const-string v1, "Constructing RuntimeSwitchableDataStorage"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gr;->o:Lcom/amazon/identity/auth/device/ed;

    .line 40
    invoke-static {p1}, Lcom/amazon/identity/auth/device/fy;->S(Landroid/content/Context;)Lcom/amazon/identity/auth/device/fy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gr;->oN:Lcom/amazon/identity/auth/device/gc;

    .line 42
    new-instance p1, Lcom/amazon/identity/auth/device/ds;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/gr;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/ds;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ds;->ds()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ds;->dt()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gr;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/hu;->ap(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 53
    sget-object p1, Lcom/amazon/identity/auth/device/gr;->TAG:Ljava/lang/String;

    const-string v0, "Using DistributedDataStorage as SSO storage"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gr;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/gg;->U(Landroid/content/Context;)Lcom/amazon/identity/auth/device/gg;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gr;->oO:Lcom/amazon/identity/auth/device/gc;

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/gr;->oP:Z

    return-void

    .line 61
    :cond_1
    sget-object p1, Lcom/amazon/identity/auth/device/gr;->TAG:Ljava/lang/String;

    const-string v0, "Runtime isolated mode currently only supported on 3P devices. Please remove runtime isolated entry in manifest if your app is running on 1P devices."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_2
    :goto_0
    sget-object p1, Lcom/amazon/identity/auth/device/gr;->TAG:Ljava/lang/String;

    const-string v0, "Using CentralAccountManagerDataStorage as SSO storage"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gr;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/fx;->R(Landroid/content/Context;)Lcom/amazon/identity/auth/device/fx;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gr;->oO:Lcom/amazon/identity/auth/device/gc;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/gr;->oP:Z

    return-void
.end method

.method public static declared-synchronized ac(Landroid/content/Context;)Lcom/amazon/identity/auth/device/gr;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/gr;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/gr;->oM:Lcom/amazon/identity/auth/device/gr;

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    .line 79
    new-instance v1, Lcom/amazon/identity/auth/device/gr;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/gr;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    sput-object v1, Lcom/amazon/identity/auth/device/gr;->oM:Lcom/amazon/identity/auth/device/gr;

    .line 82
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/gr;->oM:Lcom/amazon/identity/auth/device/gr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static ad(Landroid/content/Context;)Z
    .locals 0

    .line 90
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->doesAppSupportRuntimeIsolatedMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private fL()Lcom/amazon/identity/auth/device/gc;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gr;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ed;->dV()Lcom/amazon/identity/auth/device/co;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/auth/device/features/Feature;->IsolateApplication:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/co;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gr;->oN:Lcom/amazon/identity/auth/device/gc;

    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gr;->oO:Lcom/amazon/identity/auth/device/gc;

    return-object v0
.end method


# virtual methods
.method public G(Ljava/lang/String;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gc;->G(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/amazon/identity/auth/device/fv;)V
    .locals 1

    .line 216
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gc;->a(Lcom/amazon/identity/auth/device/fv;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 160
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;)Z
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/fv;",
            "Lcom/amazon/identity/auth/device/gc$a;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 154
    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ca(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gc;->ca(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public cc(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 1

    .line 237
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 238
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gc;->cc(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public ce(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 258
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gc;->ce(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public eS()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gr;->oO:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->eS()V

    return-void
.end method

.method public eT()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->eT()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 202
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 203
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gc;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fM()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/gr;->oP:Z

    return v0
.end method

.method public getAccounts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->getAccounts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSnapshot()Ljava/lang/String;
    .locals 1

    .line 209
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->getDeviceSnapshot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->initialize()V

    return-void
.end method

.method public setup()V
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->setup()V

    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 174
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 188
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 195
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gr;->fL()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    .line 196
    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
