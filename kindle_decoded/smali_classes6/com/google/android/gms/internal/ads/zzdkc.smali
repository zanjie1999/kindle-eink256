.class public final Lcom/google/android/gms/internal/ads/zzdkc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzddi;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdif;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdif;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zza:Lcom/google/android/gms/internal/ads/zzddi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzb:Lcom/google/android/gms/internal/ads/zzdif;

    return-void
.end method


# virtual methods
.method public final zzbp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zza:Lcom/google/android/gms/internal/ads/zzddi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddi;->zzbp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzb:Lcom/google/android/gms/internal/ads/zzdif;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdif;->zza()V

    return-void
.end method

.method public final zzbq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zza:Lcom/google/android/gms/internal/ads/zzddi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddi;->zzbq()V

    return-void
.end method

.method public final zzbr()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zza:Lcom/google/android/gms/internal/ads/zzddi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddi;->zzbr()V

    return-void
.end method

.method public final zzbs(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zza:Lcom/google/android/gms/internal/ads/zzddi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzddi;->zzbs(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zzb:Lcom/google/android/gms/internal/ads/zzdif;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdif;->zzb()V

    return-void
.end method

.method public final zzd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zza:Lcom/google/android/gms/internal/ads/zzddi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddi;->zzd()V

    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkc;->zza:Lcom/google/android/gms/internal/ads/zzddi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddi;->zze()V

    return-void
.end method
