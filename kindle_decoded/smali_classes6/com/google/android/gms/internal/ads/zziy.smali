.class public final Lcom/google/android/gms/internal/ads/zziy;
.super Lcom/google/android/gms/internal/ads/zzaiq;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzagk;


# instance fields
.field private final zze:J

.field private final zzf:J

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zzagk;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzagh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zziy;->zza:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzagb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzagb;-><init>()V

    const-string v1, "SinglePeriodTimeline"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzagb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzagb;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzagb;->zzb(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzagb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagb;->zzc()Lcom/google/android/gms/internal/ads/zzagk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zziy;->zzb:Lcom/google/android/gms/internal/ads/zzagk;

    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/internal/ads/zzagh;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaiq;-><init>()V

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zziy;->zze:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zziy;->zzf:J

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zziy;->zzg:Z

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zziy;->zzh:Lcom/google/android/gms/internal/ads/zzagk;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zziy;->zzi:Lcom/google/android/gms/internal/ads/zzagh;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move/from16 v4, p1

    .line 1
    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzakt;->zzc(III)I

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaip;->zza:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zziy;->zzh:Lcom/google/android/gms/internal/ads/zzagk;

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zziy;->zzg:Z

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zziy;->zzi:Lcom/google/android/gms/internal/ads/zzagh;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zziy;->zzf:J

    move-wide/from16 v16, v4

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v1 .. v21}, Lcom/google/android/gms/internal/ads/zzaip;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzagk;Ljava/lang/Object;JJJZZLcom/google/android/gms/internal/ads/zzagh;JJIIJ)Lcom/google/android/gms/internal/ads/zzaip;

    return-object p2
.end method

.method public final zzg()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzakt;->zzc(III)I

    if-eqz p3, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zziy;->zza:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zziy;->zze:J

    const-wide/16 v6, 0x0

    .line 2
    sget-object v8, Lcom/google/android/gms/internal/ads/zzd;->zza:Lcom/google/android/gms/internal/ads/zzd;

    const/4 v9, 0x0

    move-object v0, p2

    .line 3
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzain;->zza(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/gms/internal/ads/zzd;Z)Lcom/google/android/gms/internal/ads/zzain;

    return-object p2
.end method

.method public final zzi(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zziy;->zza:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final zzj(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzakt;->zzc(III)I

    sget-object p1, Lcom/google/android/gms/internal/ads/zziy;->zza:Ljava/lang/Object;

    return-object p1
.end method
