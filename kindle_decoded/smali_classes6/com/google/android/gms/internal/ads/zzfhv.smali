.class public abstract Lcom/google/android/gms/internal/ads/zzfhv;
.super Lcom/google/android/gms/internal/ads/zzfhw;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field protected final zza:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final zzb:Lorg/json/JSONObject;

.field protected final zzc:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfho;Ljava/util/HashSet;Lorg/json/JSONObject;J[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfho;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "J)V"
        }
    .end annotation

    const/4 p6, 0x0

    .line 1
    invoke-direct {p0, p1, p6}, Lcom/google/android/gms/internal/ads/zzfhw;-><init>(Lcom/google/android/gms/internal/ads/zzfho;[B)V

    new-instance p1, Ljava/util/HashSet;

    .line 2
    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zza:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzb:Lorg/json/JSONObject;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzc:J

    return-void
.end method
