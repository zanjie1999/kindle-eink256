.class Lcom/amazon/identity/auth/device/fx$a;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/iu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/fx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/iu<",
        "Lcom/amazon/identity/auth/device/fx$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final directedId:Ljava/lang/String;

.field private final fB:[Ljava/lang/Object;

.field public final nu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/en<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private nv:Lcom/amazon/identity/auth/device/hb;

.field public final tokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/en<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 2

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/identity/auth/device/fx$a;-><init>(Ljava/lang/String;Landroid/accounts/Account;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/accounts/Account;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/en<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/en<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    iput-object v0, p0, Lcom/amazon/identity/auth/device/fx$a;->fB:[Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fx$a;->directedId:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/amazon/identity/auth/device/fx$a;->account:Landroid/accounts/Account;

    .line 68
    iput-object p3, p0, Lcom/amazon/identity/auth/device/fx$a;->nu:Ljava/util/Map;

    .line 69
    iput-object p4, p0, Lcom/amazon/identity/auth/device/fx$a;->tokens:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/gt;)Lcom/amazon/identity/auth/device/hb;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx$a;->fB:[Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fx$a;->nv:Lcom/amazon/identity/auth/device/hb;

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fx$a;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v1}, Lcom/amazon/identity/auth/device/gt;->c(Landroid/accounts/Account;)Lcom/amazon/identity/auth/device/hb;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/fx$a;->nv:Lcom/amazon/identity/auth/device/hb;

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/fx$a;->nv:Lcom/amazon/identity/auth/device/hb;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public eZ()Lcom/amazon/identity/auth/device/fx$a;
    .locals 5

    .line 78
    new-instance v0, Lcom/amazon/identity/auth/device/fx$a;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fx$a;->directedId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/fx$a;->account:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/fx$a;->nu:Ljava/util/Map;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/ic;->j(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/identity/auth/device/fx$a;->tokens:Ljava/util/Map;

    invoke-static {v4}, Lcom/amazon/identity/auth/device/ic;->j(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/identity/auth/device/fx$a;-><init>(Ljava/lang/String;Landroid/accounts/Account;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public synthetic ej()Lcom/amazon/identity/auth/device/iu;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fx$a;->eZ()Lcom/amazon/identity/auth/device/fx$a;

    move-result-object v0

    return-object v0
.end method
