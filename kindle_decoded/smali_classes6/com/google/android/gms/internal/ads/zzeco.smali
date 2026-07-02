.class final synthetic Lcom/google/android/gms/internal/ads/zzeco;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzecm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzecm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeco;->zza:Lcom/google/android/gms/internal/ads/zzecm;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzecm;)Ljava/util/concurrent/Callable;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeco;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeco;-><init>(Lcom/google/android/gms/internal/ads/zzecm;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeco;->zza:Lcom/google/android/gms/internal/ads/zzecm;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
