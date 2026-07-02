.class public final Lcom/google/android/gms/internal/ads/zzban;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzggd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzggd<",
            "Lcom/google/android/gms/internal/ads/zzban;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbal;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbal;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzban;->zza:Lcom/google/android/gms/internal/ads/zzggd;

    return-void
.end method

.method public static zza(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x3e9

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    return v0
.end method
