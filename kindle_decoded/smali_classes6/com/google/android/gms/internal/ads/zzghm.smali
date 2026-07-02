.class final Lcom/google/android/gms/internal/ads/zzghm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzghz<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzghi;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgio<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgfn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgfn<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgio;Lcom/google/android/gms/internal/ads/zzgfn;Lcom/google/android/gms/internal/ads/zzghi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgio<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/zzgfn<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzghi;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzgfn;->zza(Lcom/google/android/gms/internal/ads/zzghi;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzghm;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    return-void
.end method

.method static zzg(Lcom/google/android/gms/internal/ads/zzgio;Lcom/google/android/gms/internal/ads/zzgfn;Lcom/google/android/gms/internal/ads/zzghi;)Lcom/google/android/gms/internal/ads/zzghm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzgio<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/zzgfn<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzghi;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzghm<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzghm;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzghm;-><init>(Lcom/google/android/gms/internal/ads/zzgio;Lcom/google/android/gms/internal/ads/zzgfn;Lcom/google/android/gms/internal/ads/zzghi;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzghi;->zzaM()Lcom/google/android/gms/internal/ads/zzghh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzghh;->zzak()Lcom/google/android/gms/internal/ads/zzghi;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzgio;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzc:Z

    if-nez p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzc(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgib;->zzF(Lcom/google/android/gms/internal/ads/zzgio;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzc:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgib;->zzE(Lcom/google/android/gms/internal/ads/zzgfn;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final zze(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgio;->zzp(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzght;Lcom/google/android/gms/internal/ads/zzgfm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzght;",
            "Lcom/google/android/gms/internal/ads/zzgfm;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzk(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgej;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/zzgej;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgga;

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzgga;->zzc:Lcom/google/android/gms/internal/ads/zzgip;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgip;->zza()Lcom/google/android/gms/internal/ads/zzgip;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgip;->zzb()Lcom/google/android/gms/internal/ads/zzgip;

    move-result-object p3

    .line 2
    iput-object p3, p2, Lcom/google/android/gms/internal/ads/zzgga;->zzc:Lcom/google/android/gms/internal/ads/zzgip;

    .line 3
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgfx;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzj(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzm(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzd(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzgfi;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 p1, 0x0

    throw p1
.end method
