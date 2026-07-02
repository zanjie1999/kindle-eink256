.class public abstract Lcom/google/android/gms/internal/ads/zzatu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzatt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zzd([Lcom/google/android/gms/internal/ads/zzans;Lcom/google/android/gms/internal/ads/zzatg;)Lcom/google/android/gms/internal/ads/zzatv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation
.end method

.method public abstract zze(Ljava/lang/Object;)V
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzatt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatu;->zza:Lcom/google/android/gms/internal/ads/zzatt;

    return-void
.end method

.method protected final zzg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatu;->zza:Lcom/google/android/gms/internal/ads/zzatt;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatt;->zzk()V

    :cond_0
    return-void
.end method
