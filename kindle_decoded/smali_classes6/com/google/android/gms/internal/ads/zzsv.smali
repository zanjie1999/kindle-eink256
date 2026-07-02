.class final synthetic Lcom/google/android/gms/internal/ads/zzsv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzoa;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzoa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzsv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsv;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zznu;
    .locals 1

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzsw;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zznu;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzsw;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzsw;-><init>(I)V

    aput-object p2, p1, v0

    return-object p1
.end method
