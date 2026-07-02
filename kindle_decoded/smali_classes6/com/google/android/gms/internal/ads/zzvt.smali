.class public final Lcom/google/android/gms/internal/ads/zzvt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzvr;-><init>(Lcom/google/android/gms/internal/ads/zzvt;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zza:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/zzwi;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzwc<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzwi<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzq()V

    const-string v0, "post-response"

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zza:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvs;

    .line 3
    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzvs;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/zzwi;Ljava/lang/Runnable;)V

    check-cast v0, Lcom/google/android/gms/internal/ads/zzvr;

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzvr;->zza:Landroid/os/Handler;

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/zzwl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzwc<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzwl;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzd(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzwi;->zzb(Lcom/google/android/gms/internal/ads/zzwl;)Lcom/google/android/gms/internal/ads/zzwi;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zza:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvs;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzvs;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/zzwi;Ljava/lang/Runnable;)V

    check-cast v0, Lcom/google/android/gms/internal/ads/zzvr;

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzvr;->zza:Landroid/os/Handler;

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
