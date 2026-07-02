.class public final Lcom/google/android/gms/internal/ads/zzeib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeek;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeek<",
        "Lcom/google/android/gms/internal/ads/zzdrw;",
        "Lcom/google/android/gms/internal/ads/zzbxn;",
        "Lcom/google/android/gms/internal/ads/zzefy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdsb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeib;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzb:Lcom/google/android/gms/internal/ads/zzdsb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)V
    .locals 10
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

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzo:Lcom/google/android/gms/internal/ads/zzfah;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfah;->zza:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 3
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbxn;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzQ:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzv:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeib;->zza:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzehz;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/zzehz;-><init>(Lcom/google/android/gms/internal/ads/zzeib;Lcom/google/android/gms/internal/ads/zzeef;Lcom/google/android/gms/internal/ads/zzeia;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzbvm;

    .line 3
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzbxn;->zzp(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbxk;Lcom/google/android/gms/internal/ads/zzbvm;)V

    return-void

    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 6
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbxn;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzQ:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzv:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeib;->zza:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzehz;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/zzehz;-><init>(Lcom/google/android/gms/internal/ads/zzeib;Lcom/google/android/gms/internal/ads/zzeef;Lcom/google/android/gms/internal/ads/zzeia;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzbvm;

    .line 6
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzbxn;->zzl(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbxk;Lcom/google/android/gms/internal/ads/zzbvm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Remote exception loading a rewarded RTB ad"

    .line 9
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
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
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegh;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbxn;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzegh;-><init>(Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzbxn;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzb:Lcom/google/android/gms/internal/ads/zzdsb;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzeef;->zza:Ljava/lang/String;

    .line 2
    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzcxv;-><init>(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdry;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdry;-><init>(Lcom/google/android/gms/internal/ads/zzdkn;)V

    .line 3
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdsb;->zzU(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzdry;)Lcom/google/android/gms/internal/ads/zzdrx;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxh;->zzd()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzegh;->zzb(Lcom/google/android/gms/internal/ads/zzdbu;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzefy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrx;->zzn()Lcom/google/android/gms/internal/ads/zzeix;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzefy;->zzc(Lcom/google/android/gms/internal/ads/zzbvm;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrx;->zzh()Lcom/google/android/gms/internal/ads/zzdrw;

    move-result-object p1

    return-object p1
.end method
