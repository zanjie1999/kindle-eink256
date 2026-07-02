.class public final Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;
.super Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;
.source "RemoveNonArchivableFromLibraryDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$Companion;

.field private static final DIALOG_CONTENT_DATA_KEY:Ljava/lang/String; = "dialogContentDataKey"


# instance fields
.field private final contentData$delegate:Lkotlin/Lazy;

.field private final contentDataArray$delegate:Lkotlin/Lazy;

.field private final dialogMessage:I

.field private final dialogTitle:I

.field private final negativeButtonListener:Landroid/view/View$OnClickListener;

.field private final positiveButtonListener:Landroid/view/View$OnClickListener;

.field private final positiveButtonText:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->Companion:Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;-><init>()V

    .line 18
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$contentData$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$contentData$2;-><init>(Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->contentData$delegate:Lkotlin/Lazy;

    .line 22
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$contentDataArray$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$contentDataArray$2;-><init>(Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->contentDataArray$delegate:Lkotlin/Lazy;

    .line 25
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_double_confirmation_dialog_header_remove:I

    iput v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->dialogTitle:I

    .line 28
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_double_confirmation_dialog_confirm_remove_button:I

    iput v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->positiveButtonText:I

    .line 31
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_double_confirmation_dialog_message_non_purchased_book:I

    iput v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->dialogMessage:I

    .line 33
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$positiveButtonListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$positiveButtonListener$1;-><init>(Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;)V

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->positiveButtonListener:Landroid/view/View$OnClickListener;

    .line 39
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$negativeButtonListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$negativeButtonListener$1;-><init>(Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;)V

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->negativeButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$getContentData$p(Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;)Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->getContentData()Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$reportFastMetricsOnButtonClick(Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;Ljava/lang/String;Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->reportFastMetricsOnButtonClick(Ljava/lang/String;Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;)V

    return-void
.end method

.method private final getContentData()Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->contentData$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;

    return-object v0
.end method

.method private final reportFastMetricsOnButtonClick(Ljava/lang/String;Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getFastMetricsClient()Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics;

    .line 48
    invoke-static {p2}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->serialize(Lcom/amazon/kindle/deletecontent/dialog/ContentData;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "RemoveFromLibraryNonDestructive"

    const-string v1, "ownershipRevoke"

    .line 45
    invoke-static {p1, v0, p2, v1}, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics;->reportUserDialogActionMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getContentDataArray()[Lcom/amazon/kindle/deletecontent/dialog/ContentData;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->contentDataArray$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/deletecontent/dialog/ContentData;

    return-object v0
.end method

.method protected getDialogMessage()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->dialogMessage:I

    return v0
.end method

.method protected getDialogTitle()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->dialogTitle:I

    return v0
.end method

.method protected getNegativeButtonListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->negativeButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getPositiveButtonListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->positiveButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->positiveButtonText:I

    return v0
.end method
