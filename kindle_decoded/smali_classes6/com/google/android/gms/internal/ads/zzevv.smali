.class public final Lcom/google/android/gms/internal/ads/zzevv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbf;
.implements Lcom/google/android/gms/internal/ads/zzddb;
.implements Lcom/google/android/gms/internal/ads/zzexl;
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;
.implements Lcom/google/android/gms/internal/ads/zzddn;
.implements Lcom/google/android/gms/internal/ads/zzdbs;
.implements Lcom/google/android/gms/internal/ads/zzdio;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfby;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzaxz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzaya;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzayd;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzddb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzf:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/ads/internal/overlay/zzo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzbgw;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/ads/zzevv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfby;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevv;->zza:Lcom/google/android/gms/internal/ads/zzfby;

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzevv;)Lcom/google/android/gms/internal/ads/zzevv;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzevv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevv;->zza:Lcom/google/android/gms/internal/ads/zzfby;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzevv;-><init>(Lcom/google/android/gms/internal/ads/zzfby;)V

    iput-object p0, v0, Lcom/google/android/gms/internal/ads/zzevv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    return-object v0
.end method


# virtual methods
.method public final zzR()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzevv;->zzR()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzevr;->zza:Lcom/google/android/gms/internal/ads/zzexb;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexc;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexb;)V

    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzevv;->zzb()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzevk;->zza:Lcom/google/android/gms/internal/ads/zzexb;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexc;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexb;)V

    return-void
.end method

.method public final zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzevv;->zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzevn;

    .line 1
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzevn;-><init>(Lcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexc;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzevo;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzevo;-><init>(Lcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexc;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexb;)V

    return-void
.end method

.method public final zzbp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzevv;->zzbp()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzevs;->zza:Lcom/google/android/gms/internal/ads/zzexb;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexc;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzevt;->zza:Lcom/google/android/gms/internal/ads/zzexb;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexc;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzevu;->zza:Lcom/google/android/gms/internal/ads/zzexb;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexc;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexb;)V

    return-void
.end method

.method public final zzbq()V
    .locals 0

    return-void
.end method

.method public final zzbr()V
    .locals 0

    return-void
.end method

.method public final zzbs(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzevv;->zzbs(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzevh;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzevh;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexc;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexb;)V

    return-void
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzevv;->zzd()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzevi;->zza:Lcom/google/android/gms/internal/ads/zzexb;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexc;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexb;)V

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzevv;->zze()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzevj;->zza:Lcom/google/android/gms/internal/ads/zzexb;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexc;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexb;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzaxz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzayd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzddb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/ads/internal/overlay/zzo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzbgw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzaxw;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzevv;->zzm(Lcom/google/android/gms/internal/ads/zzaxw;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzevm;

    .line 1
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzevm;-><init>(Lcom/google/android/gms/internal/ads/zzaxw;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexc;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexb;)V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzevv;->zzn(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzevl;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzevl;-><init>(Lcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexc;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexb;)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzbdn;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzevv;->zzo(Lcom/google/android/gms/internal/ads/zzbdn;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzevg;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzevg;-><init>(Lcom/google/android/gms/internal/ads/zzbdn;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexc;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexb;)V

    return-void
.end method

.method public final zzp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzevv;->zzp()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zza:Lcom/google/android/gms/internal/ads/zzfby;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfby;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzevp;->zza:Lcom/google/android/gms/internal/ads/zzexb;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexc;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzevq;->zza:Lcom/google/android/gms/internal/ads/zzexb;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexc;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexb;)V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzexl;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzevv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzaya;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevv;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
