.class public Lcom/amazon/identity/auth/device/ha;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final pA:J


# instance fields
.field private final hY:Lcom/amazon/identity/auth/device/ds;

.field private final pm:Lcom/amazon/identity/auth/device/gi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jg;->c(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/ha;->pA:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/gi;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    const-string/jumbo v0, "sso_platform"

    .line 30
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ds;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ha;->hY:Lcom/amazon/identity/auth/device/ds;

    .line 31
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ha;->pm:Lcom/amazon/identity/auth/device/gi;

    return-void
.end method


# virtual methods
.method public declared-synchronized cK(Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ha;->hY:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dn()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    monitor-exit p0

    return v1

    .line 51
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/ha;->cL(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 55
    monitor-exit p0

    return v0

    .line 58
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/amazon/identity/auth/device/ha;->pA:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long p1, v2, v4

    monitor-exit p0

    if-ltz p1, :cond_2

    return v0

    :cond_2
    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cL(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ha;->pm:Lcom/amazon/identity/auth/device/gi;

    const-string v1, "3PLastRegistrationCheckTimeKey"

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/gi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/jb;->dA(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public cM(Ljava/lang/String;)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ha;->hY:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ha;->pm:Lcom/amazon/identity/auth/device/gi;

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3PLastRegistrationCheckTimeKey"

    .line 89
    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/identity/auth/device/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
