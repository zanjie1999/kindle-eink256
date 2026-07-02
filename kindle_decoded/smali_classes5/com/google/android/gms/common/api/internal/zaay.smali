.class final Lcom/google/android/gms/common/api/internal/zaay;
.super Lcom/google/android/gms/common/api/internal/zabq;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private final zaa:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/zaaz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaaz;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabq;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaay;->zaa:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaay;->zaa:Ljava/lang/ref/WeakReference;

    .line 1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaaz;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaz;->zah(Lcom/google/android/gms/common/api/internal/zaaz;)V

    return-void
.end method
