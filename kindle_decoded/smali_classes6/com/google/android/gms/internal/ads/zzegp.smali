.class public final Lcom/google/android/gms/internal/ads/zzegp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeee<",
        "Lcom/google/android/gms/internal/ads/zzfbi;",
        "Lcom/google/android/gms/internal/ads/zzefy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdtf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdtf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegp;->zza:Lcom/google/android/gms/internal/ads/zzdtf;

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
            "Lcom/google/android/gms/internal/ads/zzfbi;",
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegp;->zza:Lcom/google/android/gms/internal/ads/zzdtf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtf;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfbi;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzefy;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefy;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeef;

    .line 3
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzeef;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdcm;Ljava/lang/String;)V

    return-object v1
.end method
