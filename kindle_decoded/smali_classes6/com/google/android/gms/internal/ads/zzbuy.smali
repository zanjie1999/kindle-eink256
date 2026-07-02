.class final synthetic Lcom/google/android/gms/internal/ads/zzbuy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcgv;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzcgv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbuy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbuy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbuy;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcof;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzcog;

    move-result-object p1

    return-object p1
.end method
