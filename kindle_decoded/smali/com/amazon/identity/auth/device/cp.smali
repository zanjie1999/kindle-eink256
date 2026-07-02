.class public final Lcom/amazon/identity/auth/device/cp;
.super Lcom/amazon/identity/auth/device/co;
.source "DCP"


# static fields
.field private static final gK:Ljava/lang/String; = "com.amazon.identity.auth.device.cp"

.field private static ix:Lcom/amazon/identity/auth/device/cp;


# instance fields
.field private final gM:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/amazon/identity/auth/device/features/Feature;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final iy:Lcom/amazon/identity/auth/device/co;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/co;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/co;-><init>()V

    .line 16
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/amazon/identity/auth/device/features/Feature;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/cp;->gM:Ljava/util/EnumMap;

    if-eqz p1, :cond_0

    .line 28
    iput-object p1, p0, Lcom/amazon/identity/auth/device/cp;->iy:Lcom/amazon/identity/auth/device/co;

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegateFeatureSet is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static declared-synchronized a(Lcom/amazon/identity/auth/device/co;)Lcom/amazon/identity/auth/device/cp;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/cp;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/cp;->ix:Lcom/amazon/identity/auth/device/cp;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/amazon/identity/auth/device/cp;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/cp;-><init>(Lcom/amazon/identity/auth/device/co;)V

    sput-object v1, Lcom/amazon/identity/auth/device/cp;->ix:Lcom/amazon/identity/auth/device/cp;

    .line 37
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/cp;->ix:Lcom/amazon/identity/auth/device/cp;
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
.method public declared-synchronized a(Lcom/amazon/identity/auth/device/features/Feature;Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 61
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/features/Feature;->fetchValue(Landroid/content/Context;)Z

    move-result p2

    .line 62
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cp;->gM:Ljava/util/EnumMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/amazon/identity/auth/device/cp;->gK:Ljava/lang/String;

    const-string v1, "Resetting feature cache %s as %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/amazon/identity/auth/device/features/Feature;)Z
    .locals 5

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cp;->gM:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 49
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cp;->iy:Lcom/amazon/identity/auth/device/co;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/co;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/amazon/identity/auth/device/cp;->gM:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lcom/amazon/identity/auth/device/cp;->gK:Ljava/lang/String;

    const-string v2, "Caching feature %s as %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
