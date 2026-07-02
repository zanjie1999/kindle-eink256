.class final Lcom/google/android/gms/common/api/internal/zabi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:I

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zabl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabl;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabi;->zab:Lcom/google/android/gms/common/api/internal/zabl;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zabi;->zaa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabi;->zab:Lcom/google/android/gms/common/api/internal/zabl;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zabi;->zaa:I

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zabl;->zaz(Lcom/google/android/gms/common/api/internal/zabl;I)V

    return-void
.end method
