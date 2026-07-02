.class final Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupButtonActionView$2;
.super Ljava/lang/Object;
.source "SnackbarToast.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->setupButtonActionView(Landroid/content/Context;Lcom/amazon/kindle/toast/snackbar/Snackbar;Lcom/amazon/kindle/toast/KindleToastAction;Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $action:Lcom/amazon/kindle/toast/KindleToastAction;

.field final synthetic $dismissHandler:Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/toast/KindleToastAction;Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupButtonActionView$2;->$action:Lcom/amazon/kindle/toast/KindleToastAction;

    iput-object p2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupButtonActionView$2;->$dismissHandler:Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupButtonActionView$2;->$action:Lcom/amazon/kindle/toast/KindleToastAction;

    invoke-interface {p1}, Lcom/amazon/kindle/toast/KindleToastAction;->onActionClicked()V

    .line 139
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupButtonActionView$2;->$dismissHandler:Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;

    invoke-virtual {p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->dismiss()V

    return-void
.end method
