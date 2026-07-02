.class final Lcom/google/android/gms/internal/ads/zzctk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbpr<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzctl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctk;->zza:Lcom/google/android/gms/internal/ads/zzctl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctk;->zza:Lcom/google/android/gms/internal/ads/zzctl;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzctl;->zzg(Lcom/google/android/gms/internal/ads/zzctl;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctk;->zza:Lcom/google/android/gms/internal/ads/zzctl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzctl;->zza(Lcom/google/android/gms/internal/ads/zzctl;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzctj;

    .line 2
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzctj;-><init>(Lcom/google/android/gms/internal/ads/zzctk;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
