.class final Lcom/google/android/gms/internal/ads/zzfda;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:J

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfcz;

.field private zzc:J

.field private zzd:I

.field private zze:I

.field private zzf:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfcz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzb:Lcom/google/android/gms/internal/ads/zzfcz;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzf:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzc:J

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzc:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzd:I

    return-void
.end method

.method public final zzb()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zze:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zze:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzb:Lcom/google/android/gms/internal/ads/zzfcz;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfcz;->zza:Z

    return-void
.end method

.method public final zzc()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzf:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzb:Lcom/google/android/gms/internal/ads/zzfcz;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfcz;->zzb:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfcz;->zzb:I

    return-void
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zza:J

    return-wide v0
.end method

.method public final zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzc:J

    return-wide v0
.end method

.method public final zzf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzd:I

    return v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzfcz;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzb:Lcom/google/android/gms/internal/ads/zzfcz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcz;->zza()Lcom/google/android/gms/internal/ads/zzfcz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzb:Lcom/google/android/gms/internal/ads/zzfcz;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzfcz;->zza:Z

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzfcz;->zzb:I

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzfda;->zza:J

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Last accessed: "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzc:J

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Accesses: "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzd:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nEntries retrieved: Valid: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfda;->zze:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Stale: "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfda;->zzf:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
