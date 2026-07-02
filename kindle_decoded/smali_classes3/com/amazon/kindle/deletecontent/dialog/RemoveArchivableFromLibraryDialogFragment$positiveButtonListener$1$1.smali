.class final Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RemoveArchivableFromLibraryDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;->onClick(Landroid/view/View;)V
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
    value = "SMAP\nRemoveArchivableFromLibraryDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveArchivableFromLibraryDialogFragment.kt\ncom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Utils.kt\ncom/amazon/kindle/deletecontent/util/UtilsKt\n*L\n1#1,118:1\n509#2:119\n494#2,6:120\n1819#3,2:126\n6#4:128\n*E\n*S KotlinDebug\n*F\n+ 1 RemoveArchivableFromLibraryDialogFragment.kt\ncom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1\n*L\n65#1:119\n65#1,6:120\n66#1,2:126\n69#1:128\n*E\n"
.end annotation


# instance fields
.field final synthetic $asinToBookId:Ljava/util/Map;

.field final synthetic this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;

    iput-object p2, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1;->$asinToBookId:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1;->invoke(Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->getAsinResultMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->getAsinResultMap()Ljava/util/Map;

    move-result-object p1

    .line 119
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 120
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;

    iget-object v1, v1, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {v1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1;->$asinToBookId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/library/ILibraryManager;->deleteItem(Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;

    iget-object p1, p1, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_3

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;

    iget-object v0, v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;

    iget-object v1, v1, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    .line 128
    const-class v1, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T::class.java.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete book failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->getError()Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->getError()Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 71
    :cond_4
    new-instance p1, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->SERVER_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const-string v1, "UNKNOWN"

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;-><init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;Ljava/lang/String;)V

    .line 72
    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;

    iget-object v0, v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->reportErrorDialogMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/deletecontent/api/DeleteContentError;)V

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;

    iget-object p1, p1, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 74
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;

    iget-object p1, p1, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->showErrorDialog()V

    :goto_3
    return-void
.end method
