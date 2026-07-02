.class final synthetic Lcom/google/android/gms/internal/ads/zzdwz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdxk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbrs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxk;Lcom/google/android/gms/internal/ads/zzbrs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zza:Lcom/google/android/gms/internal/ads/zzdxk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zzb:Lcom/google/android/gms/internal/ads/zzbrs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zza:Lcom/google/android/gms/internal/ads/zzdxk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zzb:Lcom/google/android/gms/internal/ads/zzbrs;

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxk;->zzj()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbrs;->zzb(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
