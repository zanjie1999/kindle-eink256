.class final synthetic Lcom/google/android/gms/internal/ads/zzbub;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbty;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzbty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbub;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbub;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbub;->zza:Lcom/google/android/gms/internal/ads/zzbty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbud;->zza(Lorg/json/JSONObject;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
