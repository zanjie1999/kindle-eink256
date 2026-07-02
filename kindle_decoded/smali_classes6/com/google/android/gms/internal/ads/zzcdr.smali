.class final Lcom/google/android/gms/internal/ads/zzcdr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrz<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfsm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcds;Lcom/google/android/gms/internal/ads/zzfsm;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcds;->zza()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcds;->zza()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
