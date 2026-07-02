.class final Lcom/google/android/gms/internal/ads/zzeal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrz<",
        "Lcom/google/android/gms/internal/ads/zzfal;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeam;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeam;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeal;->zza:Lcom/google/android/gms/internal/ads/zzeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfal;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeal;->zza:Lcom/google/android/gms/internal/ads/zzeam;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeam;->zza(Lcom/google/android/gms/internal/ads/zzeam;)Lcom/google/android/gms/internal/ads/zzddv;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzddv;->zzq(Lcom/google/android/gms/internal/ads/zzfal;)V

    return-void
.end method
