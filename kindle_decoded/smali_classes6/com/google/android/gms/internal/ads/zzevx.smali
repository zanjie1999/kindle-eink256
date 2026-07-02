.class public final Lcom/google/android/gms/internal/ads/zzevx;
.super Lcom/google/android/gms/internal/ads/zzevf;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzevf<",
        "Lcom/google/android/gms/internal/ads/zzcva;",
        "Lcom/google/android/gms/internal/ads/zzcuv;",
        "Lcom/google/android/gms/internal/ads/zzcuu;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcoj;Lcom/google/android/gms/internal/ads/zzexo;Lcom/google/android/gms/internal/ads/zzevv;Lcom/google/android/gms/internal/ads/zzfap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzcoj;",
            "Lcom/google/android/gms/internal/ads/zzexo<",
            "Lcom/google/android/gms/internal/ads/zzcuv;",
            "Lcom/google/android/gms/internal/ads/zzcva;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzevv;",
            "Lcom/google/android/gms/internal/ads/zzfap;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/zzevf;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcoj;Lcom/google/android/gms/internal/ads/zzexo;Lcom/google/android/gms/internal/ads/zzevv;Lcom/google/android/gms/internal/ads/zzfap;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzcve;Lcom/google/android/gms/internal/ads/zzdao;Lcom/google/android/gms/internal/ads/zzdgp;)Lcom/google/android/gms/internal/ads/zzdak;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzevf;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoj;->zzn()Lcom/google/android/gms/internal/ads/zzcuu;

    move-result-object p1

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcuu;->zza(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/internal/ads/zzcuu;

    .line 3
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzcuu;->zzb(Lcom/google/android/gms/internal/ads/zzdgp;)Lcom/google/android/gms/internal/ads/zzcuu;

    return-object p1
.end method
