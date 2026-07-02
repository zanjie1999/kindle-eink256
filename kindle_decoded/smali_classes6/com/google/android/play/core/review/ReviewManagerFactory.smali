.class public Lcom/google/android/play/core/review/ReviewManagerFactory;
.super Ljava/lang/Object;


# direct methods
.method public static create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;
    .locals 2

    invoke-static {p0}, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/p;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/google/android/play/core/review/c;

    new-instance v1, Lcom/google/android/play/core/review/h;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/review/h;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/google/android/play/core/review/c;-><init>(Lcom/google/android/play/core/review/h;)V

    return-object v0
.end method
