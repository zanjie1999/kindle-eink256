.class final Lcom/google/android/gms/internal/ads/zzgz;
.super Lcom/google/android/gms/internal/ads/zzgu;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zzb:Ljava/lang/Object;


# instance fields
.field private final zze:Ljava/lang/Object;

.field private final zzf:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgz;->zzb:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgu;-><init>(Lcom/google/android/gms/internal/ads/zzaiq;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgz;->zze:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgz;->zzf:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzgz;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgz;->zzf:Ljava/lang/Object;

    return-object p0
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzagk;)Lcom/google/android/gms/internal/ads/zzgz;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzha;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Lcom/google/android/gms/internal/ads/zzagk;)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzaip;->zza:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgz;->zzb:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzgz;-><init>(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzm(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgz;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgz;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgz;-><init>(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgu;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    .line 2
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgz;->zze:Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaip;->zza:Ljava/lang/Object;

    .line 3
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgu;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;

    .line 2
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzain;->zzb:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgz;->zzf:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgz;->zzb:Ljava/lang/Object;

    .line 3
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzain;->zzb:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final zzi(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgu;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgz;->zzb:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgz;->zzf:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final zzj(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgu;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzj(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgz;->zzf:Ljava/lang/Object;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgz;->zzb:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzaiq;)Lcom/google/android/gms/internal/ads/zzgz;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgz;->zze:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgz;->zzf:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgz;-><init>(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
