.class public final Lcom/google/android/gms/internal/ads/zzsu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzame;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/ads/zzox;

.field private zzf:I

.field private zzg:I

.field private zzh:Z

.field private zzi:Z

.field private zzj:J

.field private zzk:Lcom/google/android/gms/internal/ads/zzafv;

.field private zzl:I

.field private zzm:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzsu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzame;

    const/16 v1, 0x10

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzame;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zza:Lcom/google/android/gms/internal/ads/zzame;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzame;->zza:[B

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzg:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzi:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzm:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzg:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzi:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzm:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzd:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzb()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsu;->zze:Lcom/google/android/gms/internal/ads/zzox;

    return-void
.end method

.method public final zzc(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzm:J

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzamf;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zze:Lcom/google/android/gms/internal/ads/zzox;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    if-lez v0, :cond_c

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzf:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzl:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzg:I

    sub-int/2addr v1, v3

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsu;->zze:Lcom/google/android/gms/internal/ads/zzox;

    .line 7
    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzg:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzg:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzl:I

    if-ne v1, v7, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzm:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsu;->zze:Lcom/google/android/gms/internal/ads/zzox;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzm:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzj:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzm:J

    :cond_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzf:I

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzg:I

    const/16 v5, 0x10

    rsub-int/lit8 v4, v4, 0x10

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzg:I

    .line 10
    invoke-virtual {p1, v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzg:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzg:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zza:Lcom/google/android/gms/internal/ads/zzame;

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zza:Lcom/google/android/gms/internal/ads/zzame;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznd;->zza(Lcom/google/android/gms/internal/ads/zzame;)Lcom/google/android/gms/internal/ads/zznc;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzk:Lcom/google/android/gms/internal/ads/zzafv;

    const-string v4, "audio/ac4"

    if-eqz v3, :cond_3

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    if-ne v6, v1, :cond_3

    iget v6, v0, Lcom/google/android/gms/internal/ads/zznc;->zza:I

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    if-ne v6, v7, :cond_3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaft;

    .line 14
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzd:Ljava/lang/String;

    .line 15
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 16
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 17
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zznc;->zza:I

    .line 18
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzc:Ljava/lang/String;

    .line 19
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzk:Lcom/google/android/gms/internal/ads/zzafv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzsu;->zze:Lcom/google/android/gms/internal/ads/zzox;

    .line 21
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    :cond_4
    iget v3, v0, Lcom/google/android/gms/internal/ads/zznc;->zzb:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzl:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zznc;->zzc:I

    int-to-long v3, v0

    const-wide/32 v6, 0xf4240

    mul-long v3, v3, v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzk:Lcom/google/android/gms/internal/ads/zzafv;

    .line 22
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    int-to-long v6, v0

    div-long/2addr v3, v6

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 23
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zze:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 24
    invoke-static {v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzf:I

    goto/16 :goto_0

    .line 8
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzh:Z

    const/16 v4, 0xac

    if-nez v0, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    if-ne v0, v4, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzh:Z

    goto :goto_1

    .line 3
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    if-ne v0, v4, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzh:Z

    const/16 v4, 0x40

    const/16 v5, 0x41

    if-eq v0, v4, :cond_9

    if-ne v0, v5, :cond_5

    goto :goto_4

    :cond_9
    if-eq v0, v5, :cond_a

    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzi:Z

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzf:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    const/16 v6, -0x54

    .line 4
    aput-byte v6, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzi:Z

    if-eq v3, v2, :cond_b

    goto :goto_6

    :cond_b
    const/16 v4, 0x41

    .line 5
    :goto_6
    aput-byte v4, v0, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsu;->zzg:I

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method
