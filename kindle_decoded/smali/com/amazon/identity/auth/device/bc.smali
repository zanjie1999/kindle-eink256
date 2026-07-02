.class public final Lcom/amazon/identity/auth/device/bc;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final gK:Ljava/lang/String; = "com.amazon.identity.auth.device.bc"

.field private static final gL:Lcom/amazon/identity/auth/device/bc;


# instance fields
.field private final gM:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/amazon/identity/auth/device/bc;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/bc;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/bc;->gL:Lcom/amazon/identity/auth/device/bc;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/bc;->gM:Ljava/util/EnumMap;

    return-void
.end method

.method private declared-synchronized b(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/Object;
    .locals 5

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->fetchValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    .line 64
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 69
    monitor-exit p0

    return-object p1

    .line 73
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amazon/identity/auth/device/bc;->gK:Ljava/lang/String;

    const-string v1, "Setting device attribute %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bc;->gM:Ljava/util/EnumMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static bl()Lcom/amazon/identity/auth/device/bc;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/identity/auth/device/bc;->gL:Lcom/amazon/identity/auth/device/bc;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bc;->gM:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 41
    monitor-exit p0

    return-object v0

    .line 44
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/bc;->b(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearCache()V
    .locals 1

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bc;->gM:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
