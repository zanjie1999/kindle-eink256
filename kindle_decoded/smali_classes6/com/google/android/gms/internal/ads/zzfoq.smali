.class final Lcom/google/android/gms/internal/ads/zzfoq;
.super Lcom/google/android/gms/internal/ads/zzfoe;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfoe<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/ads/zzfor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfor<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfor<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfoe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfoq;->zza:Lcom/google/android/gms/internal/ads/zzfor;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoq;->zza:Lcom/google/android/gms/internal/ads/zzfor;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfor;->zzr(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoq;->zza:Lcom/google/android/gms/internal/ads/zzfor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfoo;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfoo;-><init>(Lcom/google/android/gms/internal/ads/zzfor;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoq;->zza:Lcom/google/android/gms/internal/ads/zzfor;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfor;->zzc:I

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzfql;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfql<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoq;->zza:Lcom/google/android/gms/internal/ads/zzfor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfoo;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfoo;-><init>(Lcom/google/android/gms/internal/ads/zzfor;)V

    return-object v1
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final zzg([Ljava/lang/Object;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoq;->zza:Lcom/google/android/gms/internal/ads/zzfor;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfor;->zzb:Lcom/google/android/gms/internal/ads/zzfon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfon;->zzf()Lcom/google/android/gms/internal/ads/zzfoe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfoj;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzt(I)Lcom/google/android/gms/internal/ads/zzfqm;

    move-result-object v0

    .line 1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfoe;

    .line 3
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzfoe;->zzg([Ljava/lang/Object;I)I

    move-result p2

    goto :goto_0

    :cond_0
    return p2
.end method
