.class final synthetic Lcom/google/android/gms/internal/ads/zzboy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfln;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfln;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzboy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzboy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzboy;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbpq;->zza:Lcom/google/android/gms/internal/ads/zzbpr;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbkx;->zzk:Lcom/google/android/gms/internal/ads/zzbkn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkn;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v0

    const-string v1, "prepareClickUrl.attestation1"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcge;->zzk(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const-string p1, "failure_click_attok"

    return-object p1
.end method
