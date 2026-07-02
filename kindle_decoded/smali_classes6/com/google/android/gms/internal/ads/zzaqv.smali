.class final Lcom/google/android/gms/internal/ads/zzaqv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzare;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzapx;

.field public zzc:Lcom/google/android/gms/internal/ads/zzarc;

.field public zzd:Lcom/google/android/gms/internal/ads/zzaqs;

.field public zze:I

.field public zzf:I

.field public zzg:I

.field public zzh:Lcom/google/android/gms/internal/ads/zzapw;

.field public zzi:Lcom/google/android/gms/internal/ads/zzard;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzapx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzare;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzare;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zza:Lcom/google/android/gms/internal/ads/zzare;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzb:Lcom/google/android/gms/internal/ads/zzapx;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzarc;Lcom/google/android/gms/internal/ads/zzaqs;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzc:Lcom/google/android/gms/internal/ads/zzarc;

    if-eqz p2, :cond_0

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzd:Lcom/google/android/gms/internal/ads/zzaqs;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzb:Lcom/google/android/gms/internal/ads/zzapx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzarc;->zzf:Lcom/google/android/gms/internal/ads/zzanm;

    .line 1
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzapx;->zza(Lcom/google/android/gms/internal/ads/zzanm;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqv;->zzb()V

    return-void

    .line 3
    :cond_0
    throw v0

    .line 4
    :cond_1
    throw v0
.end method

.method public final zzb()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zza:Lcom/google/android/gms/internal/ads/zzare;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzare;->zzd:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzare;->zzr:J

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzare;->zzl:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzare;->zzq:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzare;->zzn:Lcom/google/android/gms/internal/ads/zzard;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zze:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzg:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzf:I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzh:Lcom/google/android/gms/internal/ads/zzapw;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqv;->zzi:Lcom/google/android/gms/internal/ads/zzard;

    return-void
.end method
