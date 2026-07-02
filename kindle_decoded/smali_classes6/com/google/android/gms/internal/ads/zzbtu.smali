.class public final Lcom/google/android/gms/internal/ads/zzbtu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsk;
.implements Lcom/google/android/gms/internal/ads/zzbtt;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbtt;

.field private final zzb:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbpr<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbtt;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbtt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zza:Lcom/google/android/gms/internal/ads/zzbtt;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzb:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zza:Lcom/google/android/gms/internal/ads/zzbtt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbsw;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zzbl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbsj;->zzb(Lcom/google/android/gms/internal/ads/zzbsk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzc()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzb:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 2
    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbpr;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unregistering eventhandler: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 2
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zza:Lcom/google/android/gms/internal/ads/zzbtt;

    .line 3
    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbpr;

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzbtt;->zzm(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzb:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final zzd(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbsj;->zzc(Lcom/google/android/gms/internal/ads/zzbsk;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbsj;->zzd(Lcom/google/android/gms/internal/ads/zzbsk;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzl(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbpr<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbtt;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zza:Lcom/google/android/gms/internal/ads/zzbtt;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbtt;->zzl(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzb:Ljava/util/HashSet;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 2
    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzm(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbpr<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbtt;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zza:Lcom/google/android/gms/internal/ads/zzbtt;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbtt;->zzm(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzb:Ljava/util/HashSet;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 2
    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzr(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbsj;->zza(Lcom/google/android/gms/internal/ads/zzbsk;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
