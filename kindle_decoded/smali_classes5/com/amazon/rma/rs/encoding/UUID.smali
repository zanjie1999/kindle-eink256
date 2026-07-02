.class public Lcom/amazon/rma/rs/encoding/UUID;
.super Ljava/lang/Object;
.source "UUID.java"


# static fields
.field static r:Ljava/security/SecureRandom;


# instance fields
.field public final leastSignificantBits:J

.field public final mostSignificantBits:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/amazon/rma/rs/encoding/UUID;->r:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/amazon/rma/rs/encoding/UUID;->mostSignificantBits:J

    .line 40
    iput-wide p3, p0, Lcom/amazon/rma/rs/encoding/UUID;->leastSignificantBits:J

    return-void
.end method

.method public static randomUUID()Lcom/amazon/rma/rs/encoding/UUID;
    .locals 10

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 17
    sget-object v2, Lcom/amazon/rma/rs/encoding/UUID;->r:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v2, 0x6

    .line 18
    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 19
    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    .line 20
    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 21
    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    :goto_0
    if-ge v5, v2, :cond_0

    shl-long/2addr v6, v2

    .line 26
    aget-byte v8, v1, v5

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    :goto_1
    if-ge v5, v0, :cond_1

    shl-long/2addr v3, v2

    .line 29
    aget-byte v8, v1, v5

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long/2addr v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 32
    :cond_1
    new-instance v0, Lcom/amazon/rma/rs/encoding/UUID;

    invoke-direct {v0, v6, v7, v3, v4}, Lcom/amazon/rma/rs/encoding/UUID;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/rma/rs/encoding/UUID;

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    check-cast p1, Lcom/amazon/rma/rs/encoding/UUID;

    .line 55
    iget-wide v2, p0, Lcom/amazon/rma/rs/encoding/UUID;->mostSignificantBits:J

    iget-wide v4, p1, Lcom/amazon/rma/rs/encoding/UUID;->mostSignificantBits:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/amazon/rma/rs/encoding/UUID;->leastSignificantBits:J

    iget-wide v4, p1, Lcom/amazon/rma/rs/encoding/UUID;->leastSignificantBits:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 64
    iget-wide v0, p0, Lcom/amazon/rma/rs/encoding/UUID;->mostSignificantBits:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const/16 v0, 0xd9

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget-wide v3, p0, Lcom/amazon/rma/rs/encoding/UUID;->leastSignificantBits:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method
