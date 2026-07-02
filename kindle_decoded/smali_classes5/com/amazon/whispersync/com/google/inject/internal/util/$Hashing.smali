.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# static fields
.field private static final CUTOFF:I = 0x20000000

.field private static final MAX_TABLE_SIZE:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static chooseTableSize(I)I
    .locals 2

    const/high16 v0, 0x20000000

    if-ge p0, v0, :cond_0

    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string v1, "collection too large"

    .line 51
    invoke-static {p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return v0
.end method

.method static smear(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, v0

    return p0
.end method
