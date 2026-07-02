.class final Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;
.super Ljava/lang/Object;
.source "RemoveArchivableFromLibraryDialogFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoveArchivableFromLibraryDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveArchivableFromLibraryDialogFragment.kt\ncom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,118:1\n11298#2:119\n11633#2,3:120\n8639#2,2:123\n9321#2,4:125\n*E\n*S KotlinDebug\n*F\n+ 1 RemoveArchivableFromLibraryDialogFragment.kt\ncom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1\n*L\n60#1:119\n60#1,3:120\n61#1,2:123\n61#1,4:125\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 53
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->getContentDataArray()[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object v0

    const-string v1, "confirm"

    invoke-static {p1, v1, v0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->access$reportFastMetricsOnButtonClick(Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;Ljava/lang/String;[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V

    .line 55
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IAlertDialogManager;->displayAlertDialog(Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;)V

    return-void

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->getContentDataArray()[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object p1

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 60
    invoke-static {v4}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogModelKt;->toDeleteContentAsinDetail(Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->getContentDataArray()[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object p1

    .line 123
    array-length v1, p1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 124
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 125
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    .line 61
    invoke-virtual {v4}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getAsin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getBookId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getDeleteContentClient()Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;

    move-result-object p1

    new-instance v1, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1;

    invoke-direct {v1, p0, v3}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1$1;-><init>(Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;Ljava/util/Map;)V

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->deleteBookWithASINDetails(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
