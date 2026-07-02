.class public final Lcom/google/android/gms/internal/ads/zzfkk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field zza:Z

.field zzb:Lcom/google/android/gms/internal/ads/zzfkl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string p3, "com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger"
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfjm; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v1, "com.google.android.gms.ads.dynamite"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3
    :try_start_2
    invoke-virtual {v0, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.gass.internal.clearcut.IGassClearcut"

    .line 4
    invoke-interface {p3, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 5
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzfkl;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfkl;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfkl;

    .line 7
    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ads/zzfkl;-><init>(Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3
    :goto_0
    :try_start_3
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkk;->zzb:Lcom/google/android/gms/internal/ads/zzfkl;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkk;->zzb:Lcom/google/android/gms/internal/ads/zzfkl;

    .line 10
    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfkl;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfkk;->zza:Z

    const-string p1, "GASS"

    const-string p2, "GassClearcutLogger Initialized."

    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzfjm; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_0
    move-exception p1

    .line 8
    :try_start_4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfjm;

    .line 2
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfjm;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 7
    :try_start_5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfjm;

    .line 8
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfjm;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzfjm; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    return-void
.end method


# virtual methods
.method public final zza([B)Lcom/google/android/gms/internal/ads/zzfki;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfki;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfki;-><init>(Lcom/google/android/gms/internal/ads/zzfkk;[BLcom/google/android/gms/internal/ads/zzfkj;)V

    return-object v0
.end method
