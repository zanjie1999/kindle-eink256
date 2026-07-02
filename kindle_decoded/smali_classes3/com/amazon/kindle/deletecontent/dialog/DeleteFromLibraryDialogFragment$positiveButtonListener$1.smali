.class final Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;
.super Ljava/lang/Object;
.source "DeleteFromLibraryDialogFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 49
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-static {p1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->access$getContentData$p(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;)Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object v0

    const-string v1, "confirm"

    invoke-static {p1, v1, v0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->access$reportFastMetricsOnButtonClick(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;Ljava/lang/String;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V

    .line 51
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p1

    if-nez p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IAlertDialogManager;->displayAlertDialog(Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;)V

    return-void

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-static {p1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->access$getContentData$p(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;)Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogModelKt;->toDeleteContentAsinDetail(Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getDeleteContentClient()Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1$1;-><init>(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->deleteBookWithASINDetails(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
