.class public Lcom/amazon/identity/auth/device/lp;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final uh:J

.field private static final ui:J

.field private static final uj:J


# instance fields
.field private jD:I

.field private final mURL:Ljava/net/URL;

.field private final uk:J

.field private final ul:J

.field private final um:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/lp;->uh:J

    .line 19
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/lp;->ui:J

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/lp;->uj:J

    return-void
.end method

.method public constructor <init>(ILjava/net/URL;J)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/amazon/identity/auth/device/lp;->jD:I

    .line 50
    iput-object p2, p0, Lcom/amazon/identity/auth/device/lp;->mURL:Ljava/net/URL;

    .line 51
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    iput-object p2, p0, Lcom/amazon/identity/auth/device/lp;->um:Ljava/security/SecureRandom;

    .line 1124
    sget-wide v1, Lcom/amazon/identity/auth/device/lp;->uh:J

    cmp-long p2, p3, v1

    if-gtz p2, :cond_0

    .line 1126
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-wide v2, Lcom/amazon/identity/auth/device/lp;->uh:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-wide v2, Lcom/amazon/identity/auth/device/lp;->uh:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Backoff interval cannot be less than %d ms, set interval to %d ms"

    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "BackoffInfo"

    invoke-static {v0, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x1e

    .line 1127
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lp;->um:Ljava/security/SecureRandom;

    invoke-static {p3, p4, p2, v0}, Lcom/amazon/identity/auth/device/lq;->a(JILjava/util/Random;)I

    move-result p2

    int-to-long p2, p2

    goto :goto_0

    .line 1131
    :cond_0
    sget-wide v0, Lcom/amazon/identity/auth/device/lp;->uj:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 52
    :goto_0
    iput-wide p2, p0, Lcom/amazon/identity/auth/device/lp;->uk:J

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/amazon/identity/auth/device/lp;->ul:J

    .line 54
    iput p1, p0, Lcom/amazon/identity/auth/device/lp;->jD:I

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    .line 40
    sget-wide v0, Lcom/amazon/identity/auth/device/lp;->uh:J

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/identity/auth/device/lp;-><init>(Ljava/net/URL;J)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;J)V
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/lp;-><init>(ILjava/net/URL;J)V

    return-void
.end method


# virtual methods
.method public d(Ljava/net/URL;)Lcom/amazon/identity/auth/device/lp;
    .locals 8

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 88
    iget-wide v2, p0, Lcom/amazon/identity/auth/device/lp;->ul:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 89
    :goto_0
    iget-wide v6, p0, Lcom/amazon/identity/auth/device/lp;->ul:J

    sub-long/2addr v6, v0

    sget-wide v0, Lcom/amazon/identity/auth/device/lp;->uj:J

    cmp-long v3, v6, v0

    if-gez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    return-object p0

    .line 97
    :cond_2
    iget-wide v0, p0, Lcom/amazon/identity/auth/device/lp;->uk:J

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    sget-wide v2, Lcom/amazon/identity/auth/device/lp;->ui:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 98
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/amazon/identity/auth/device/lp;->uk:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Last backoff interval is %d ms, updating backoff info..."

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BackoffInfo"

    invoke-static {v2, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/amazon/identity/auth/device/lp;

    iget v2, p0, Lcom/amazon/identity/auth/device/lp;->jD:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/amazon/identity/auth/device/lp;->jD:I

    int-to-long v3, v1

    const/16 v1, 0x1e

    iget-object v5, p0, Lcom/amazon/identity/auth/device/lp;->um:Ljava/security/SecureRandom;

    invoke-static {v3, v4, v1, v5}, Lcom/amazon/identity/auth/device/lq;->a(JILjava/util/Random;)I

    move-result v1

    int-to-long v3, v1

    invoke-direct {v0, v2, p1, v3, v4}, Lcom/amazon/identity/auth/device/lp;-><init>(ILjava/net/URL;J)V

    return-object v0
.end method

.method public iq()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/amazon/identity/auth/device/lp;->ul:J

    return-wide v0
.end method

.method public ir()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/amazon/identity/auth/device/lp;->jD:I

    return v0
.end method

.method public is()Z
    .locals 5

    .line 106
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/lp;->it()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public it()J
    .locals 5

    .line 111
    iget-wide v0, p0, Lcom/amazon/identity/auth/device/lp;->ul:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 113
    sget-wide v2, Lcom/amazon/identity/auth/device/lp;->uj:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-string v0, "BackoffInfo"

    const-string v1, "System clock is set to past, correcting backoff info..."

    .line 115
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-wide v0, Lcom/amazon/identity/auth/device/lp;->uj:J

    .line 117
    iget-object v2, p0, Lcom/amazon/identity/auth/device/lp;->mURL:Ljava/net/URL;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/lq;->e(Ljava/net/URL;)Lcom/amazon/identity/auth/device/lp;

    :cond_0
    return-wide v0
.end method
