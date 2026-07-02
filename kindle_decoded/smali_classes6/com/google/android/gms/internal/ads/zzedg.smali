.class final synthetic Lcom/google/android/gms/internal/ads/zzedg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaza;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbbz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedg;->zza:Lcom/google/android/gms/internal/ads/zzbbz;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbao;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedg;->zza:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbao;->zze()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgga;->zzau()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbag;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbag;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Lcom/google/android/gms/internal/ads/zzbag;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbao;->zzf(Lcom/google/android/gms/internal/ads/zzbag;)Lcom/google/android/gms/internal/ads/zzbao;

    return-void
.end method
