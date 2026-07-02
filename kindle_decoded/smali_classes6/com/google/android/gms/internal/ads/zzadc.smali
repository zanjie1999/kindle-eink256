.class public final Lcom/google/android/gms/internal/ads/zzadc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/Executor;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-gt p3, v0, :cond_0

    sget-object p3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v0, "S"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfsu;->zza()Lcom/google/android/gms/internal/ads/zzfsu;

    move-result-object p3

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/ads/zzadb;

    invoke-direct {v5, p3}, Lcom/google/android/gms/internal/ads/zzadb;-><init>(Lcom/google/android/gms/internal/ads/zzfsu;)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    move-object v1, p1

    move-object v4, p2

    .line 4
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->requestChecksums(Ljava/lang/String;ZILjava/util/List;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfqw;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
