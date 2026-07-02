.class final synthetic Lcom/google/android/gms/internal/ads/zzdeg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfk;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzdfk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdeg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdeg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdeg;->zza:Lcom/google/android/gms/internal/ads/zzdfk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzelm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelm;->onAdClicked()V

    return-void
.end method
