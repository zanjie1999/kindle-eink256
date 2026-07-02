.class public final Lcom/google/android/gms/internal/ads/zzfcq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/internal/ads/zzfcg;",
            "Lcom/google/android/gms/internal/ads/zzfcp<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcq;->zza:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfcg;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfby;Lcom/google/android/gms/internal/ads/zzfcw;)Lcom/google/android/gms/internal/ads/zzfcp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/internal/ads/zzdal<",
            "TAdT;>;AdT:",
            "Lcom/google/android/gms/internal/ads/zzcxg;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzfcg;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzfby;",
            "Lcom/google/android/gms/internal/ads/zzfcw<",
            "TR;TAdT;>;)",
            "Lcom/google/android/gms/internal/ads/zzfcp<",
            "TR;TAdT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcq;->zza:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfcp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcd;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfcj;->zza(Lcom/google/android/gms/internal/ads/zzfcg;Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfcj;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzfcd;-><init>(Lcom/google/android/gms/internal/ads/zzfcj;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfcy;

    .line 3
    invoke-direct {p2, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzfcy;-><init>(Lcom/google/android/gms/internal/ads/zzfcc;Lcom/google/android/gms/internal/ads/zzfby;Lcom/google/android/gms/internal/ads/zzfcw;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfcp;

    .line 4
    invoke-direct {p3, v0, p2}, Lcom/google/android/gms/internal/ads/zzfcp;-><init>(Lcom/google/android/gms/internal/ads/zzfcc;Lcom/google/android/gms/internal/ads/zzfcy;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfcq;->zza:Ljava/util/HashMap;

    .line 5
    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :cond_0
    return-object v0
.end method
