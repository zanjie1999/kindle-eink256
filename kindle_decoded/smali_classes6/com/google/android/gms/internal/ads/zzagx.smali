.class final Lcom/google/android/gms/internal/ads/zzagx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzagt;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzhb;

.field public final zzb:Ljava/lang/Object;

.field public final zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzhf;",
            ">;"
        }
    .end annotation
.end field

.field public zzd:I

.field public zze:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhh;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Lcom/google/android/gms/internal/ads/zzhh;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagx;->zza:Lcom/google/android/gms/internal/ads/zzhb;

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagx;->zzc:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagx;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagx;->zzd:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzagx;->zze:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagx;->zzc:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagx;->zzb:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzaiq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagx;->zza:Lcom/google/android/gms/internal/ads/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhb;->zzy()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v0

    return-object v0
.end method
