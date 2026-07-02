.class final Lcom/google/android/gms/internal/ads/zzgej;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzgfm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgfm;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgej;->zzd:Lcom/google/android/gms/internal/ads/zzgfm;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
