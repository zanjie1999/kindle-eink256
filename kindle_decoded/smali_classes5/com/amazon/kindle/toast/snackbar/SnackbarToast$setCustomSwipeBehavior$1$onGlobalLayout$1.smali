.class public final Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1$onGlobalLayout$1;
.super Ljava/lang/Object;
.source "SnackbarToast.kt"

# interfaces
.implements Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1$onGlobalLayout$1;->this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1$onGlobalLayout$1;->this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1;

    iget-object p1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1;->$dismissHandler:Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;

    invoke-virtual {p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->dismissWithoutAnimation()V

    return-void
.end method
