.class public final Lcom/google/android/gms/internal/ads/zzij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzai;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhw;

.field private zzc:I

.field private final zzd:Lcom/google/android/gms/internal/ads/zzku;

.field private final zze:Lcom/google/android/gms/internal/ads/zzex;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzai;Lcom/google/android/gms/internal/ads/zzoa;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzii;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzii;-><init>(Lcom/google/android/gms/internal/ads/zzoa;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zza:Lcom/google/android/gms/internal/ads/zzai;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzb:Lcom/google/android/gms/internal/ads/zzhw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzex;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzex;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zze:Lcom/google/android/gms/internal/ads/zzex;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzku;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzku;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzd:Lcom/google/android/gms/internal/ads/zzku;

    const/high16 p1, 0x100000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzij;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzc:I

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzagk;)Lcom/google/android/gms/internal/ads/zzil;
    .locals 10

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzagk;->zzc:Lcom/google/android/gms/internal/ads/zzagj;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzil;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzij;->zza:Lcom/google/android/gms/internal/ads/zzai;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzij;->zzb:Lcom/google/android/gms/internal/ads/zzhw;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzff;->zza:Lcom/google/android/gms/internal/ads/zzff;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzij;->zzd:Lcom/google/android/gms/internal/ads/zzku;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzij;->zzc:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    .line 1
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzil;-><init>(Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/internal/ads/zzai;Lcom/google/android/gms/internal/ads/zzhw;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzku;ILcom/google/android/gms/internal/ads/zzik;[B)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
