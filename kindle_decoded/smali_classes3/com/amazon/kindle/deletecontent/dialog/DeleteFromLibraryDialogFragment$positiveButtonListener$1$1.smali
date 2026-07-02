.class final Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DeleteFromLibraryDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteFromLibraryDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteFromLibraryDialogFragment.kt\ncom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1$1\n+ 2 Utils.kt\ncom/amazon/kindle/deletecontent/util/UtilsKt\n*L\n1#1,102:1\n6#2:103\n*E\n*S KotlinDebug\n*F\n+ 1 DeleteFromLibraryDialogFragment.kt\ncom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1$1\n*L\n61#1:103\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1$1;->invoke(Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;

    iget-object p1, p1, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;

    iget-object v0, v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-static {v0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->access$getContentData$p(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;)Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/library/ILibraryManager;->deleteItem(Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;

    iget-object p1, p1, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;

    iget-object v0, v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;

    iget-object v1, v1, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    .line 103
    const-class v1, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T::class.java.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server response fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->getError()Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->getError()Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->SERVER_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const-string v1, "UNKNOWN"

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;-><init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;Ljava/lang/String;)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;

    iget-object v0, v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->reportErrorDialogMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/deletecontent/api/DeleteContentError;)V

    .line 64
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;

    iget-object p1, p1, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 65
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;

    iget-object p1, p1, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->showErrorDialog()V

    :goto_1
    return-void
.end method
