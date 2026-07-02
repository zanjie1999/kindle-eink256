.class final Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$contentDataArray$2;
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
        "[",
        "Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$contentDataArray$2;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$contentDataArray$2;->invoke()[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    .line 30
    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$contentDataArray$2;->this$0:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-static {v1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->access$getContentData$p(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;)Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
