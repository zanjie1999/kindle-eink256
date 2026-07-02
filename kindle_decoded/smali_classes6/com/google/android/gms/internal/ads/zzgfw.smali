.class public Lcom/google/android/gms/internal/ads/zzgfw;
.super Lcom/google/android/gms/internal/ads/zzgef;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzgfw<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzgef<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/ads/zzgga;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgga;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzgga;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgef;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzc:Lcom/google/android/gms/internal/ads/zzgga;

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgga;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    return-void
.end method

.method private static final zza(Lcom/google/android/gms/internal/ads/zzgga;Lcom/google/android/gms/internal/ads/zzgga;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghq;->zza()Lcom/google/android/gms/internal/ads/zzghq;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzghq;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzghz;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzaf()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic zzac(Lcom/google/android/gms/internal/ads/zzgeg;)Lcom/google/android/gms/internal/ads/zzgef;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgga;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzai(Lcom/google/android/gms/internal/ads/zzgga;)Lcom/google/android/gms/internal/ads/zzgfw;

    return-object p0
.end method

.method protected zzae()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzgga;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgga;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfw;->zza(Lcom/google/android/gms/internal/ads/zzgga;Lcom/google/android/gms/internal/ads/zzgga;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    return-void
.end method

.method public final zzaf()Lcom/google/android/gms/internal/ads/zzgfw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzc:Lcom/google/android/gms/internal/ads/zzgga;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzgga;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgfw;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzag()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzai(Lcom/google/android/gms/internal/ads/zzgga;)Lcom/google/android/gms/internal/ads/zzgfw;

    return-object v0
.end method

.method public zzag()Lcom/google/android/gms/internal/ads/zzgga;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghq;->zza()Lcom/google/android/gms/internal/ads/zzghq;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzghq;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzghz;->zzj(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    return-object v0
.end method

.method public final zzah()Lcom/google/android/gms/internal/ads/zzgga;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzag()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzat()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgin;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgin;-><init>(Lcom/google/android/gms/internal/ads/zzghi;)V

    .line 4
    throw v1
.end method

.method public final zzai(Lcom/google/android/gms/internal/ads/zzgga;)Lcom/google/android/gms/internal/ads/zzgfw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzae()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfw;->zza(Lcom/google/android/gms/internal/ads/zzgga;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-object p0
.end method

.method public final zzaj([BIILcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzgfw;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/ads/zzgfm;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzggm;
        }
    .end annotation

    .line 1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzae()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghq;->zza()Lcom/google/android/gms/internal/ads/zzghq;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzghq;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzgej;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/ads/zzgej;-><init>(Lcom/google/android/gms/internal/ads/zzgfm;)V

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzghz;->zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgej;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    .line 4
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 5
    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzd()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 6
    throw p1
.end method

.method public bridge synthetic zzak()Lcom/google/android/gms/internal/ads/zzghi;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzag()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzbe()Lcom/google/android/gms/internal/ads/zzghi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzc:Lcom/google/android/gms/internal/ads/zzgga;

    return-object v0
.end method
