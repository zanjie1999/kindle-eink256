.class final synthetic Lcom/google/android/gms/internal/ads/zzalx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzalz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamd;Lcom/google/android/gms/internal/ads/zzalz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zza:Lcom/google/android/gms/internal/ads/zzamd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzb:Lcom/google/android/gms/internal/ads/zzalz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalx;->zza:Lcom/google/android/gms/internal/ads/zzamd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzb:Lcom/google/android/gms/internal/ads/zzalz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamd;->zzc()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzalz;->zza(I)V

    return-void
.end method
