.class final synthetic Lcom/google/android/gms/internal/ads/zzdph;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfsm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdph;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdph;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcml;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->zzh()Lcom/google/android/gms/internal/ads/zzcnh;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzehs;

    const/4 v0, 0x1

    const-string v1, "Retrieve video view in html5 ad response failed."

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    throw p1
.end method
