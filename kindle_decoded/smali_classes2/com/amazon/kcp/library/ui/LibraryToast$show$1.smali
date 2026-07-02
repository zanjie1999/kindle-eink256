.class final Lcom/amazon/kcp/library/ui/LibraryToast$show$1;
.super Ljava/lang/Object;
.source "LibraryToast.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ui/LibraryToast;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $accessibilityMessage:Ljava/lang/String;

.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $anchorView:Landroid/view/View;

.field final synthetic $identifier:Ljava/lang/String;

.field final synthetic $message:Ljava/lang/String;

.field final synthetic $toastAction:Lcom/amazon/kindle/toast/KindleToastAction;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryToast$show$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/amazon/kcp/library/ui/LibraryToast$show$1;->$anchorView:Landroid/view/View;

    iput-object p3, p0, Lcom/amazon/kcp/library/ui/LibraryToast$show$1;->$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/library/ui/LibraryToast$show$1;->$accessibilityMessage:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kcp/library/ui/LibraryToast$show$1;->$toastAction:Lcom/amazon/kindle/toast/KindleToastAction;

    iput-object p6, p0, Lcom/amazon/kcp/library/ui/LibraryToast$show$1;->$identifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 48
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryToast;->INSTANCE:Lcom/amazon/kcp/library/ui/LibraryToast;

    .line 43
    new-instance v1, Lcom/amazon/kindle/toast/KindleToast$Builder;

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/LibraryToast$show$1;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/amazon/kcp/library/ui/LibraryToast$show$1;->$anchorView:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/toast/KindleToast$Builder;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 44
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/LibraryToast$show$1;->$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/toast/KindleToast$Builder;->setMessage(Ljava/lang/String;)Lcom/amazon/kindle/toast/KindleToast$Builder;

    .line 45
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/LibraryToast$show$1;->$accessibilityMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/toast/KindleToast$Builder;->setAccessibilityMessage(Ljava/lang/String;)Lcom/amazon/kindle/toast/KindleToast$Builder;

    .line 46
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/LibraryToast$show$1;->$toastAction:Lcom/amazon/kindle/toast/KindleToastAction;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/toast/KindleToast$Builder;->setButtonAction(Lcom/amazon/kindle/toast/KindleToastAction;)Lcom/amazon/kindle/toast/KindleToast$Builder;

    .line 47
    invoke-virtual {v1}, Lcom/amazon/kindle/toast/KindleToast$Builder;->build()Lcom/amazon/kindle/toast/KindleToast;

    move-result-object v1

    .line 48
    invoke-interface {v1}, Lcom/amazon/kindle/toast/KindleToast;->show()Lcom/amazon/kindle/toast/ToastDismissHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/ui/LibraryToast;->access$setDismissHandler$p(Lcom/amazon/kcp/library/ui/LibraryToast;Lcom/amazon/kindle/toast/ToastDismissHandler;)V

    .line 50
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryToast;->INSTANCE:Lcom/amazon/kcp/library/ui/LibraryToast;

    invoke-static {v0}, Lcom/amazon/kcp/library/ui/LibraryToast;->access$getDismissHandler$p(Lcom/amazon/kcp/library/ui/LibraryToast;)Lcom/amazon/kindle/toast/ToastDismissHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/kcp/library/ui/LibraryToast$show$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/ui/LibraryToast$show$1$1;-><init>(Lcom/amazon/kcp/library/ui/LibraryToast$show$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/toast/ToastDismissHandler;->setDismissListener(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method
