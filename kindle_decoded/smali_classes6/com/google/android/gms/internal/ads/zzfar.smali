.class public final Lcom/google/android/gms/internal/ads/zzfar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzbis;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzbrx;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzeli;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzbdg;

.field public final zze:Lcom/google/android/gms/internal/ads/zzbdl;

.field public final zzf:Ljava/lang/String;

.field public final zzg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzi:Lcom/google/android/gms/internal/ads/zzblv;

.field public final zzj:Lcom/google/android/gms/internal/ads/zzbdr;

.field public final zzk:I

.field public final zzl:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

.field public final zzm:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field public final zzn:Lcom/google/android/gms/internal/ads/zzbfu;

.field public final zzo:Lcom/google/android/gms/internal/ads/zzfah;

.field public final zzp:Z

.field public final zzq:Lcom/google/android/gms/internal/ads/zzbfy;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfap;Lcom/google/android/gms/internal/ads/zzfaq;)V
    .locals 28

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzb(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zze:Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzc(Lcom/google/android/gms/internal/ads/zzfap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzf:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzN(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbfy;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzq:Lcom/google/android/gms/internal/ads/zzbfy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zza:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzb:J

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzc:Landroid/os/Bundle;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzd:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zze:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-boolean v9, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzf:Z

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzg:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzh:Z

    const/4 v11, 0x1

    if-nez v2, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zze(Lcom/google/android/gms/internal/ads/zzfap;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v11, 0x0

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzi:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzj:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzk:Landroid/location/Location;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v15, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzl:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzm:Landroid/os/Bundle;

    move-object/from16 v16, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzn:Landroid/os/Bundle;

    move-object/from16 v17, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzo:Ljava/util/List;

    move-object/from16 v18, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzp:Ljava/lang/String;

    move-object/from16 v19, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzq:Ljava/lang/String;

    move-object/from16 v20, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzr:Z

    move/from16 v21, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzs:Lcom/google/android/gms/internal/ads/zzbcx;

    move-object/from16 v22, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzt:I

    move/from16 v23, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzu:Ljava/lang/String;

    move-object/from16 v24, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzv:Ljava/util/List;

    move-object/from16 v25, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzw:I

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zze(I)I

    move-result v26

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zza(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzx:Ljava/lang/String;

    move-object/from16 v27, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v27}, Lcom/google/android/gms/internal/ads/zzbdg;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzbio;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzbcx;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzd(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbis;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzd(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbis;

    move-result-object v1

    goto :goto_1

    .line 4
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzh(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzh(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzblv;->zzf:Lcom/google/android/gms/internal/ads/zzbis;

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 2
    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zza:Lcom/google/android/gms/internal/ads/zzbis;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzf(Lcom/google/android/gms/internal/ads/zzfap;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzg:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzg(Lcom/google/android/gms/internal/ads/zzfap;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzh:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzf(Lcom/google/android/gms/internal/ads/zzfap;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_2

    .line 5
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzh(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object v1

    if-nez v1, :cond_5

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzblv;

    new-instance v3, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzblv;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    goto :goto_2

    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzh(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object v1

    .line 2
    :goto_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzi:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzi(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbdr;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzj:Lcom/google/android/gms/internal/ads/zzbdr;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzm(Lcom/google/android/gms/internal/ads/zzfap;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzk:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzj(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzl:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzk(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzm:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzl(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbfu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzn:Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzn(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzbrx;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzb:Lcom/google/android/gms/internal/ads/zzbrx;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzo(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzfaf;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfah;

    .line 5
    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfah;-><init>(Lcom/google/android/gms/internal/ads/zzfaf;Lcom/google/android/gms/internal/ads/zzfag;)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzo:Lcom/google/android/gms/internal/ads/zzfah;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzp(Lcom/google/android/gms/internal/ads/zzfap;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzp:Z

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzq(Lcom/google/android/gms/internal/ads/zzfap;)Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzc:Lcom/google/android/gms/internal/ads/zzeli;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbny;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->zzm:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfar;->zzl:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzc()Lcom/google/android/gms/internal/ads/zzbny;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->zzl:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->zza()Lcom/google/android/gms/internal/ads/zzbny;

    move-result-object v0

    return-object v0
.end method
