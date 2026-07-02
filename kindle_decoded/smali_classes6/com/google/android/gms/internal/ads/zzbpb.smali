.class final synthetic Lcom/google/android/gms/internal/ads/zzbpb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdio;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdio;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpb;->zza:Lcom/google/android/gms/internal/ads/zzdio;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpb;->zza:Lcom/google/android/gms/internal/ads/zzdio;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcml;

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbpq;->zzc(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzdio;)V

    const-string v0, "u"

    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, "URL missing from click GMSG."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbpq;->zza(Lcom/google/android/gms/internal/ads/zzcml;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbph;

    .line 6
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbph;-><init>(Lcom/google/android/gms/internal/ads/zzcml;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzchg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    return-void
.end method
