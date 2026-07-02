.class final Lcom/google/android/gms/internal/ads/zzbtk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzchp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzchp<",
        "Lcom/google/android/gms/internal/ads/zzbtt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbtm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbtm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtk;->zza:Lcom/google/android/gms/internal/ads/zzbtm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbtt;

    const-string p1, "Releasing engine reference."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtk;->zza:Lcom/google/android/gms/internal/ads/zzbtm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbtm;->zza(Lcom/google/android/gms/internal/ads/zzbtm;)Lcom/google/android/gms/internal/ads/zzbtr;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbtr;->zzb()V

    return-void
.end method
