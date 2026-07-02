.class final Lcom/google/android/gms/internal/ads/zzebm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrz<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcbf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzebq;Lcom/google/android/gms/internal/ads/zzcbf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebm;->zza:Lcom/google/android/gms/internal/ads/zzcbf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebm;->zza:Lcom/google/android/gms/internal/ads/zzcbf;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbc;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/util/zzbc;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbf;->zzf(Lcom/google/android/gms/ads/internal/util/zzbc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Service can\'t call client"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebm;->zza:Lcom/google/android/gms/internal/ads/zzcbf;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbf;->zze(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Service can\'t call client"

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
