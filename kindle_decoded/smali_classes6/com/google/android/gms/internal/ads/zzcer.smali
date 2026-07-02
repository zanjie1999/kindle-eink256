.class final synthetic Lcom/google/android/gms/internal/ads/zzcer;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcey;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzcey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcer;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcer;->zza:Lcom/google/android/gms/internal/ads/zzcey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcod;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcod;->zzr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcod;->zzs()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    return-object v0
.end method
