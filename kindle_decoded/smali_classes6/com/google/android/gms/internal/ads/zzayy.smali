.class public final Lcom/google/android/gms/internal/ads/zzayy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzayn;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzayn;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/ads/zzayz;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzayx;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzayx;->zze(Lcom/google/android/gms/internal/ads/zzayn;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
