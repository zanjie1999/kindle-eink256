.class final synthetic Lcom/google/android/gms/internal/ads/zzewn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzewp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfcl;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcyj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzewp;Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzcyj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewn;->zza:Lcom/google/android/gms/internal/ads/zzewp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzewn;->zzb:Lcom/google/android/gms/internal/ads/zzfcl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzewn;->zzc:Lcom/google/android/gms/internal/ads/zzcyj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewn;->zzb:Lcom/google/android/gms/internal/ads/zzfcl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewn;->zzc:Lcom/google/android/gms/internal/ads/zzcyj;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfal;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfcl;->zzb:Lcom/google/android/gms/internal/ads/zzfal;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfak;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzezz;

    .line 3
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzezz;->zza:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "FirstPartyRenderer"

    .line 4
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcyj;->zzd(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    :goto_2
    return-object p1
.end method
