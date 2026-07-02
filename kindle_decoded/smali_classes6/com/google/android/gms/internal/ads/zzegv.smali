.class final synthetic Lcom/google/android/gms/internal/ads/zzegv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzegw;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsm;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfsm;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfal;

.field private final zze:Lcom/google/android/gms/internal/ads/zzezz;

.field private final zzf:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzegw;Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegv;->zza:Lcom/google/android/gms/internal/ads/zzegw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegv;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegv;->zzc:Lcom/google/android/gms/internal/ads/zzfsm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegv;->zzd:Lcom/google/android/gms/internal/ads/zzfal;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegv;->zze:Lcom/google/android/gms/internal/ads/zzezz;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzegv;->zzf:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegv;->zza:Lcom/google/android/gms/internal/ads/zzegw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegv;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegv;->zzc:Lcom/google/android/gms/internal/ads/zzfsm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegv;->zzd:Lcom/google/android/gms/internal/ads/zzfal;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzegv;->zze:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzegv;->zzf:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzegw;->zzc(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdmh;

    move-result-object v0

    return-object v0
.end method
