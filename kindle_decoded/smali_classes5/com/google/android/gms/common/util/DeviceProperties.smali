.class public final Lcom/google/android/gms/common/util/DeviceProperties;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# static fields
.field private static zza:Ljava/lang/Boolean;

.field private static zzb:Ljava/lang/Boolean;

.field private static zzc:Ljava/lang/Boolean;

.field private static zzd:Ljava/lang/Boolean;

.field private static zze:Ljava/lang/Boolean;

.field private static zzf:Ljava/lang/Boolean;

.field private static zzg:Ljava/lang/Boolean;

.field private static zzh:Ljava/lang/Boolean;


# direct methods
.method public static isAuto(Landroid/content/Context;)Z
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isAuto(Landroid/content/pm/PackageManager;)Z

    move-result p0

    return p0
.end method

.method public static isAuto(Landroid/content/pm/PackageManager;)Z
    .locals 2
    .param p0    # Landroid/content/pm/PackageManager;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzg:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "android.hardware.type.automotive"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzg:Ljava/lang/Boolean;

    :cond_1
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzg:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isLatchsky(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zze:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.feature.services_updater"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "cn.google.services"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 2
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zze:Ljava/lang/Boolean;

    :cond_1
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zze:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isSidewinder(Landroid/content/Context;)Z
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zza(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isWearable(Landroid/content/Context;)Z
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/pm/PackageManager;)Z

    move-result p0

    return p0
.end method

.method public static isWearable(Landroid/content/pm/PackageManager;)Z
    .locals 2
    .param p0    # Landroid/content/pm/PackageManager;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzc:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKatWatch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "android.hardware.type.watch"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 3
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzc:Ljava/lang/Boolean;

    :cond_1
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzc:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isWearableWithoutPlayStore(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zza(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public static zza(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzd:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "cn.google"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 2
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzd:Ljava/lang/Boolean;

    :cond_1
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzd:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static zzb(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzf:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.iot"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.embedded"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzf:Ljava/lang/Boolean;

    :cond_2
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzf:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
