.class final Lcom/google/android/gms/internal/ads/zzeer;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkn;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzcus;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzezz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcml;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfar;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbpu;

.field private final zzg:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzfar;ZLcom/google/android/gms/internal/ads/zzbpu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcgz;",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzcus;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzezz;",
            "Lcom/google/android/gms/internal/ads/zzcml;",
            "Lcom/google/android/gms/internal/ads/zzfar;",
            "Z",
            "Lcom/google/android/gms/internal/ads/zzbpu;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeer;->zza:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeer;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeer;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeer;->zzd:Lcom/google/android/gms/internal/ads/zzcml;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeer;->zze:Lcom/google/android/gms/internal/ads/zzfar;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzeer;->zzg:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeer;->zzf:Lcom/google/android/gms/internal/ads/zzbpu;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbp;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeer;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzr(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcus;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeer;->zzd:Lcom/google/android/gms/internal/ads/zzcml;

    const/4 v3, 0x1

    .line 2
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzcml;->zzag(Z)V

    .line 3
    new-instance v2, Lcom/google/android/gms/ads/internal/zzj;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzeer;->zzg:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeer;->zzf:Lcom/google/android/gms/internal/ads/zzbpu;

    .line 4
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbpu;->zzc(Z)Z

    move-result v4

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzeer;->zzg:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeer;->zzf:Lcom/google/android/gms/internal/ads/zzbpu;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbpu;->zzd()Z

    move-result v4

    move v7, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzeer;->zzg:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeer;->zzf:Lcom/google/android/gms/internal/ads/zzbpu;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbpu;->zze()F

    move-result v4

    move v8, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_2
    const/4 v6, 0x1

    const/4 v9, -0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeer;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    .line 5
    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/zzezz;->zzK:Z

    const/4 v12, 0x0

    move-object v4, v2

    move/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/ads/internal/zzj;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_3

    .line 6
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzdbp;->zze()V

    .line 7
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzb()Lcom/google/android/gms/ads/internal/overlay/zzm;

    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcus;->zzj()Lcom/google/android/gms/internal/ads/zzdkc;

    move-result-object v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzeer;->zzd:Lcom/google/android/gms/internal/ads/zzcml;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeer;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    .line 9
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzezz;->zzM:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    :goto_3
    move v9, v1

    goto :goto_4

    .line 13
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeer;->zze:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfar;->zzj:Lcom/google/android/gms/internal/ads/zzbdr;

    if-eqz v1, :cond_6

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbdr;->zza:I

    if-ne v1, v3, :cond_5

    const/4 v1, 0x7

    const/4 v9, 0x7

    goto :goto_4

    :cond_5
    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    const/4 v1, 0x6

    const/4 v9, 0x6

    goto :goto_4

    :cond_6
    const-string v1, "Error setting app open orientation; no targeting orientation available."

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeer;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    .line 11
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzezz;->zzM:I

    goto :goto_3

    .line 9
    :goto_4
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzeer;->zza:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeer;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    .line 12
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzezz;->zzB:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzezz;->zzs:Lcom/google/android/gms/internal/ads/zzfae;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzfae;->zzb:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzfae;->zza:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeer;->zze:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfar;->zzf:Ljava/lang/String;

    move-object v4, v15

    move-object v12, v2

    move-object v2, v15

    move-object v15, v1

    move-object/from16 v16, p3

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzcml;ILcom/google/android/gms/internal/ads/zzcgz;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdbp;)V

    move-object/from16 v1, p2

    .line 13
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
