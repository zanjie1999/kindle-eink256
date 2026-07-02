.class final Lcom/amazon/kindle/nln/ReaderFastNavigationController$inflateFastNavigationView$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "ReaderFastNavigationController.kt"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/ReaderFastNavigationController;->inflateFastNavigationView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

.field final synthetic this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/nln/ReaderFastNavigationController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$inflateFastNavigationView$$inlined$let$lambda$1;->$readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-object p2, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$inflateFastNavigationView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    const-string p1, "windowInsets"

    .line 270
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result p1

    .line 271
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$inflateFastNavigationView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-static {v1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->access$getRightInset$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$inflateFastNavigationView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-static {v1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->access$getLeftInset$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 274
    :cond_0
    new-instance v1, Lcom/amazon/kcp/util/device/SafeInsets;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2, v2}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    .line 276
    iget-object v2, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$inflateFastNavigationView$$inlined$let$lambda$1;->$readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setSafeInsets(Lcom/amazon/kcp/util/device/SafeInsets;)V

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$inflateFastNavigationView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-static {v1, p1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->access$setRightInset$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;I)V

    .line 278
    iget-object p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$inflateFastNavigationView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-static {p1, v0}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->access$setLeftInset$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;I)V

    :cond_2
    return-object p2
.end method
