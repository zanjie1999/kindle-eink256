.class final Lcom/amazon/kindle/toast/snackbar/SnackbarToast$show$2$1;
.super Ljava/lang/Object;
.source "SnackbarToast.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->show()Lcom/amazon/kindle/toast/ToastDismissHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $action:Lcom/amazon/kindle/toast/KindleToastAction;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/toast/KindleToastAction;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$show$2$1;->$action:Lcom/amazon/kindle/toast/KindleToastAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$show$2$1;->$action:Lcom/amazon/kindle/toast/KindleToastAction;

    invoke-interface {p1}, Lcom/amazon/kindle/toast/KindleToastAction;->onActionClicked()V

    return-void
.end method
