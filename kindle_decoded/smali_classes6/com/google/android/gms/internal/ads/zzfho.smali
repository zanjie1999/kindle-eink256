.class public final Lcom/google/android/gms/internal/ads/zzfho;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:Lorg/json/JSONObject;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfhx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfhx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfho;->zzb:Lcom/google/android/gms/internal/ads/zzfhx;

    return-void
.end method


# virtual methods
.method public final zza(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfho;->zzb:Lcom/google/android/gms/internal/ads/zzfhx;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfia;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzfia;-><init>(Lcom/google/android/gms/internal/ads/zzfho;Ljava/util/HashSet;Lorg/json/JSONObject;J[B)V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfhx;->zza(Lcom/google/android/gms/internal/ads/zzfhw;)V

    return-void
.end method

.method public final zzb(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfho;->zzb:Lcom/google/android/gms/internal/ads/zzfhx;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfhz;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzfhz;-><init>(Lcom/google/android/gms/internal/ads/zzfho;Ljava/util/HashSet;Lorg/json/JSONObject;J[B)V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfhx;->zza(Lcom/google/android/gms/internal/ads/zzfhw;)V

    return-void
.end method

.method public final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfho;->zzb:Lcom/google/android/gms/internal/ads/zzfhx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzfhy;-><init>(Lcom/google/android/gms/internal/ads/zzfho;[B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfhx;->zza(Lcom/google/android/gms/internal/ads/zzfhw;)V

    return-void
.end method

.method public final zzd()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfho;->zza:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zze(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfho;->zza:Lorg/json/JSONObject;

    return-void
.end method
