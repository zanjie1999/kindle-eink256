.class final synthetic Lcom/google/android/gms/internal/ads/zzfv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgd;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzgd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzgd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfo;

    sget v0, Lcom/google/android/gms/internal/ads/zzge;->zza:I

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
