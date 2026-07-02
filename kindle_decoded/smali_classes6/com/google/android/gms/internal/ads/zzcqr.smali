.class final Lcom/google/android/gms/internal/ads/zzcqr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcqu;

.field private zzb:Lcom/google/android/gms/internal/ads/zzdao;

.field private zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcqu;Lcom/google/android/gms/internal/ads/zzcql;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqr;->zza:Lcom/google/android/gms/internal/ads/zzcqu;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqr;->zzb:Lcom/google/android/gms/internal/ads/zzdao;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdao;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqr;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;

    const-class v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqs;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcqr;->zza:Lcom/google/android/gms/internal/ads/zzcqu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcqr;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcyl;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcyl;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdvv;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzdvv;-><init>()V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcqr;->zzb:Lcom/google/android/gms/internal/ads/zzdao;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfbt;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzfbt;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    .line 3
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzcqs;-><init>(Lcom/google/android/gms/internal/ads/zzcqu;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;Lcom/google/android/gms/internal/ads/zzcyl;Lcom/google/android/gms/internal/ads/zzdvv;Lcom/google/android/gms/internal/ads/zzdao;Lcom/google/android/gms/internal/ads/zzfbt;Lcom/google/android/gms/internal/ads/zzexu;Lcom/google/android/gms/internal/ads/zzewv;Lcom/google/android/gms/internal/ads/zzcql;)V

    return-object v0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqr;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;

    return-object p0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqr;->zzb:Lcom/google/android/gms/internal/ads/zzdao;

    return-object p0
.end method
