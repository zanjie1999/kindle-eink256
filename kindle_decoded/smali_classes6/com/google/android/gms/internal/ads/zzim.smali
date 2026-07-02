.class final Lcom/google/android/gms/internal/ads/zzim;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zza:J

.field public final zzb:J

.field public zzc:Z

.field public zzd:Lcom/google/android/gms/internal/ads/zzkb;

.field public zze:Lcom/google/android/gms/internal/ads/zzim;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzim;->zza:J

    const-wide/32 v0, 0x10000

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzim;->zzb:J

    return-void
.end method


# virtual methods
.method public final zza(J)I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzim;->zza:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzim;->zzd:Lcom/google/android/gms/internal/ads/zzkb;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzkb;->zzb:I

    sub-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzim;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzim;->zzd:Lcom/google/android/gms/internal/ads/zzkb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzim;->zze:Lcom/google/android/gms/internal/ads/zzim;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzim;->zze:Lcom/google/android/gms/internal/ads/zzim;

    return-object v1
.end method
