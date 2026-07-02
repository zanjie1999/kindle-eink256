.class final synthetic Lcom/google/android/gms/internal/ads/zzclz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzoa;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzoa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzclz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzclz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzclz;->zza:Lcom/google/android/gms/internal/ads/zzoa;

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
    sget p1, Lcom/google/android/gms/internal/ads/zzcmb;->zzc:I

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zznu;

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzrp;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzrp;-><init>(I)V

    aput-object p2, p1, v0

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqi;

    .line 4
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzqi;-><init>(I)V

    const/4 v0, 0x1

    aput-object p2, p1, v0

    return-object p1
.end method
