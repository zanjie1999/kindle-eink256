.class public final Lcom/google/android/gms/internal/ads/zzejc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        "ListenerT::Lcom/google/android/gms/internal/ads/zzdcm;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeec<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeee;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeee<",
            "TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeek<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfes;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfsn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfes;Lcom/google/android/gms/internal/ads/zzfsn;Lcom/google/android/gms/internal/ads/zzeee;Lcom/google/android/gms/internal/ads/zzeek;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfes;",
            "Lcom/google/android/gms/internal/ads/zzfsn;",
            "Lcom/google/android/gms/internal/ads/zzeee<",
            "TAdapterT;T",
            "ListenerT;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeek<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejc;->zzc:Lcom/google/android/gms/internal/ads/zzfes;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejc;->zzd:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzejc;->zzb:Lcom/google/android/gms/internal/ads/zzeek;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzejc;->zza:Lcom/google/android/gms/internal/ads/zzeee;

    return-void
.end method

.method static final zze(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1f

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Error from: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", code: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzt:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfal;",
            "Lcom/google/android/gms/internal/ads/zzezz;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TAdT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzejc;->zza:Lcom/google/android/gms/internal/ads/zzeee;

    .line 2
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzv:Lorg/json/JSONObject;

    invoke-interface {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzeee;->zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzeef;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfaw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzehe;

    const-string p2, "Unable to instantiate mediation adapter class."

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzehe;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzchl;

    .line 4
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzejb;

    .line 5
    invoke-direct {v3, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzejb;-><init>(Lcom/google/android/gms/internal/ads/zzejc;Lcom/google/android/gms/internal/ads/zzeef;Lcom/google/android/gms/internal/ads/zzchl;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    .line 6
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzdcm;->zza(Lcom/google/android/gms/internal/ads/zzdcl;)V

    .line 7
    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzI:Z

    if-eqz v3, :cond_3

    .line 8
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbdg;->zzm:Landroid/os/Bundle;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    .line 10
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    const-string v3, "render_test_ad_label"

    .line 12
    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejc;->zzc:Lcom/google/android/gms/internal/ads/zzfes;

    .line 13
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfem;->zzn:Lcom/google/android/gms/internal/ads/zzfem;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeiz;

    .line 14
    invoke-direct {v4, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>(Lcom/google/android/gms/internal/ads/zzejc;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzejc;->zzd:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 15
    invoke-static {v4, v5, v3, v0}, Lcom/google/android/gms/internal/ads/zzfed;->zzd(Lcom/google/android/gms/internal/ads/zzfdx;Lcom/google/android/gms/internal/ads/zzfsn;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfek;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfem;->zzo:Lcom/google/android/gms/internal/ads/zzfem;

    .line 16
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfej;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfej;->zze(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfem;->zzp:Lcom/google/android/gms/internal/ads/zzfem;

    .line 18
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfej;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeja;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzeja;-><init>(Lcom/google/android/gms/internal/ads/zzejc;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)V

    .line 19
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfej;->zzb(Lcom/google/android/gms/internal/ads/zzfdw;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfej;->zzi()Lcom/google/android/gms/internal/ads/zzfdy;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzejc;->zzb:Lcom/google/android/gms/internal/ads/zzeek;

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeek;->zzb(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejc;->zzb:Lcom/google/android/gms/internal/ads/zzeek;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeek;->zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)V

    return-void
.end method
