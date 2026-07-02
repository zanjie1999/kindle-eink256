.class public final Lcom/google/android/gms/internal/ads/zzcxn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzcxg;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcxg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zza:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzcxg;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zza:Ljava/util/List;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/internal/ads/zzeec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzegq<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzcxg;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzeec<",
            "Lcom/google/android/gms/internal/ads/zzcxn;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeed;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcxl;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzeed;-><init>(Lcom/google/android/gms/internal/ads/zzeec;Lcom/google/android/gms/internal/ads/zzfln;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzeec;)Lcom/google/android/gms/internal/ads/zzeec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeec<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzcxg;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzeec<",
            "Lcom/google/android/gms/internal/ads/zzcxn;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeed;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcxm;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzeed;-><init>(Lcom/google/android/gms/internal/ads/zzeec;Lcom/google/android/gms/internal/ads/zzfln;)V

    return-object v0
.end method
