.class final Lcom/google/android/gms/internal/ads/zzbph;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrz<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcml;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcml;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbph;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzcb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbph;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcml;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbph;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcml;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzcb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzb;->zzc()Lcom/google/android/gms/internal/ads/zzfsm;

    return-void
.end method
