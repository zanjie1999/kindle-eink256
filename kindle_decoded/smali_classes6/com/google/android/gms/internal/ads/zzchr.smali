.class final Lcom/google/android/gms/internal/ads/zzchr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzchp;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzchn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchs;Lcom/google/android/gms/internal/ads/zzchp;Lcom/google/android/gms/internal/ads/zzchn;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchr;->zza:Lcom/google/android/gms/internal/ads/zzchp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Lcom/google/android/gms/internal/ads/zzchn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Lcom/google/android/gms/internal/ads/zzchn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzchn;->zza()V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zza:Lcom/google/android/gms/internal/ads/zzchp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzchp;->zza(Ljava/lang/Object;)V

    return-void
.end method
