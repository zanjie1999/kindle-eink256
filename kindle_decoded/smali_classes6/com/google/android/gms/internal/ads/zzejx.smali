.class public final Lcom/google/android/gms/internal/ads/zzejx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdkf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdkf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejx;->zza:Lcom/google/android/gms/internal/ads/zzdkf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzejt;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzejv;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzeju;->zza:Lcom/google/android/gms/internal/ads/zzdkn;

    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/zzejv;-><init>(Lcom/google/android/gms/internal/ads/zzejx;Lcom/google/android/gms/internal/ads/zzdkn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejx;->zza:Lcom/google/android/gms/internal/ads/zzdkf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcxv;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzcxv;-><init>(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzdkf;->zzQ(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzdjm;)Lcom/google/android/gms/internal/ads/zzdjj;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzejw;

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzejw;-><init>(Lcom/google/android/gms/internal/ads/zzejx;Lcom/google/android/gms/internal/ads/zzdjj;)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzejt;->zzd(Lcom/google/android/gms/ads/internal/zzf;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjj;->zzh()Lcom/google/android/gms/internal/ads/zzdji;

    move-result-object p1

    return-object p1
.end method
