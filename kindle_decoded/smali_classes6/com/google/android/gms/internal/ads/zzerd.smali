.class final synthetic Lcom/google/android/gms/internal/ads/zzerd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfln;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfln;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzerd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzerd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzerd;->zza:Lcom/google/android/gms/internal/ads/zzfln;

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
    check-cast p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzerg;

    iget-object p1, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;->zza:Ljava/lang/String;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzerg;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzerg;

    const/4 p1, 0x0

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzerg;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
