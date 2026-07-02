.class public Lcom/google/android/gms/internal/ads/zzfor;
.super Lcom/google/android/gms/internal/ads/zzfnh;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfnh<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final transient zzb:Lcom/google/android/gms/internal/ads/zzfon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfon<",
            "TK;+",
            "Lcom/google/android/gms/internal/ads/zzfoe<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final transient zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfon;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfon<",
            "TK;+",
            "Lcom/google/android/gms/internal/ads/zzfoe<",
            "TV;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfnh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzb:Lcom/google/android/gms/internal/ads/zzfon;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzc:I

    return-void
.end method


# virtual methods
.method public final zzg()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzh(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzi()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method final zzk()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method final bridge synthetic zzn()Ljava/util/Collection;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfoq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfoq;-><init>(Lcom/google/android/gms/internal/ads/zzfor;)V

    return-object v0
.end method

.method final zzp()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final zzr(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfng;->zzr(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic zzt()Ljava/util/Collection;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic zzu()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzb:Lcom/google/android/gms/internal/ads/zzfon;

    return-object v0
.end method
