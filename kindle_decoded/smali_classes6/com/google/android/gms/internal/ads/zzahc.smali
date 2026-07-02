.class public Lcom/google/android/gms/internal/ads/zzahc;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zzi:I

.field public final zzj:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzahb;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzahc;->zzi:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzahc;->zzj:J

    return-void
.end method
