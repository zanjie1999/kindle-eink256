.class public final Lcom/google/android/gms/internal/ads/zzeoj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzery;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzery<",
        "Lcom/google/android/gms/internal/ads/zzeok;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdtk;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfar;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfsn;Lcom/google/android/gms/internal/ads/zzdtk;Lcom/google/android/gms/internal/ads/zzfar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoj;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeoj;->zzb:Lcom/google/android/gms/internal/ads/zzdtk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeoj;->zzd:Lcom/google/android/gms/internal/ads/zzfar;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeoj;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzeok;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoj;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeoi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeoi;-><init>(Lcom/google/android/gms/internal/ads/zzeoj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb()Lcom/google/android/gms/internal/ads/zzeok;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoj;->zzb:Lcom/google/android/gms/internal/ads/zzdtk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeoj;->zzd:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfar;->zzf:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeoj;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdtk;->zzb(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeoj;->zzb:Lcom/google/android/gms/internal/ads/zzdtk;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdtk;->zzc()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeok;

    .line 3
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzeok;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v2
.end method
