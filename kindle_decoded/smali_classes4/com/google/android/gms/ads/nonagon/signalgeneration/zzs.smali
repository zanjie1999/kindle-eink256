.class final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrz<",
        "Ljava/util/ArrayList<",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcaf;

.field final synthetic zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Lcom/google/android/gms/internal/ads/zzcaf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;->zza:Lcom/google/android/gms/internal/ads/zzcaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;->zza:Lcom/google/android/gms/internal/ads/zzcaf;

    const-string v1, "Internal error: "

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zzf(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;->zza:Lcom/google/android/gms/internal/ads/zzcaf;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zze(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzl(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzw(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzv(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    .line 5
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzx(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzk(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Lcom/google/android/gms/internal/ads/zzffu;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzffu;->zzb(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
