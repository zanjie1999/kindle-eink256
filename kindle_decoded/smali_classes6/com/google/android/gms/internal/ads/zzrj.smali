.class final Lcom/google/android/gms/internal/ads/zzrj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzox;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzrw;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzamf;

.field public zzd:Lcom/google/android/gms/internal/ads/zzrx;

.field public zze:Lcom/google/android/gms/internal/ads/zzrf;

.field public zzf:I

.field public zzg:I

.field public zzh:I

.field public zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzamf;

.field private zzl:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzrx;Lcom/google/android/gms/internal/ads/zzrf;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zza:Lcom/google/android/gms/internal/ads/zzox;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzrj;->zze:Lcom/google/android/gms/internal/ads/zzrf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzrw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzrw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v0, 0x1

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzj:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzk:Lcom/google/android/gms/internal/ads/zzamf;

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzrj;->zzc(Lcom/google/android/gms/internal/ads/zzrx;Lcom/google/android/gms/internal/ads/zzrf;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzrj;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzl:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzrj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzl:Z

    return p0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzrx;Lcom/google/android/gms/internal/ads/zzrf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrj;->zze:Lcom/google/android/gms/internal/ads/zzrf;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrj;->zza:Lcom/google/android/gms/internal/ads/zzox;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzru;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzru;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrj;->zzd()V

    return-void
.end method

.method public final zzd()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzrw;->zzd:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzrw;->zzq:J

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzrw;->zzr:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzrw;->zzl:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzrw;->zzp:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzrw;->zzn:Lcom/google/android/gms/internal/ads/zzrv;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzh:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzg:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzi:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzl:Z

    return-void
.end method

.method public final zze()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzl:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrx;->zzf:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    aget-wide v1, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzrw;->zzb(I)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public final zzf()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzl:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrx;->zzc:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    aget-wide v1, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrw;->zzf:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzh:I

    .line 2
    aget-wide v1, v0, v1

    :goto_0
    return-wide v1
.end method

.method public final zzg()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzl:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrx;->zzd:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrw;->zzh:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    .line 2
    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public final zzh()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzl:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrx;->zzg:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    aget v0, v0, v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrw;->zzk:[Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    .line 2
    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrj;->zzk()Lcom/google/android/gms/internal/ads/zzrv;

    move-result-object v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final zzi()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzl:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzg:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzg:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzrw;->zzg:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzh:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzh:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzg:I

    return v2

    :cond_1
    return v1
.end method

.method public final zzj(II)I
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrj;->zzk()Lcom/google/android/gms/internal/ads/zzrv;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzd:I

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrw;->zzo:Lcom/google/android/gms/internal/ads/zzamf;

    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrv;->zze:[B

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzk:Lcom/google/android/gms/internal/ads/zzamf;

    .line 3
    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzb([BI)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzk:Lcom/google/android/gms/internal/ads/zzamf;

    move v2, v3

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzf:I

    .line 4
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzrw;->zzc(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    :goto_2
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzj:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v6

    if-eq v4, v5, :cond_4

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v7, v2

    int-to-byte v7, v7

    .line 5
    aput-byte v7, v6, v1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzj:Lcom/google/android/gms/internal/ads/zzamf;

    .line 6
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzrj;->zza:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzj:Lcom/google/android/gms/internal/ads/zzamf;

    .line 7
    invoke-interface {v6, v7, v4, v4}, Lcom/google/android/gms/internal/ads/zzox;->zzu(Lcom/google/android/gms/internal/ads/zzamf;II)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzrj;->zza:Lcom/google/android/gms/internal/ads/zzox;

    .line 8
    invoke-interface {v6, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzox;->zzu(Lcom/google/android/gms/internal/ads/zzamf;II)V

    if-nez v5, :cond_5

    add-int/2addr v2, v4

    return v2

    :cond_5
    const/4 v0, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 9
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    .line 10
    aput-byte v1, v3, v1

    .line 11
    aput-byte v4, v3, v4

    .line 12
    aput-byte v1, v3, v6

    int-to-byte p2, p2

    .line 13
    aput-byte p2, v3, v5

    const/4 p2, 0x4

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 14
    aput-byte v1, v3, p2

    const/4 p2, 0x5

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 15
    aput-byte v1, v3, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 16
    aput-byte p2, v3, v0

    const/4 p2, 0x7

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 17
    aput-byte p1, v3, p2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zza:Lcom/google/android/gms/internal/ads/zzox;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 18
    invoke-interface {p1, p2, v7, v4}, Lcom/google/android/gms/internal/ads/zzox;->zzu(Lcom/google/android/gms/internal/ads/zzamf;II)V

    add-int/lit8 v2, v2, 0x9

    return v2

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzrw;->zzo:Lcom/google/android/gms/internal/ads/zzamf;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v3

    const/4 v8, -0x2

    .line 20
    invoke-virtual {p1, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v6

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 21
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    .line 22
    invoke-virtual {p1, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 23
    aget-byte p1, v0, v6

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v7

    aget-byte v1, v0, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 24
    aput-byte p2, v0, v6

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 25
    aput-byte p1, v0, v5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrj;->zza:Lcom/google/android/gms/internal/ads/zzox;

    .line 26
    invoke-interface {p2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzox;->zzu(Lcom/google/android/gms/internal/ads/zzamf;II)V

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    return v2
.end method

.method public final zzk()Lcom/google/android/gms/internal/ads/zzrv;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzl:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzb:Lcom/google/android/gms/internal/ads/zzrw;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrw;->zza:Lcom/google/android/gms/internal/ads/zzrf;

    sget v3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzrf;->zza:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrw;->zzn:Lcom/google/android/gms/internal/ads/zzrv;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzd:Lcom/google/android/gms/internal/ads/zzrx;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzru;->zza(I)Lcom/google/android/gms/internal/ads/zzrv;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzrv;->zza:Z

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method
