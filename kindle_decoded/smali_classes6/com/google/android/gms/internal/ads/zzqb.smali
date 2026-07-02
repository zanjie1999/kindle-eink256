.class final Lcom/google/android/gms/internal/ads/zzqb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:[B

.field private final zzb:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/zzpz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzqk;

.field private zzd:Lcom/google/android/gms/internal/ads/zzqc;

.field private zze:I

.field private zzf:I

.field private zzg:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zza:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzb:Ljava/util/ArrayDeque;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzqk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzc:Lcom/google/android/gms/internal/ads/zzqk;

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zznv;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zza:[B

    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqb;->zza:[B

    .line 2
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzqc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzd:Lcom/google/android/gms/internal/ads/zzqc;

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzb:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzc:Lcom/google/android/gms/internal/ads/zzqk;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zza()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zznv;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzd:Lcom/google/android/gms/internal/ads/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzb:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzpz;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpz;->zzb(Lcom/google/android/gms/internal/ads/zzpz;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzd:Lcom/google/android/gms/internal/ads/zzqc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzb:Ljava/util/ArrayDeque;

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzpz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpz;->zza(Lcom/google/android/gms/internal/ads/zzpz;)I

    move-result v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqe;->zza:Lcom/google/android/gms/internal/ads/zzqi;

    .line 29
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzqi;->zzi(I)V

    return v1

    .line 2
    :cond_1
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzc:Lcom/google/android/gms/internal/ads/zzqk;

    .line 3
    invoke-virtual {v0, p1, v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzqk;->zzb(Lcom/google/android/gms/internal/ads/zznv;ZZI)J

    move-result-wide v5

    const-wide/16 v7, -0x2

    cmp-long v0, v5, v7

    if-nez v0, :cond_3

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zza:[B

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zznp;

    .line 5
    invoke-virtual {v5, v0, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zza:[B

    aget-byte v0, v0, v4

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zzd(I)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    if-gt v0, v3, :cond_2

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzqb;->zza:[B

    .line 7
    invoke-static {v6, v0, v4}, Lcom/google/android/gms/internal/ads/zzqk;->zze([BIZ)J

    move-result-wide v6

    long-to-int v7, v6

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzd:Lcom/google/android/gms/internal/ads/zzqc;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzqe;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzqe;->zza:Lcom/google/android/gms/internal/ads/zzqi;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzqi;->zzo(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-virtual {v5, v0, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    int-to-long v5, v7

    goto :goto_3

    .line 8
    :cond_2
    invoke-virtual {v5, v1, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    goto :goto_2

    :cond_3
    :goto_3
    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-nez v0, :cond_4

    return v4

    :cond_4
    long-to-int v0, v5

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzf:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    goto :goto_4

    :cond_5
    if-ne v0, v1, :cond_6

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzc:Lcom/google/android/gms/internal/ads/zzqk;

    const/16 v5, 0x8

    .line 10
    invoke-virtual {v0, p1, v4, v1, v5}, Lcom/google/android/gms/internal/ads/zzqk;->zzb(Lcom/google/android/gms/internal/ads/zznv;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzg:J

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzd:Lcom/google/android/gms/internal/ads/zzqc;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzf:I

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqe;->zza:Lcom/google/android/gms/internal/ads/zzqi;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzqi;->zzn(I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v5, 0x0

    if-eq v0, v1, :cond_11

    const-wide/16 v6, 0x8

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    if-eq v0, v3, :cond_a

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzg:J

    const-wide/16 v10, 0x4

    cmp-long v0, v8, v10

    if-eqz v0, :cond_8

    cmp-long v0, v8, v6

    if-nez v0, :cond_7

    goto :goto_5

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid float size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 10
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzd:Lcom/google/android/gms/internal/ads/zzqc;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzf:I

    long-to-int v5, v8

    .line 12
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzqb;->zzd(Lcom/google/android/gms/internal/ads/zznv;I)J

    move-result-wide v6

    if-ne v5, v3, :cond_9

    long-to-int p1, v6

    .line 13
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v5, p1

    goto :goto_6

    .line 14
    :cond_9
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 13
    :goto_6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzqe;

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzqe;->zza:Lcom/google/android/gms/internal/ads/zzqi;

    .line 15
    invoke-virtual {p1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzqi;->zzk(ID)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    return v1

    .line 14
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzd:Lcom/google/android/gms/internal/ads/zzqc;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzf:I

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzg:J

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqe;->zza:Lcom/google/android/gms/internal/ads/zzqi;

    long-to-int v3, v5

    .line 17
    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzqi;->zzm(IILcom/google/android/gms/internal/ads/zznv;)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    return v1

    .line 25
    :cond_b
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzg:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v2, v6

    if-gtz v0, :cond_e

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzd:Lcom/google/android/gms/internal/ads/zzqc;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzf:I

    long-to-int v3, v2

    if-nez v3, :cond_c

    const-string p1, ""

    goto :goto_8

    .line 19
    :cond_c
    new-array v2, v3, [B

    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    .line 20
    invoke-virtual {p1, v2, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    :goto_7
    if-lez v3, :cond_d

    add-int/lit8 p1, v3, -0x1

    .line 21
    aget-byte v6, v2, p1

    if-nez v6, :cond_d

    move v3, p1

    goto :goto_7

    :cond_d
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    .line 18
    :goto_8
    check-cast v0, Lcom/google/android/gms/internal/ads/zzqe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqe;->zza:Lcom/google/android/gms/internal/ads/zzqi;

    .line 22
    invoke-virtual {v0, v5, p1}, Lcom/google/android/gms/internal/ads/zzqi;->zzl(ILjava/lang/String;)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    return v1

    .line 25
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "String element size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 17
    :cond_f
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzg:J

    cmp-long v0, v2, v6

    if-gtz v0, :cond_10

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzd:Lcom/google/android/gms/internal/ads/zzqc;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzf:I

    long-to-int v3, v2

    .line 24
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzqb;->zzd(Lcom/google/android/gms/internal/ads/zznv;I)J

    move-result-wide v2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqe;

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzqe;->zza:Lcom/google/android/gms/internal/ads/zzqi;

    .line 25
    invoke-virtual {p1, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzqi;->zzj(IJ)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    return v1

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x2a

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid integer size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 21
    :cond_11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v7

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzg:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzb:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzpz;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzf:I

    add-long/2addr v2, v7

    .line 26
    invoke-direct {v0, v6, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzpz;-><init>(IJLcom/google/android/gms/internal/ads/zzqa;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzd:Lcom/google/android/gms/internal/ads/zzqc;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzf:I

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzg:J

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqe;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzqe;->zza:Lcom/google/android/gms/internal/ads/zzqi;

    .line 27
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzqi;->zzh(IJJ)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    return v1

    :cond_12
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqb;->zzg:J

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zznp;

    long-to-int v1, v0

    .line 11
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzqb;->zze:I

    goto/16 :goto_0
.end method
