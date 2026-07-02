.class public final Lcom/amazon/identity/auth/device/fk;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.fk"

.field private static mB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/api/MAPAccountManager$MAPAccountChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mC:Ljava/lang/String;

.field private static mD:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/amazon/identity/auth/device/fk;->mD:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Q(Landroid/content/Context;)V
    .locals 4

    .line 35
    sget-object v0, Lcom/amazon/identity/auth/device/fk;->mD:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    const-string v1, "account_change_observer"

    invoke-direct {v0, p0, v1}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "initialized"

    .line 38
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/gm;->ct(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "last_seen_account"

    if-nez v2, :cond_0

    .line 41
    new-instance v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v2, p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-virtual {v0, v3, p0}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/identity/auth/device/gm;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 45
    :cond_0
    invoke-virtual {v0, v3}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amazon/identity/auth/device/fk;->mC:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/MAPAccountManager$MAPAccountChangeObserver;)V
    .locals 1

    .line 80
    invoke-static {p0}, Lcom/amazon/identity/auth/device/fk;->Q(Landroid/content/Context;)V

    .line 81
    const-class p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$MAPAccountChangeObserver;

    monitor-enter p0

    .line 83
    :try_start_0
    sget-object v0, Lcom/amazon/identity/auth/device/fk;->mB:Ljava/util/List;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/fk;->mB:Ljava/util/List;

    .line 88
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    sget-object p0, Lcom/amazon/identity/auth/device/fk;->TAG:Ljava/lang/String;

    const-string v0, "Registering account change observer"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object p0, Lcom/amazon/identity/auth/device/fk;->mB:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 88
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/identity/auth/device/fk;->mB:Ljava/util/List;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/MAPAccountManager$MAPAccountChangeObserver;)V
    .locals 1

    .line 95
    invoke-static {p0}, Lcom/amazon/identity/auth/device/fk;->Q(Landroid/content/Context;)V

    .line 96
    sget-object p0, Lcom/amazon/identity/auth/device/fk;->mB:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 98
    sget-object p0, Lcom/amazon/identity/auth/device/fk;->TAG:Ljava/lang/String;

    const-string v0, "Deregistering account change observer"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object p0, Lcom/amazon/identity/auth/device/fk;->mB:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/amazon/identity/auth/device/fk;

    monitor-enter v0

    .line 51
    :try_start_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/fk;->Q(Landroid/content/Context;)V

    .line 52
    sget-object v1, Lcom/amazon/identity/auth/device/fk;->mC:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/amazon/identity/auth/device/api/AccountChangeEvent;

    sget-object v2, Lcom/amazon/identity/auth/device/fk;->mC:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/amazon/identity/auth/device/api/AccountChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v2, Lcom/amazon/identity/auth/device/fk;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Notifying observers for the account change for app: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sput-object p1, Lcom/amazon/identity/auth/device/fk;->mC:Ljava/lang/String;

    .line 58
    new-instance v2, Lcom/amazon/identity/auth/device/gm;

    const-string v3, "account_change_observer"

    invoke-direct {v2, p0, v3}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "last_seen_account"

    .line 59
    invoke-virtual {v2, p0, p1}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    sget-object p0, Lcom/amazon/identity/auth/device/fk;->mB:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 62
    new-instance p0, Lcom/amazon/identity/auth/device/fk$1;

    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/fk$1;-><init>(Lcom/amazon/identity/auth/device/api/AccountChangeEvent;)V

    invoke-static {p0}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
