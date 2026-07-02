.class final synthetic Lcom/google/android/gms/internal/ads/zzbox;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpr;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzbpr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbox;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbox;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbox;->zza:Lcom/google/android/gms/internal/ads/zzbpr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcnn;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbpq;->zzd(Lcom/google/android/gms/internal/ads/zzcnn;Ljava/util/Map;)V

    return-void
.end method
