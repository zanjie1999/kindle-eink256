.class public final Lcom/google/android/gms/internal/ads/zzaar;
.super Lcom/google/android/gms/internal/ads/zzaaq;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaaq;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static zzs(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzaar;
    .locals 1

    const/4 p2, 0x0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaaq;->zzf(Landroid/content/Context;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaar;

    .line 2
    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzaar;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static zzt(Ljava/lang/String;Landroid/content/Context;ZI)Lcom/google/android/gms/internal/ads/zzaar;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaaq;->zzf(Landroid/content/Context;Z)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzaar;

    .line 2
    invoke-direct {p3, p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzaar;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object p3
.end method


# virtual methods
.method protected final zzi(Lcom/google/android/gms/internal/ads/zzabr;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyj;Lcom/google/android/gms/internal/ads/zzyc;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzabr;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzyj;",
            "Lcom/google/android/gms/internal/ads/zzyc;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabr;->zze()Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzaaq;->zzt:Z

    if-nez p4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabr;->zzu()I

    move-result v6

    new-instance p4, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-super {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzaaq;->zzi(Lcom/google/android/gms/internal/ads/zzabr;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyj;Lcom/google/android/gms/internal/ads/zzyc;)Ljava/util/List;

    move-result-object p2

    .line 6
    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Lcom/google/android/gms/internal/ads/zzacg;

    const/16 v7, 0x18

    const-string v3, "NSYe0Ak7CUXd9zFZA3bczJ8pTgBK/kfUu9ICpHR+lQrTNc8+V7Owo49e2WIp0407"

    const-string v4, "Ux7t0A/7z2bV/IDvLZJgV4tTxr0Vvc1KngWKlG2Szwg="

    move-object v1, p2

    move-object v2, p1

    move-object v5, p3

    .line 7
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzacg;-><init>(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyj;II)V

    .line 8
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p4

    .line 2
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzaaq;->zzi(Lcom/google/android/gms/internal/ads/zzabr;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyj;Lcom/google/android/gms/internal/ads/zzyc;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
