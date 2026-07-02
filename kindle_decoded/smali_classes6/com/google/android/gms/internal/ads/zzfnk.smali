.class final Lcom/google/android/gms/internal/ads/zzfnk;
.super Lcom/google/android/gms/internal/ads/zzfnn;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzfnn<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfns;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfns;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnk;->zza:Lcom/google/android/gms/internal/ads/zzfns;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfnn;-><init>(Lcom/google/android/gms/internal/ads/zzfns;Lcom/google/android/gms/internal/ads/zzfnq;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic zza(I)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnk;->zza:Lcom/google/android/gms/internal/ads/zzfns;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfnp;-><init>(Lcom/google/android/gms/internal/ads/zzfns;I)V

    return-object v0
.end method
