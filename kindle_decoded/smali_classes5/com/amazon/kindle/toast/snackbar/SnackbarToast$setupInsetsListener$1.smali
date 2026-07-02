.class final Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupInsetsListener$1;
.super Ljava/lang/Object;
.source "SnackbarToast.kt"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->setupInsetsListener(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $paddingHorizontal:I

.field final synthetic $paddingVertical:I

.field final synthetic $snackbarView:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarToast;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/toast/snackbar/SnackbarToast;Landroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupInsetsListener$1;->this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarToast;

    iput-object p2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupInsetsListener$1;->$snackbarView:Landroid/view/View;

    iput p3, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupInsetsListener$1;->$paddingVertical:I

    iput p4, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupInsetsListener$1;->$paddingHorizontal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    const-string p1, "insets"

    .line 127
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getDisplayCutoutSafeInsets(Landroid/view/WindowInsets;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupInsetsListener$1;->this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarToast;

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupInsetsListener$1;->$snackbarView:Landroid/view/View;

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupInsetsListener$1;->$paddingVertical:I

    iget v3, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupInsetsListener$1;->$paddingHorizontal:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->access$setPaddingWithSafeInsets(Lcom/amazon/kindle/toast/snackbar/SnackbarToast;Landroid/view/View;IILcom/amazon/kcp/util/device/SafeInsets;)V

    return-object p2
.end method
