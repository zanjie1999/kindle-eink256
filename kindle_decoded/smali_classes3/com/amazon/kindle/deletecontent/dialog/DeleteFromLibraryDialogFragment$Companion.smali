.class public final Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$Companion;
.super Ljava/lang/Object;
.source "DeleteFromLibraryDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance$DeleteContentModule_release(Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;
    .locals 3

    const-string v0, "bookData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;-><init>()V

    .line 96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dialogContentDataKey"

    .line 97
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 96
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
