.class final Lcom/google/android/gms/tasks/zzac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/tasks/zzab;


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/tasks/zzw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:Ljava/lang/Exception;

.field private zzh:Z


# direct methods
.method public constructor <init>(ILcom/google/android/gms/tasks/zzw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tasks/zzw<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzac;->zza:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/tasks/zzac;->zzb:I

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzac;->zzc:Lcom/google/android/gms/tasks/zzw;

    return-void
.end method

.method private final zza()V
    .locals 6

    iget v0, p0, Lcom/google/android/gms/tasks/zzac;->zzd:I

    iget v1, p0, Lcom/google/android/gms/tasks/zzac;->zze:I

    iget v2, p0, Lcom/google/android/gms/tasks/zzac;->zzf:I

    iget v3, p0, Lcom/google/android/gms/tasks/zzac;->zzb:I

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzac;->zzg:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzac;->zzc:Lcom/google/android/gms/tasks/zzw;

    .line 1
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x36

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " underlying tasks failed"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/tasks/zzac;->zzg:Ljava/lang/Exception;

    invoke-direct {v2, v1, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/zzw;->zzc(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzac;->zzh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzac;->zzc:Lcom/google/android/gms/tasks/zzw;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzw;->zze()Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzac;->zzc:Lcom/google/android/gms/tasks/zzw;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzac;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/tasks/zzac;->zzf:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/tasks/zzac;->zzf:I

    iput-boolean v2, p0, Lcom/google/android/gms/tasks/zzac;->zzh:Z

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzac;->zza()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzac;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/tasks/zzac;->zze:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/tasks/zzac;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzac;->zzg:Ljava/lang/Exception;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzac;->zza()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzac;->zza:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/tasks/zzac;->zzd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tasks/zzac;->zzd:I

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzac;->zza()V

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
