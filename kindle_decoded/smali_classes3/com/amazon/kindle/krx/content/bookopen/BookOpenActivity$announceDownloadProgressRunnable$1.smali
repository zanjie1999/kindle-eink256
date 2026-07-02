.class public final Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$announceDownloadProgressRunnable$1;
.super Ljava/lang/Object;
.source "BookOpenActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$announceDownloadProgressRunnable$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$announceDownloadProgressRunnable$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/amazon/kindle/krl/R$string;->speak_OneTap_SplashScreen_loading_book:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$announceDownloadProgressRunnable$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-static {v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->access$downloadProgressPercentage(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAccessibilityHelperKt;->announceForAccessibility(Landroid/view/Window;I[Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$announceDownloadProgressRunnable$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->access$getDelayHandler$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
