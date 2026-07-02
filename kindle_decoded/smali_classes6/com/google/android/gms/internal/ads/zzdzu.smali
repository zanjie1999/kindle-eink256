.class final Lcom/google/android/gms/internal/ads/zzdzu;
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
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzu;->zza:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzu;->zza:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzv;->zzb(Lcom/google/android/gms/internal/ads/zzdzv;)Lcom/google/android/gms/internal/ads/zzddz;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzddz;->zzbB(Z)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfal;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzu;->zza:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzv;->zza(Lcom/google/android/gms/internal/ads/zzdzv;)Lcom/google/android/gms/internal/ads/zzddv;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzddv;->zzq(Lcom/google/android/gms/internal/ads/zzfal;)V

    return-void
.end method
