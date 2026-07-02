.class public final Lcom/google/android/gms/internal/ads/zzahi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahh;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahh;->zze()Lcom/google/android/gms/internal/ads/zzahi;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzahg;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzale;Lcom/google/android/gms/internal/ads/zzahm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahi;->zzc:Lcom/google/android/gms/internal/ads/zzale;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzahi;)Lcom/google/android/gms/internal/ads/zzale;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahi;->zzc:Lcom/google/android/gms/internal/ads/zzale;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzahi;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzahi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahi;->zzc:Lcom/google/android/gms/internal/ads/zzale;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzahi;->zzc:Lcom/google/android/gms/internal/ads/zzale;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzale;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahi;->zzc:Lcom/google/android/gms/internal/ads/zzale;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzale;->hashCode()I

    move-result v0

    return v0
.end method
