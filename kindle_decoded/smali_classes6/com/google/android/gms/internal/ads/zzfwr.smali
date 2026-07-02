.class public final Lcom/google/android/gms/internal/ads/zzfwr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzftg;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzftj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzftg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zza:Lcom/google/android/gms/internal/ads/zzftg;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zzb:Lcom/google/android/gms/internal/ads/zzftj;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzftj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zza:Lcom/google/android/gms/internal/ads/zzftg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zzb:Lcom/google/android/gms/internal/ads/zzftj;

    return-void
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zza:Lcom/google/android/gms/internal/ads/zzftg;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzftg;->zza([B[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zzb:Lcom/google/android/gms/internal/ads/zzftj;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzftj;->zza([B[B)[B

    move-result-object p1

    return-object p1
.end method
