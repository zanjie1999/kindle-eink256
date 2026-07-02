.class final Lcom/amazon/kindle/toast/DialogToastDismissHandler;
.super Ljava/lang/Object;
.source "KindleToast.kt"

# interfaces
.implements Lcom/amazon/kindle/toast/ToastDismissHandler;


# instance fields
.field private final dialog:Landroidx/appcompat/app/AlertDialog;

.field private dismissListener:Lcom/amazon/kindle/toast/ToastDismissListener;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AlertDialog;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/toast/DialogToastDismissHandler;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 156
    new-instance v0, Lcom/amazon/kindle/toast/DialogToastDismissHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/toast/DialogToastDismissHandler$1;-><init>(Lcom/amazon/kindle/toast/DialogToastDismissHandler;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public static final synthetic access$fireDismissListener(Lcom/amazon/kindle/toast/DialogToastDismissHandler;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/amazon/kindle/toast/DialogToastDismissHandler;->fireDismissListener()V

    return-void
.end method

.method private final fireDismissListener()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/kindle/toast/DialogToastDismissHandler;->dismissListener:Lcom/amazon/kindle/toast/ToastDismissListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/toast/ToastDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/toast/DialogToastDismissHandler;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 161
    invoke-direct {p0}, Lcom/amazon/kindle/toast/DialogToastDismissHandler;->fireDismissListener()V

    return-void
.end method

.method public setDismissListener(Lcom/amazon/kindle/toast/ToastDismissListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iput-object p1, p0, Lcom/amazon/kindle/toast/DialogToastDismissHandler;->dismissListener:Lcom/amazon/kindle/toast/ToastDismissListener;

    return-void
.end method

.method public setDismissListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/amazon/kindle/toast/DialogToastDismissHandler$setDismissListener$1;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/toast/DialogToastDismissHandler$setDismissListener$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/toast/DialogToastDismissHandler;->setDismissListener(Lcom/amazon/kindle/toast/ToastDismissListener;)V

    return-void
.end method
