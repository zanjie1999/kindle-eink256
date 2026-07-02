.class public final Lcom/google/android/gms/internal/ads/zzehc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeek;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeek<",
        "Lcom/google/android/gms/internal/ads/zzdmh;",
        "Lcom/google/android/gms/internal/ads/zzbxn;",
        "Lcom/google/android/gms/internal/ads/zzefy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdlb;

.field private zzc:Lcom/google/android/gms/internal/ads/zzbvv;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcgz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdlb;Lcom/google/android/gms/internal/ads/zzcgz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehc;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzb:Lcom/google/android/gms/internal/ads/zzdlb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzd:Lcom/google/android/gms/internal/ads/zzcgz;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzehc;Lcom/google/android/gms/internal/ads/zzbvv;)Lcom/google/android/gms/internal/ads/zzbvv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzc:Lcom/google/android/gms/internal/ads/zzbvv;

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfal;",
            "Lcom/google/android/gms/internal/ads/zzezz;",
            "Lcom/google/android/gms/internal/ads/zzeef<",
            "Lcom/google/android/gms/internal/ads/zzbxn;",
            "Lcom/google/android/gms/internal/ads/zzefy;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfaw;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbxn;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzV:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbxn;->zzo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzd:Lcom/google/android/gms/internal/ads/zzcgz;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcgz;->zzc:I

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzbd:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 4
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbxn;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzQ:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzv:Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehc;->zza:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzeha;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/zzeha;-><init>(Lcom/google/android/gms/internal/ads/zzehc;Lcom/google/android/gms/internal/ads/zzeef;Lcom/google/android/gms/internal/ads/zzehb;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzbvm;

    .line 4
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzbxn;->zzn(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbxh;Lcom/google/android/gms/internal/ads/zzbvm;)V

    return-void

    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 7
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbxn;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzQ:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzv:Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehc;->zza:Landroid/content/Context;

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v7

    .line 10
    new-instance v8, Lcom/google/android/gms/internal/ads/zzeha;

    .line 9
    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/zzeha;-><init>(Lcom/google/android/gms/internal/ads/zzehc;Lcom/google/android/gms/internal/ads/zzeef;Lcom/google/android/gms/internal/ads/zzehb;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    move-object v9, p2

    check-cast v9, Lcom/google/android/gms/internal/ads/zzbvm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v10, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzi:Lcom/google/android/gms/internal/ads/zzblv;

    .line 7
    invoke-interface/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzbxn;->zzr(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbxh;Lcom/google/android/gms/internal/ads/zzbvm;Lcom/google/android/gms/internal/ads/zzblv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfaw;

    .line 10
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfaw;,
            Lcom/google/android/gms/internal/ads/zzehs;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzg:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzc:Lcom/google/android/gms/internal/ads/zzbvv;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzaa(Lcom/google/android/gms/internal/ads/zzbvv;)Lcom/google/android/gms/internal/ads/zzdmm;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfar;->zzg:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzv()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzb:Lcom/google/android/gms/internal/ads/zzdlb;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzeef;->zza:Ljava/lang/String;

    .line 7
    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzcxv;-><init>(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdmy;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdmy;-><init>(Lcom/google/android/gms/internal/ads/zzdmm;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdol;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzc:Lcom/google/android/gms/internal/ads/zzbvv;

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v0, v3}, Lcom/google/android/gms/internal/ads/zzdol;-><init>(Lcom/google/android/gms/internal/ads/zzbvs;Lcom/google/android/gms/internal/ads/zzbvr;Lcom/google/android/gms/internal/ads/zzbvv;[B)V

    .line 8
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzdlb;->zzU(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzdmy;Lcom/google/android/gms/internal/ads/zzdol;)Lcom/google/android/gms/internal/ads/zzdmo;

    move-result-object p1

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    .line 9
    check-cast p2, Lcom/google/android/gms/internal/ads/zzefy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxh;->zzg()Lcom/google/android/gms/internal/ads/zzeiy;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzefy;->zzc(Lcom/google/android/gms/internal/ads/zzbvm;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdmp;->zzh()Lcom/google/android/gms/internal/ads/zzdmh;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzehs;

    const/4 p2, 0x1

    const-string p3, "No corresponding native ad listener"

    .line 6
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzehs;

    const/4 p2, 0x2

    const-string p3, "Unified must be used for RTB."

    .line 2
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    throw p1
.end method
