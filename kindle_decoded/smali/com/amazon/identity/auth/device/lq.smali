.class public Lcom/amazon/identity/auth/device/lq;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final un:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/lp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final uo:Ljava/util/Random;

.field private up:I

.field private uq:I

.field private ur:I

.field private us:I

.field private ut:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/lq;->un:Ljava/util/HashMap;

    .line 17
    const-class v0, Lcom/amazon/identity/auth/device/lq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/lq;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/lq;-><init>(IIB)V

    return-void
.end method

.method public constructor <init>(IIB)V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance p3, Ljava/security/SecureRandom;

    invoke-direct {p3}, Ljava/security/SecureRandom;-><init>()V

    iput-object p3, p0, Lcom/amazon/identity/auth/device/lq;->uo:Ljava/util/Random;

    .line 50
    iput p1, p0, Lcom/amazon/identity/auth/device/lq;->up:I

    .line 51
    iput p2, p0, Lcom/amazon/identity/auth/device/lq;->uq:I

    const/4 p2, 0x0

    .line 52
    iput p2, p0, Lcom/amazon/identity/auth/device/lq;->ur:I

    const/4 p3, 0x1

    .line 53
    iput p3, p0, Lcom/amazon/identity/auth/device/lq;->us:I

    const/16 v0, 0x1e

    .line 54
    iput v0, p0, Lcom/amazon/identity/auth/device/lq;->ut:I

    const/16 v0, 0xa

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-gtz p1, :cond_0

    .line 58
    iput v0, p0, Lcom/amazon/identity/auth/device/lq;->up:I

    .line 60
    sget-object p1, Lcom/amazon/identity/auth/device/lq;->TAG:Ljava/lang/String;

    new-array v2, p3, [Ljava/lang/Object;

    aput-object v1, v2, p2

    const-string v3, "ExponentialBackoffHelper: was constructed with a first retry interval value less than or equal to zero. It has been set to a default value (%d ms)"

    invoke-static {p1, v3, v2}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_0
    iget p1, p0, Lcom/amazon/identity/auth/device/lq;->ut:I

    if-gtz p1, :cond_1

    .line 67
    iput v0, p0, Lcom/amazon/identity/auth/device/lq;->ut:I

    .line 69
    sget-object p1, Lcom/amazon/identity/auth/device/lq;->TAG:Ljava/lang/String;

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v1, p3, p2

    const-string p2, "ExponentialBackoffHelper: was constructed with a jitter percent range less than or equal to zero. It has been set to a default value (%d percent)"

    invoke-static {p1, p2, p3}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static a(JILjava/util/Random;)I
    .locals 4

    int-to-long v0, p2

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    mul-long v0, v0, p0

    const-wide/16 v2, 0x64

    .line 118
    div-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    .line 123
    div-int/lit8 p2, p2, 0x2

    int-to-long v0, p2

    sub-long/2addr p0, v0

    int-to-long p2, p3

    add-long/2addr p0, p2

    long-to-int p1, p0

    return p1

    :cond_0
    long-to-int p1, p0

    return p1
.end method

.method public static a(ILjava/net/URL;)Lcom/amazon/identity/auth/device/lp;
    .locals 4

    .line 133
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/amazon/identity/auth/device/lq;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "MAP received %d response from server, so updating the backoff info"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lq;->e(Ljava/net/URL;)Lcom/amazon/identity/auth/device/lp;

    move-result-object p0

    return-object p0

    .line 140
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/lq;->un:Ljava/util/HashMap;

    monitor-enter p0

    .line 142
    :try_start_0
    sget-object v0, Lcom/amazon/identity/auth/device/lq;->un:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/lq;->g(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static e(Ljava/net/URL;)Lcom/amazon/identity/auth/device/lp;
    .locals 3

    .line 150
    invoke-static {p0}, Lcom/amazon/identity/auth/device/lq;->g(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/amazon/identity/auth/device/lq;->un:Ljava/util/HashMap;

    monitor-enter v1

    .line 154
    :try_start_0
    sget-object v2, Lcom/amazon/identity/auth/device/lq;->un:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/lp;

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Lcom/amazon/identity/auth/device/lp;

    invoke-direct {v2, p0}, Lcom/amazon/identity/auth/device/lp;-><init>(Ljava/net/URL;)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v2, p0}, Lcom/amazon/identity/auth/device/lp;->d(Ljava/net/URL;)Lcom/amazon/identity/auth/device/lp;

    move-result-object v2

    .line 164
    :goto_0
    sget-object p0, Lcom/amazon/identity/auth/device/lq;->un:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static f(Ljava/net/URL;)Lcom/amazon/identity/auth/device/lp;
    .locals 2

    .line 171
    sget-object v0, Lcom/amazon/identity/auth/device/lq;->un:Ljava/util/HashMap;

    monitor-enter v0

    .line 173
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/lq;->un:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/lq;->g(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/lp;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static g(Ljava/net/URL;)Ljava/lang/String;
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public iu()I
    .locals 4

    .line 96
    iget v0, p0, Lcom/amazon/identity/auth/device/lq;->ur:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/identity/auth/device/lq;->ur:I

    .line 98
    iget v0, p0, Lcom/amazon/identity/auth/device/lq;->up:I

    iget v1, p0, Lcom/amazon/identity/auth/device/lq;->us:I

    mul-int v0, v0, v1

    mul-int/lit8 v2, v0, 0x2

    .line 99
    iget v3, p0, Lcom/amazon/identity/auth/device/lq;->uq:I

    if-gt v2, v3, :cond_0

    mul-int/lit8 v1, v1, 0x2

    .line 101
    iput v1, p0, Lcom/amazon/identity/auth/device/lq;->us:I

    :cond_0
    int-to-long v0, v0

    .line 104
    iget v2, p0, Lcom/amazon/identity/auth/device/lq;->ut:I

    iget-object v3, p0, Lcom/amazon/identity/auth/device/lq;->uo:Ljava/util/Random;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/lq;->a(JILjava/util/Random;)I

    move-result v0

    return v0
.end method

.method public iv()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/amazon/identity/auth/device/lq;->ur:I

    return v0
.end method
