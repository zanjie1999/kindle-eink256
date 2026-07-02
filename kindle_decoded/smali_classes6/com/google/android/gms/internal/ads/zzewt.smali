.class final Lcom/google/android/gms/internal/ads/zzewt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfcx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/google/android/gms/internal/ads/zzdal<",
        "TA;>;A:",
        "Lcom/google/android/gms/internal/ads/zzcxg;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfcx<",
        "TU;TA;>;"
    }
.end annotation


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzexn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzexn<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final zzb:Lcom/google/android/gms/internal/ads/zzexp;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzbdg;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/util/concurrent/Executor;

.field public final zzf:Lcom/google/android/gms/internal/ads/zzbdr;

.field public final zzg:Lcom/google/android/gms/internal/ads/zzfcm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbdr;Lcom/google/android/gms/internal/ads/zzfcm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzexn<",
            "TU;>;",
            "Lcom/google/android/gms/internal/ads/zzexp;",
            "Lcom/google/android/gms/internal/ads/zzbdg;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzbdr;",
            "Lcom/google/android/gms/internal/ads/zzfcm;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewt;->zza:Lcom/google/android/gms/internal/ads/zzexn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzewt;->zzb:Lcom/google/android/gms/internal/ads/zzexp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzewt;->zzc:Lcom/google/android/gms/internal/ads/zzbdg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzewt;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzewt;->zze:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzewt;->zzf:Lcom/google/android/gms/internal/ads/zzbdr;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzewt;->zzg:Lcom/google/android/gms/internal/ads/zzfcm;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewt;->zze:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfcm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewt;->zzg:Lcom/google/android/gms/internal/ads/zzfcm;

    return-object v0
.end method
