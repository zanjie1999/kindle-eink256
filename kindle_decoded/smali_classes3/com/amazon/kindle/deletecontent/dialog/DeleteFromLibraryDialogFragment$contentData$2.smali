.class final Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$contentData$2;
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
        "Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$contentData$2;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$contentData$2;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "dialogContentDataKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    if-eqz v0, :cond_0

    const-string v1, "arguments?.getParcelable\u2026ontent Data Unavailable\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dialog Content Data Unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$contentData$2;->invoke()Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object v0

    return-object v0
.end method
