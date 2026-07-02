.class final Lcom/google/android/gms/internal/ads/zzavs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzanm;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzavx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavx;Lcom/google/android/gms/internal/ads/zzanm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavs;->zzb:Lcom/google/android/gms/internal/ads/zzavx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavs;->zza:Lcom/google/android/gms/internal/ads/zzanm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavs;->zzb:Lcom/google/android/gms/internal/ads/zzavx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavx;->zza(Lcom/google/android/gms/internal/ads/zzavx;)Lcom/google/android/gms/internal/ads/zzavy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavs;->zza:Lcom/google/android/gms/internal/ads/zzanm;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzavy;->zzl(Lcom/google/android/gms/internal/ads/zzanm;)V

    return-void
.end method
