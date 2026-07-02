.class final synthetic Lcom/google/android/gms/internal/ads/zzfeo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgl;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfdy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfdy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfeo;->zza:Lcom/google/android/gms/internal/ads/zzfdy;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeo;->zza:Lcom/google/android/gms/internal/ads/zzfdy;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfdy;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfdy;->zzb()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfem;

    .line 2
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfet;->zzbF(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;)V

    return-void
.end method
