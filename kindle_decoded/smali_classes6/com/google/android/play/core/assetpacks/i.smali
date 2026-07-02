.class final Lcom/google/android/play/core/assetpacks/i;
.super Landroid/os/ResultReceiver;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/tasks/i;

.field final synthetic b:Lcom/google/android/play/core/assetpacks/j;


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/i;->a:Lcom/google/android/play/core/tasks/i;

    new-instance p2, Lcom/google/android/play/core/assetpacks/AssetPackException;

    const/16 v0, -0x64

    invoke-direct {p2, v0}, Lcom/google/android/play/core/assetpacks/AssetPackException;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/i;->b(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/i;->a:Lcom/google/android/play/core/tasks/i;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/i;->b(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/i;->a:Lcom/google/android/play/core/tasks/i;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/i;->b:Lcom/google/android/play/core/assetpacks/j;

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/j;->a(Lcom/google/android/play/core/assetpacks/j;)Lcom/google/android/play/core/assetpacks/bn;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/assetpacks/bn;->a(Landroid/app/PendingIntent;)V

    return-void
.end method
