.class public final Lcom/google/android/gms/internal/ads/zzeiv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeee<",
        "Lcom/google/android/gms/internal/ads/zzbxn;",
        "Lcom/google/android/gms/internal/ads/zzefy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzejz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzejz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiv;->zza:Lcom/google/android/gms/internal/ads/zzejz;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzeef;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzeef<",
            "Lcom/google/android/gms/internal/ads/zzbxn;",
            "Lcom/google/android/gms/internal/ads/zzefy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfaw;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeiv;->zza:Lcom/google/android/gms/internal/ads/zzejz;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbxn;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefy;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefy;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeef;

    .line 3
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzeef;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdcm;Ljava/lang/String;)V

    return-object v1
.end method
