.class public final Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$Companion;
.super Ljava/lang/Object;
.source "RemoveArchivableFromLibraryDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoveArchivableFromLibraryDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveArchivableFromLibraryDialogFragment.kt\ncom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,118:1\n37#2,2:119\n*E\n*S KotlinDebug\n*F\n+ 1 RemoveArchivableFromLibraryDialogFragment.kt\ncom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$Companion\n*L\n113#1,2:119\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance$DeleteContentModule_release(Ljava/util/List;)Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;",
            ">;)",
            "Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;"
        }
    .end annotation

    const-string v0, "contentData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;-><init>()V

    .line 112
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    .line 120
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, [Landroid/os/Parcelable;

    const-string v2, "dialogContentDataArrayKey"

    .line 113
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 114
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 112
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
