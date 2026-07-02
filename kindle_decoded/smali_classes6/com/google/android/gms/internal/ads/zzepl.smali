.class public final Lcom/google/android/gms/internal/ads/zzepl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzery;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzery<",
        "Lcom/google/android/gms/internal/ads/zzepm;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdyc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsn;Lcom/google/android/gms/internal/ads/zzdyc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepl;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepl;->zzb:Lcom/google/android/gms/internal/ads/zzdyc;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzepm;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepl;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzepk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzepk;-><init>(Lcom/google/android/gms/internal/ads/zzepl;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb()Lcom/google/android/gms/internal/ads/zzepm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzepm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepl;->zzb:Lcom/google/android/gms/internal/ads/zzdyc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdyc;->zzg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepl;->zzb:Lcom/google/android/gms/internal/ads/zzdyc;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdyc;->zzd()Z

    move-result v2

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzm()Lcom/google/android/gms/ads/internal/util/zzaz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/util/zzaz;->zzk()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzepm;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method
