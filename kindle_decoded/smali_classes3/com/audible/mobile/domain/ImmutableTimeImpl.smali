.class public final Lcom/audible/mobile/domain/ImmutableTimeImpl;
.super Ljava/lang/Object;
.source "ImmutableTimeImpl.java"

# interfaces
.implements Lcom/audible/mobile/domain/Time;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/domain/Time;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final amount:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/domain/ImmutableTimeImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/audible/mobile/domain/ImmutableTimeImpl;->amount:J

    .line 34
    iput-object p3, p0, Lcom/audible/mobile/domain/ImmutableTimeImpl;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 49
    :cond_0
    instance-of v1, p1, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 53
    :cond_1
    check-cast p1, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    .line 55
    iget-wide v3, p0, Lcom/audible/mobile/domain/ImmutableTimeImpl;->amount:J

    iget-wide v5, p1, Lcom/audible/mobile/domain/ImmutableTimeImpl;->amount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/audible/mobile/domain/ImmutableTimeImpl;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p1, Lcom/audible/mobile/domain/ImmutableTimeImpl;->unit:Ljava/util/concurrent/TimeUnit;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getAmount()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/audible/mobile/domain/ImmutableTimeImpl;->amount:J

    return-wide v0
.end method

.method public getUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/audible/mobile/domain/ImmutableTimeImpl;->unit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 68
    iget-wide v0, p0, Lcom/audible/mobile/domain/ImmutableTimeImpl;->amount:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 69
    iget-object v0, p0, Lcom/audible/mobile/domain/ImmutableTimeImpl;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/concurrent/TimeUnit;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImmutableTimeImpl{amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/mobile/domain/ImmutableTimeImpl;->amount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/domain/ImmutableTimeImpl;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/audible/mobile/domain/ImmutableTimeImpl;->amount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-object p2, p0, Lcom/audible/mobile/domain/ImmutableTimeImpl;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2}, Ljava/util/concurrent/TimeUnit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
