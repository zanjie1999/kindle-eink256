.class final Lcom/google/android/gms/internal/ads/zzdqx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrz<",
        "Lcom/google/android/gms/internal/ads/zzcml;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbpr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdrh;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzb:Lcom/google/android/gms/internal/ads/zzbpr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcml;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzb:Lcom/google/android/gms/internal/ads/zzbpr;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcml;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    return-void
.end method
