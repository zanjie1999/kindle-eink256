.class final Lcom/amazon/kindle/toast/DialogToastDismissHandler$1;
.super Ljava/lang/Object;
.source "KindleToast.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/toast/DialogToastDismissHandler;-><init>(Landroidx/appcompat/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/toast/DialogToastDismissHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/toast/DialogToastDismissHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/toast/DialogToastDismissHandler$1;->this$0:Lcom/amazon/kindle/toast/DialogToastDismissHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/amazon/kindle/toast/DialogToastDismissHandler$1;->this$0:Lcom/amazon/kindle/toast/DialogToastDismissHandler;

    invoke-static {p1}, Lcom/amazon/kindle/toast/DialogToastDismissHandler;->access$fireDismissListener(Lcom/amazon/kindle/toast/DialogToastDismissHandler;)V

    return-void
.end method
