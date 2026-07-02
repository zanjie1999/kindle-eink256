.class final synthetic Lcom/google/android/gms/internal/ads/zzddd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgl;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzdgl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzddd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzddd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzddd;->zza:Lcom/google/android/gms/internal/ads/zzdgl;

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
    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/zzo;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzd()V

    return-void
.end method
