.class final Lcom/google/android/gms/internal/ads/zzrw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public zza:Lcom/google/android/gms/internal/ads/zzrf;

.field public zzb:J

.field public zzc:J

.field public zzd:I

.field public zze:I

.field public zzf:[J

.field public zzg:[I

.field public zzh:[I

.field public zzi:[I

.field public zzj:[J

.field public zzk:[Z

.field public zzl:Z

.field public zzm:[Z

.field public zzn:Lcom/google/android/gms/internal/ads/zzrv;

.field public final zzo:Lcom/google/android/gms/internal/ads/zzamf;

.field public zzp:Z

.field public zzq:J

.field public zzr:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrw;->zzf:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrw;->zzg:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrw;->zzh:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrw;->zzi:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrw;->zzj:[J

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrw;->zzk:[Z

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->zzm:[Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->zzo:Lcom/google/android/gms/internal/ads/zzamf;

    return-void
.end method


# virtual methods
.method public final zza(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->zzo:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrw;->zzl:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrw;->zzp:Z

    return-void
.end method

.method public final zzb(I)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->zzj:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->zzi:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public final zzc(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->zzl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->zzm:[Z

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
