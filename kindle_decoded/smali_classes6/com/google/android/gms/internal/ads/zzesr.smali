.class final synthetic Lcom/google/android/gms/internal/ads/zzesr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfln;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfln;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzesr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzesr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzesr;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzesu;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzesu;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
