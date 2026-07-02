.class final Lcom/google/android/gms/internal/ads/zzdra;
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
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzezz;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdrh;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfac;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdra;->zza:Lcom/google/android/gms/internal/ads/zzezz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdra;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdra;->zza:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdra;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcml;->zzaC(Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfac;)V

    return-void
.end method
