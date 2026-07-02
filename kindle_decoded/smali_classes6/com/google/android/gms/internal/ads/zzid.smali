.class final Lcom/google/android/gms/internal/ads/zzid;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziu;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzig;

.field private final zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzig;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzid;->zza:Lcom/google/android/gms/internal/ads/zzig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzid;->zzb:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzid;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzid;->zzb:I

    return p0
.end method


# virtual methods
.method public final zzb()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zza:Lcom/google/android/gms/internal/ads/zzig;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzig;->zzw(I)Z

    move-result v0

    return v0
.end method

.method public final zzc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zza:Lcom/google/android/gms/internal/ads/zzig;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzig;->zzx(I)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzafw;Lcom/google/android/gms/internal/ads/zzaf;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zza:Lcom/google/android/gms/internal/ads/zzig;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzb:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzig;->zzz(ILcom/google/android/gms/internal/ads/zzafw;Lcom/google/android/gms/internal/ads/zzaf;I)I

    move-result p1

    return p1
.end method

.method public final zze(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zza:Lcom/google/android/gms/internal/ads/zzig;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzb:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzig;->zzA(IJ)I

    move-result p1

    return p1
.end method
