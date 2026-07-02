.class final Lcom/google/android/gms/internal/ads/zzaoe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzanm;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzaoi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaoi;Lcom/google/android/gms/internal/ads/zzanm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoe;->zzb:Lcom/google/android/gms/internal/ads/zzaoi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoe;->zza:Lcom/google/android/gms/internal/ads/zzanm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoe;->zzb:Lcom/google/android/gms/internal/ads/zzaoi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaoi;->zza(Lcom/google/android/gms/internal/ads/zzaoi;)Lcom/google/android/gms/internal/ads/zzaoj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoe;->zza:Lcom/google/android/gms/internal/ads/zzanm;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaoj;->zzh(Lcom/google/android/gms/internal/ads/zzanm;)V

    return-void
.end method
