.class public final Lcom/google/android/gms/internal/ads/zzagb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Landroid/net/Uri;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzage;

.field private final zzd:Ljava/util/List;

.field private final zze:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzage;-><init>(Lcom/google/android/gms/internal/ads/zzagi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzc:Lcom/google/android/gms/internal/ads/zzage;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzd:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zze:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzagb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagb;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzagb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzb:Landroid/net/Uri;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzagk;
    .locals 27

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzb:Landroid/net/Uri;

    if-eqz v2, :cond_0

    new-instance v11, Lcom/google/android/gms/internal/ads/zzagj;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzd:Ljava/util/List;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzagb;->zze:Ljava/util/List;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzagj;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzagf;Lcom/google/android/gms/internal/ads/zzaga;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzagi;)V

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    move-object v4, v11

    .line 2
    new-instance v8, Lcom/google/android/gms/internal/ads/zzagk;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagb;->zza:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    move-object v2, v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzagd;

    const-wide/16 v10, 0x0

    const-wide/high16 v12, -0x8000000000000000L

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v3

    .line 3
    invoke-direct/range {v9 .. v17}, Lcom/google/android/gms/internal/ads/zzagd;-><init>(JJZZZLcom/google/android/gms/internal/ads/zzagi;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzagh;

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    const v25, -0x800001

    const v26, -0x800001

    move-object/from16 v18, v5

    invoke-direct/range {v18 .. v26}, Lcom/google/android/gms/internal/ads/zzagh;-><init>(JJJFF)V

    sget-object v6, Lcom/google/android/gms/internal/ads/zzago;->zza:Lcom/google/android/gms/internal/ads/zzago;

    const/4 v7, 0x0

    move-object v1, v8

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzagk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzagd;Lcom/google/android/gms/internal/ads/zzagj;Lcom/google/android/gms/internal/ads/zzagh;Lcom/google/android/gms/internal/ads/zzago;Lcom/google/android/gms/internal/ads/zzagi;)V

    return-object v8
.end method
