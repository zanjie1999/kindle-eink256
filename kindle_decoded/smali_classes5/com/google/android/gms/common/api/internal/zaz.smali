.class final Lcom/google/android/gms/common/api/internal/zaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zaaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaaa;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Lcom/google/android/gms/common/api/internal/zaaa;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Lcom/google/android/gms/common/api/internal/zaaa;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaa;->zag(Lcom/google/android/gms/common/api/internal/zaaa;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
