.class final Lcom/google/android/gms/internal/ads/zzcmr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcml;

.field private final zzb:Lcom/google/android/gms/ads/internal/overlay/zzo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/ads/internal/overlay/zzo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmr;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmr;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzo;

    return-void
.end method


# virtual methods
.method public final zzbp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmr;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzbp()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmr;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzK()V

    return-void
.end method

.method public final zzbq()V
    .locals 0

    return-void
.end method

.method public final zzbr()V
    .locals 0

    return-void
.end method

.method public final zzbs(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmr;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzbs(I)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmr;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->zzI()V

    return-void
.end method

.method public final zzd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmr;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzd()V

    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmr;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zze()V

    :cond_0
    return-void
.end method
