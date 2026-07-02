.class public final Lcom/google/android/gms/common/api/internal/zal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private final zaa:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final zab:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zac:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private zad:I

.field private zae:Z


# virtual methods
.method public final zaa()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zaa:Landroidx/collection/ArrayMap;

    .line 1
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zaa:Landroidx/collection/ArrayMap;

    .line 1
    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zab:Landroidx/collection/ArrayMap;

    .line 2
    invoke-virtual {v0, p1, p3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zad:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zad:I

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zae:Z

    :cond_0
    iget p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zad:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zae:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/android/gms/common/api/AvailabilityException;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zal;->zaa:Landroidx/collection/ArrayMap;

    .line 4
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/AvailabilityException;-><init>(Landroidx/collection/ArrayMap;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zal;->zac:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zac:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zal;->zab:Landroidx/collection/ArrayMap;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
