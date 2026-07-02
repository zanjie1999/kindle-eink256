.class final Lcom/amazon/kindle/toast/DialogToast$show$1;
.super Ljava/lang/Object;
.source "KindleToast.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/toast/DialogToast;->show()Lcom/amazon/kindle/toast/ToastDismissHandler;
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

    iput-object p1, p0, Lcom/amazon/kindle/toast/DialogToast$show$1;->$action:Lcom/amazon/kindle/toast/KindleToastAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 124
    iget-object p2, p0, Lcom/amazon/kindle/toast/DialogToast$show$1;->$action:Lcom/amazon/kindle/toast/KindleToastAction;

    invoke-interface {p2}, Lcom/amazon/kindle/toast/KindleToastAction;->onActionClicked()V

    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
