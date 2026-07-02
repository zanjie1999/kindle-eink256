.class final Lcom/google/android/gms/internal/ads/zzkv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method static synthetic zza(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzkv;->zzb(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method private static zzb(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/system/ErrnoException;

    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    sget v0, Landroid/system/OsConstants;->EACCES:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
