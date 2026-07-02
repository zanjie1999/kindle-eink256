.class final Lcom/google/android/gms/internal/ads/zzews;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfcw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzdal<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/zzcxg;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfcw<",
        "TR;TAdT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzexo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzexo<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/zzfcl<",
            "TR;TAdT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzexo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzexo<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/zzfcl<",
            "TR;TAdT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzews;->zza:Lcom/google/android/gms/internal/ads/zzexo;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfcx;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfcx<",
            "TR;TAdT;>;)",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzfcl<",
            "TR;TAdT;>;>;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzewt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zza:Lcom/google/android/gms/internal/ads/zzexo;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzewt;->zzb:Lcom/google/android/gms/internal/ads/zzexp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzewt;->zza:Lcom/google/android/gms/internal/ads/zzexn;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzewp;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzewp;->zzb(Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzdal;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfcl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfcl<",
            "TR;TAdT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zza:Lcom/google/android/gms/internal/ads/zzexo;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzewp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzewp;->zza()Lcom/google/android/gms/internal/ads/zzdal;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcl;->zza:Lcom/google/android/gms/internal/ads/zzdal;

    return-void
.end method
