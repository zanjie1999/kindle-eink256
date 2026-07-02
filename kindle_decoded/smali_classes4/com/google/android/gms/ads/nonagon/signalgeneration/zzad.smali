.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzfsm<",
        "Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzfes;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzdai;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzfes;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaf;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzdai;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzc:Lcom/google/android/gms/internal/ads/zzgln;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgln;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfes;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;->zza()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzc:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdaj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdaj;->zza()Lcom/google/android/gms/internal/ads/zzdai;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfem;->zzt:Lcom/google/android/gms/internal/ads/zzfem;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdai;->zzb()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzfek;->zze(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfej;->zzc(Lcom/google/android/gms/internal/ads/zzfrk;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzdP:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfej;->zzh(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfej;->zzi()Lcom/google/android/gms/internal/ads/zzfdy;

    move-result-object v0

    return-object v0
.end method
