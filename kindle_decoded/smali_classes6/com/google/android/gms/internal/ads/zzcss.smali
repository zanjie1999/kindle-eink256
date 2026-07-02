.class public final Lcom/google/android/gms/internal/ads/zzcss;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcsc;


# instance fields
.field private final zza:Landroid/webkit/CookieManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zze()Lcom/google/android/gms/ads/internal/util/zzad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzad;->zzk(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcss;->zza:Landroid/webkit/CookieManager;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcss;->zza:Landroid/webkit/CookieManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "clear"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzaz:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcss;->zza:Landroid/webkit/CookieManager;

    .line 4
    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v1, 0x3b

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzflk;->zzb(C)Lcom/google/android/gms/internal/ads/zzflk;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfmg;->zzb(Lcom/google/android/gms/internal/ads/zzflk;)Lcom/google/android/gms/internal/ads/zzfmg;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfmg;->zzf(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcss;->zza:Landroid/webkit/CookieManager;

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x3d

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzflk;->zzb(C)Lcom/google/android/gms/internal/ads/zzflk;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfmg;->zzb(Lcom/google/android/gms/internal/ads/zzflk;)Lcom/google/android/gms/internal/ads/zzfmg;

    move-result-object v5

    .line 8
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfmg;->zzd(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v4

    .line 9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 13
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbjl;->zzaq:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v5

    .line 8
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 7
    :cond_2
    new-instance v5, Ljava/lang/String;

    .line 8
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 7
    :goto_1
    invoke-virtual {v3, p1, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "position (0) must be less than the number of elements that remained ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    .line 16
    throw p1

    :cond_5
    :goto_2
    return-void

    :cond_6
    const-string v0, "cookie"

    .line 17
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcss;->zza:Landroid/webkit/CookieManager;

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzaz:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
