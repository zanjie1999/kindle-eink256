.class final synthetic Lcom/google/android/gms/internal/ads/zzmo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzmt;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzmt;Lcom/google/android/gms/internal/ads/zzy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmo;->zza:Lcom/google/android/gms/internal/ads/zzmt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzmo;->zzb:Lcom/google/android/gms/internal/ads/zzy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmo;->zza:Lcom/google/android/gms/internal/ads/zzmt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmo;->zzb:Lcom/google/android/gms/internal/ads/zzy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmt;->zzo(Lcom/google/android/gms/internal/ads/zzy;)V

    return-void
.end method
