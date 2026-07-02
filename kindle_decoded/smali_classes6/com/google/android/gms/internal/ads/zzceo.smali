.class final synthetic Lcom/google/android/gms/internal/ads/zzceo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcey;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzcey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzceo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzceo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzceo;->zza:Lcom/google/android/gms/internal/ads/zzcey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcod;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcod;->zzk()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
