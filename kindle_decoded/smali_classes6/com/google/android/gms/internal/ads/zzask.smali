.class final Lcom/google/android/gms/internal/ads/zzask;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatb;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzasl;

.field private final zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzasl;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzask;->zza:Lcom/google/android/gms/internal/ads/zzasl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzask;->zzb:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzask;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzask;->zzb:I

    return p0
.end method


# virtual methods
.method public final zzb()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzask;->zza:Lcom/google/android/gms/internal/ads/zzasl;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzask;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzasl;->zzs(I)Z

    move-result v0

    return v0
.end method

.method public final zzc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzask;->zza:Lcom/google/android/gms/internal/ads/zzasl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasl;->zzt()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzann;Lcom/google/android/gms/internal/ads/zzapg;Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzask;->zza:Lcom/google/android/gms/internal/ads/zzasl;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzask;->zzb:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzasl;->zzu(ILcom/google/android/gms/internal/ads/zzann;Lcom/google/android/gms/internal/ads/zzapg;Z)I

    move-result p1

    return p1
.end method

.method public final zze(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzask;->zza:Lcom/google/android/gms/internal/ads/zzasl;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzask;->zzb:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzasl;->zzv(IJ)V

    return-void
.end method
