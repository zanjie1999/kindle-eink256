.class final Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$dialogMessage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DeleteFromLibraryDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$dialogMessage$2;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$dialogMessage$2;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-static {v0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->access$getContentData$p(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;)Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getHasAudibleCompanion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_dialog_message_delete_book_with_audible_companion:I

    goto :goto_0

    .line 42
    :cond_0
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_double_confirmation_dialog_message_purchased_book:I

    :goto_0
    return v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$dialogMessage$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
