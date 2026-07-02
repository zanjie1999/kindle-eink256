.class final synthetic Lcom/google/android/gms/internal/ads/zzcnb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaza;


# instance fields
.field private final zza:Z

.field private final zzb:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcnb;->zza:Z

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcnb;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbao;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnb;->zza:Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcnb;->zzb:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcne;->zza:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcu;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbct;->zza()Z

    move-result v3

    if-eq v3, v0, :cond_0

    .line 4
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Z)Lcom/google/android/gms/internal/ads/zzbct;

    .line 5
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbct;->zzc(I)Lcom/google/android/gms/internal/ads/zzbct;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcu;

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbao;->zzj(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbao;

    return-void
.end method
