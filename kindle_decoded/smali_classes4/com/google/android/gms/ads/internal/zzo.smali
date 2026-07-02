.class final Lcom/google/android/gms/ads/internal/zzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/zzaas;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzb(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzo;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzs;->zzd(Lcom/google/android/gms/ads/internal/zzs;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaar;->zzs(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaas;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzaas;-><init>(Lcom/google/android/gms/internal/ads/zzaao;)V

    return-object v1
.end method
