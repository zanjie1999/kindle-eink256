.class public final Lcom/google/android/gms/internal/ads/zzfea;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfek;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfek;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfeb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfek;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzfsm;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfea;->zza:Lcom/google/android/gms/internal/ads/zzfek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfea;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfea;->zzc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfej;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzfej<",
            "TO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfea;->zzc:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzo(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfsb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfdz;->zza:Ljava/util/concurrent/Callable;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsb;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v7

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfej;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfea;->zza:Lcom/google/android/gms/internal/ads/zzfek;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfea;->zzb:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfea;->zzc:Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfek;->zzb(Lcom/google/android/gms/internal/ads/zzfek;)Lcom/google/android/gms/internal/ads/zzfsn;

    move-result-object v2

    .line 3
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzfsb;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzfej;-><init>(Lcom/google/android/gms/internal/ads/zzfek;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfsm;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfeb;)V

    return-object v1
.end method
