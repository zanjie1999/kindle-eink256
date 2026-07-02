.class public final Lcom/google/android/gms/internal/ads/zztp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzon;

.field private final zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/internal/ads/zzox;

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:I

.field private zzh:Z

.field private zzi:Z

.field private zzj:J

.field private zzk:I

.field private zzl:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zztp;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzf:I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v1

    const/4 v2, -0x1

    .line 3
    aput-byte v2, v1, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzon;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzon;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzb:Lcom/google/android/gms/internal/ads/zzon;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzl:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzg:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzi:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzl:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zze:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzb()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    return-void
.end method

.method public final zzc(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzl:J

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzamf;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    if-lez v0, :cond_a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzf:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzk:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzg:I

    sub-int/2addr v1, v3

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    .line 23
    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzg:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzg:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zztp;->zzk:I

    if-lt v1, v7, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzl:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 24
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzl:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzj:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzl:J

    :cond_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzg:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzf:I

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzg:I

    const/4 v5, 0x4

    rsub-int/lit8 v4, v4, 0x4

    .line 6
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/zztp;->zzg:I

    .line 7
    invoke-virtual {p1, v4, v6, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    iget v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzg:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzg:I

    if-lt v4, v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzb:Lcom/google/android/gms/internal/ads/zzon;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzon;->zza(I)Z

    move-result v0

    if-nez v0, :cond_3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzg:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzf:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzb:Lcom/google/android/gms/internal/ads/zzon;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzon;->zzc:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzk:I

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzh:Z

    if-nez v4, :cond_4

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzon;->zzg:I

    int-to-long v6, v4

    const-wide/32 v8, 0xf4240

    mul-long v6, v6, v8

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzon;->zzd:I

    int-to-long v8, v0

    .line 10
    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zztp;->zzj:J

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zze:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzb:Lcom/google/android/gms/internal/ads/zzon;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzon;->zzb:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    const/16 v4, 0x1000

    .line 14
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzO(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzb:Lcom/google/android/gms/internal/ads/zzon;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzon;->zze:I

    .line 15
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzb:Lcom/google/android/gms/internal/ads/zzon;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzon;->zzd:I

    .line 16
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzc:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    .line 19
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzh:Z

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 21
    invoke-static {v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzf:I

    goto/16 :goto_0

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_9

    .line 2
    aget-byte v6, v0, v4

    and-int/lit16 v7, v6, 0xff

    const/16 v8, 0xff

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/zztp;->zzi:Z

    if-eqz v8, :cond_7

    and-int/lit16 v6, v6, 0xe0

    const/16 v8, 0xe0

    if-ne v6, v8, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    :goto_3
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zztp;->zzi:Z

    if-eqz v6, :cond_8

    add-int/lit8 v5, v4, 0x1

    .line 3
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzi:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    .line 4
    aget-byte v0, v0, v4

    aput-byte v0, v2, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzg:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzf:I

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5
    :cond_9
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method
