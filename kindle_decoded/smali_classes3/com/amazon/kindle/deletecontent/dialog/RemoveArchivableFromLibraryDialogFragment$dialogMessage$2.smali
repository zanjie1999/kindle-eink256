.class final Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$dialogMessage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RemoveArchivableFromLibraryDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;-><init>()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoveArchivableFromLibraryDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveArchivableFromLibraryDialogFragment.kt\ncom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$dialogMessage$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 Utils.kt\ncom/amazon/kindle/deletecontent/util/UtilsKt\n*L\n1#1,118:1\n3755#2:119\n4270#2,2:120\n3755#2:122\n4270#2,2:123\n6#3:125\n*E\n*S KotlinDebug\n*F\n+ 1 RemoveArchivableFromLibraryDialogFragment.kt\ncom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$dialogMessage$2\n*L\n39#1:119\n39#1,2:120\n40#1:122\n40#1,2:123\n46#1:125\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$dialogMessage$2;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 10

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$dialogMessage$2;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->getContentDataArray()[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget-object v6, v0, v4

    .line 39
    invoke-virtual {v6}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v7

    sget-object v8, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$dialogMessage$2;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->getContentDataArray()[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object v0

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    array-length v4, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_5

    aget-object v7, v0, v6

    .line 40
    invoke-virtual {v7}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v8

    sget-object v9, Lcom/amazon/kindle/krx/content/ContentType;->PDOC:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_4

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 42
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_6

    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_double_confirmation_dialog_message_non_purchased_book:I

    goto :goto_4

    .line 43
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_7

    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_double_confirmation_dialog_message_sample:I

    goto :goto_4

    .line 44
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_8

    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_double_confirmation_dialog_message_multiple_samples:I

    goto :goto_4

    .line 46
    :cond_8
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$dialogMessage$2;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    .line 125
    const-class v1, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T::class.java.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "No matching message. Fallback to a message for single non-purchased item."

    .line 46
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_double_confirmation_dialog_message_non_purchased_book:I

    :goto_4
    return v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$dialogMessage$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
