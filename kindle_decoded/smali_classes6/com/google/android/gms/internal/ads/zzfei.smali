.class final Lcom/google/android/gms/internal/ads/zzfei;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfdy;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfej;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfej;Lcom/google/android/gms/internal/ads/zzfdy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzb:Lcom/google/android/gms/internal/ads/zzfej;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfei;->zza:Lcom/google/android/gms/internal/ads/zzfdy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzb:Lcom/google/android/gms/internal/ads/zzfej;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfej;->zza:Lcom/google/android/gms/internal/ads/zzfek;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfek;->zzd(Lcom/google/android/gms/internal/ads/zzfek;)Lcom/google/android/gms/internal/ads/zzfel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfei;->zza:Lcom/google/android/gms/internal/ads/zzfdy;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfel;->zzc(Lcom/google/android/gms/internal/ads/zzfdy;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzb:Lcom/google/android/gms/internal/ads/zzfej;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfej;->zza:Lcom/google/android/gms/internal/ads/zzfek;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfek;->zzd(Lcom/google/android/gms/internal/ads/zzfek;)Lcom/google/android/gms/internal/ads/zzfel;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfei;->zza:Lcom/google/android/gms/internal/ads/zzfdy;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfel;->zzd(Lcom/google/android/gms/internal/ads/zzfdy;)V

    return-void
.end method
