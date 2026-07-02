.class public abstract Lcom/google/android/gms/internal/ads/zzgq;
.super Lcom/google/android/gms/internal/ads/zzgi;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzgi;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lcom/google/android/gms/internal/ads/zzgp<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private zzb:Landroid/os/Handler;

.field private zzc:Lcom/google/android/gms/internal/ads/zzay;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgi;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgq;->zza:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected final zzF()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgq;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgp;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzgp;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgp;->zzb:Lcom/google/android/gms/internal/ads/zzhg;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzp(Lcom/google/android/gms/internal/ads/zzhg;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/ads/zzay;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgq;->zzc:Lcom/google/android/gms/internal/ads/zzay;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzamq;->zzh(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgq;->zzb:Landroid/os/Handler;

    return-void
.end method

.method protected final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgq;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgp;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzgp;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgp;->zzb:Lcom/google/android/gms/internal/ads/zzhg;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzq(Lcom/google/android/gms/internal/ads/zzhg;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zzd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgq;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgp;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzgp;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzgp;->zzb:Lcom/google/android/gms/internal/ads/zzhg;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzhh;->zzr(Lcom/google/android/gms/internal/ads/zzhg;)V

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzgp;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzgp;->zzc:Lcom/google/android/gms/internal/ads/zzgo;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzhh;->zzl(Lcom/google/android/gms/internal/ads/zzhp;)V

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzgp;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgp;->zzc:Lcom/google/android/gms/internal/ads/zzgo;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzn(Lcom/google/android/gms/internal/ads/zzfb;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgq;->zza:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public zzu()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgq;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgp;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgp;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzu()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract zzv(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzaiq;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzhh;",
            "Lcom/google/android/gms/internal/ads/zzaiq;",
            ")V"
        }
    .end annotation
.end method

.method protected final zzw(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhh;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzhh;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgq;->zza:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgn;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(Lcom/google/android/gms/internal/ads/zzgq;Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgo;

    .line 3
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzgo;-><init>(Lcom/google/android/gms/internal/ads/zzgq;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgq;->zza:Ljava/util/HashMap;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgp;

    .line 4
    invoke-direct {v3, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgp;-><init>(Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzhg;Lcom/google/android/gms/internal/ads/zzgo;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgq;->zzb:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzk(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgq;->zzb:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzm(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzfb;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgq;->zzc:Lcom/google/android/gms/internal/ads/zzay;

    .line 7
    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzhh;->zzo(Lcom/google/android/gms/internal/ads/zzhg;Lcom/google/android/gms/internal/ads/zzay;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgi;->zzj()Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhh;->zzq(Lcom/google/android/gms/internal/ads/zzhg;)V

    :cond_0
    return-void

    .line 10
    :cond_1
    throw v2

    .line 11
    :cond_2
    throw v2
.end method

.method protected zzx(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzhf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzhf;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzhf;"
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
