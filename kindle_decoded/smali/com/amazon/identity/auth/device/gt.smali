.class public Lcom/amazon/identity/auth/device/gt;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/gt$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.gt"

.field private static oS:Lcom/amazon/identity/auth/device/gt;


# instance fields
.field private final fB:[Ljava/lang/Object;

.field private final ns:Lcom/amazon/identity/auth/device/hn;

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final oT:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/accounts/Account;",
            "Lcom/amazon/identity/auth/device/gt$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 67
    iput-object v0, p0, Lcom/amazon/identity/auth/device/gt;->fB:[Ljava/lang/Object;

    .line 79
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gt;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_account_manager"

    .line 81
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/hn;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gt;->ns:Lcom/amazon/identity/auth/device/hn;

    .line 83
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gt;->oT:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static declared-synchronized ae(Landroid/content/Context;)Lcom/amazon/identity/auth/device/gt;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/gt;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/gt;->oS:Lcom/amazon/identity/auth/device/gt;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/amazon/identity/auth/device/gt;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/gt;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/identity/auth/device/gt;->oS:Lcom/amazon/identity/auth/device/gt;

    .line 93
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/gt;->oS:Lcom/amazon/identity/auth/device/gt;
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
.method public b(Landroid/accounts/Account;)Lcom/amazon/identity/auth/device/hb;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gt;->fB:[Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gt;->ns:Lcom/amazon/identity/auth/device/hn;

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/hn;->d(Landroid/accounts/Account;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    sget-object p1, Lcom/amazon/identity/auth/device/gt;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 103
    monitor-exit v0

    return-object p1

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/gt;->c(Landroid/accounts/Account;)Lcom/amazon/identity/auth/device/hb;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Landroid/accounts/Account;)Lcom/amazon/identity/auth/device/hb;
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gt;->fB:[Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gt;->oT:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/gt$a;

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gt$a;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    :cond_0
    new-instance v1, Lcom/amazon/identity/auth/device/gt$a;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gt;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/gt;->ns:Lcom/amazon/identity/auth/device/hn;

    invoke-direct {v1, v2, v3, p1}, Lcom/amazon/identity/auth/device/gt$a;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/hn;Landroid/accounts/Account;)V

    .line 118
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gt;->oT:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gt$a;->fO()Lcom/amazon/identity/auth/device/hb;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
