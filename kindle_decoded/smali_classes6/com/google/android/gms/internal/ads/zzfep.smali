.class final synthetic Lcom/google/android/gms/internal/ads/zzfep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgl;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfdy;

.field private final zzb:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfdy;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfep;->zza:Lcom/google/android/gms/internal/ads/zzfdy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfep;->zzb:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfep;->zza:Lcom/google/android/gms/internal/ads/zzfdy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfep;->zzb:Ljava/lang/Throwable;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfdy;->zza()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfdy;->zzb()Ljava/lang/String;

    move-result-object v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfem;

    .line 2
    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfet;->zzc(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
