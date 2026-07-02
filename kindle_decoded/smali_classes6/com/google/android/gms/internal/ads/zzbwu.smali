.class final Lcom/google/android/gms/internal/ads/zzbwu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/ads/AdRequest$ErrorCode;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbww;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbww;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwu;->zzb:Lcom/google/android/gms/internal/ads/zzbww;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwu;->zza:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwu;->zzb:Lcom/google/android/gms/internal/ads/zzbww;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbww;->zza(Lcom/google/android/gms/internal/ads/zzbww;)Lcom/google/android/gms/internal/ads/zzbvm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwu;->zza:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbwx;->zza(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbvm;->zzg(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
