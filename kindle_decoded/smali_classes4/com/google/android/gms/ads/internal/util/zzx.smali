.class public Lcom/google/android/gms/ads/internal/util/zzx;
.super Lcom/google/android/gms/ads/internal/util/zzw;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzw;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzk(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzad;->zzu()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v1, "Failed to obtain CookieManager."

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v1

    const-string v2, "ApiLevelUtil.getCookieManager"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzcge;->zzk(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzazb;Z)Lcom/google/android/gms/internal/ads/zzcms;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnq;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcnq;-><init>(Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzazb;Z)V

    return-object v0
.end method

.method public final zzm()I
    .locals 1

    const v0, 0x1030226

    return v0
.end method

.method public final zzn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .line 1
    new-instance v7, Landroid/webkit/WebResourceResponse;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v7
.end method
