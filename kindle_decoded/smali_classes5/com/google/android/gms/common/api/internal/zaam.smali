.class final Lcom/google/android/gms/common/api/internal/zaam;
.super Lcom/google/android/gms/common/api/internal/zaaq;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaar;

.field private final zac:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zaaq;-><init>(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/internal/zaah;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaam;->zac:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zal(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaar;->zap(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zad:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaam;->zac:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2
    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaar;->zaq(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/zaar;->zal(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaaz;->zad:Ljava/util/Set;

    .line 3
    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
