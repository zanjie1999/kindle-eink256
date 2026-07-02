.class public final Lcom/google/android/gms/internal/ads/zzehu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrk<",
        "Lcom/google/android/gms/internal/ads/zzfal;",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfes;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdbe;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzffr;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzffu;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcxj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcxj<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field private final zzh:Lcom/google/android/gms/internal/ads/zzehp;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzeeh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfes;Lcom/google/android/gms/internal/ads/zzehp;Lcom/google/android/gms/internal/ads/zzdbe;Lcom/google/android/gms/internal/ads/zzffr;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzcxj;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzeeh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfes;",
            "Lcom/google/android/gms/internal/ads/zzehp;",
            "Lcom/google/android/gms/internal/ads/zzdbe;",
            "Lcom/google/android/gms/internal/ads/zzffr;",
            "Lcom/google/android/gms/internal/ads/zzffu;",
            "Lcom/google/android/gms/internal/ads/zzcxj<",
            "TAdT;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/zzeeh;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehu;->zza:Lcom/google/android/gms/internal/ads/zzfes;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzh:Lcom/google/android/gms/internal/ads/zzehp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzb:Lcom/google/android/gms/internal/ads/zzdbe;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzc:Lcom/google/android/gms/internal/ads/zzffr;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzd:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzg:Lcom/google/android/gms/internal/ads/zzcxj;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzehu;->zze:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzf:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzi:Lcom/google/android/gms/internal/ads/zzeeh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfal;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfac;->zze:I

    const/16 v1, 0xc8

    const/16 v2, 0x12c

    if-eqz v0, :cond_2

    if-lt v0, v1, :cond_0

    if-ge v0, v2, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzdN:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "No fill."

    goto :goto_0

    :cond_0
    if-lt v0, v2, :cond_1

    const/16 v3, 0x190

    if-ge v0, v3, :cond_1

    const-string v0, "No location header to follow redirect or too many redirects."

    goto :goto_0

    .line 35
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    .line 3
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Received error HTTP response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "No ad config."

    .line 6
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfac;->zzi:Lcom/google/android/gms/internal/ads/zzfab;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfab;->zza()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzi:Lcom/google/android/gms/internal/ads/zzeeh;

    .line 7
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzeeh;->zza(Lcom/google/android/gms/internal/ads/zzfac;)V

    .line 8
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjl;->zzfW:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_5

    .line 10
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzfac;->zze:I

    if-eqz v3, :cond_5

    if-lt v3, v1, :cond_4

    if-lt v3, v2, :cond_5

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzehs;

    .line 36
    invoke-direct {p1, v4, v0}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    goto/16 :goto_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehu;->zza:Lcom/google/android/gms/internal/ads/zzfes;

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfem;->zzl:Lcom/google/android/gms/internal/ads/zzfem;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzehs;

    .line 12
    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    .line 13
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    .line 14
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfed;->zza(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfek;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfej;->zzi()Lcom/google/android/gms/internal/ads/zzfdy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzb:Lcom/google/android/gms/internal/ads/zzdbe;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcsx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzd:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzc:Lcom/google/android/gms/internal/ads/zzffr;

    .line 16
    invoke-direct {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzcsx;-><init>(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzffr;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehu;->zze:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdgm;->zzi(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfX:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 19
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfak;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzi:Lcom/google/android/gms/internal/ads/zzeeh;

    .line 20
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzeeh;->zzb(Lcom/google/android/gms/internal/ads/zzezz;)V

    .line 21
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzezz;->zza:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzg:Lcom/google/android/gms/internal/ads/zzcxj;

    .line 22
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzezz;->zzb:I

    .line 23
    invoke-interface {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzcxj;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzeec;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 24
    invoke-interface {v4, p1, v2}, Lcom/google/android/gms/internal/ads/zzeec;->zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzi:Lcom/google/android/gms/internal/ads/zzeeh;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 25
    invoke-static {v7, v6, v6}, Lcom/google/android/gms/internal/ads/zzfbm;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v6

    .line 26
    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzeeh;->zzc(Lcom/google/android/gms/internal/ads/zzezz;JLcom/google/android/gms/internal/ads/zzbcz;)V

    goto :goto_1

    .line 27
    :cond_8
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfak;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzezz;

    .line 28
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzezz;->zza:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzg:Lcom/google/android/gms/internal/ads/zzcxj;

    .line 29
    iget v7, v3, Lcom/google/android/gms/internal/ads/zzezz;->zzb:I

    .line 30
    invoke-interface {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzcxj;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzeec;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 31
    invoke-interface {v6, p1, v3}, Lcom/google/android/gms/internal/ads/zzeec;->zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzehu;->zza:Lcom/google/android/gms/internal/ads/zzfes;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzfem;->zzm:Lcom/google/android/gms/internal/ads/zzfem;

    .line 32
    invoke-virtual {v4, v7, v0}, Lcom/google/android/gms/internal/ads/zzfek;->zze(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1a

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "render-config-"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfej;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeht;

    .line 33
    invoke-direct {v4, p0, p1, v3, v6}, Lcom/google/android/gms/internal/ads/zzeht;-><init>(Lcom/google/android/gms/internal/ads/zzehu;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeec;)V

    const-class v3, Ljava/lang/Throwable;

    .line 34
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfej;->zzg(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfrk;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfej;->zzi()Lcom/google/android/gms/internal/ads/zzfdy;

    move-result-object v0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeec;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzh:Lcom/google/android/gms/internal/ads/zzehp;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzeec;->zzb(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzN:I

    int-to-long v1, p3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzf:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    invoke-static {p1, v1, v2, p3, v3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzh(Lcom/google/android/gms/internal/ads/zzfsm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    .line 1
    invoke-virtual {p4, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Lcom/google/android/gms/internal/ads/zzfac;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfsm;

    return-object p1
.end method
