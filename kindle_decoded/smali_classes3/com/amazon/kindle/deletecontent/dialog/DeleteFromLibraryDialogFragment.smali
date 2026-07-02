.class public final Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;
.super Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;
.source "DeleteFromLibraryDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$Companion;

.field private static final DIALOG_CONTENT_DATA_KEY:Ljava/lang/String; = "dialogContentDataKey"


# instance fields
.field private final contentData$delegate:Lkotlin/Lazy;

.field private final contentDataArray$delegate:Lkotlin/Lazy;

.field private final dialogMessage$delegate:Lkotlin/Lazy;

.field private final dialogTitle:I

.field private final negativeButtonListener:Landroid/view/View$OnClickListener;

.field private final positiveButtonListener:Landroid/view/View$OnClickListener;

.field private final positiveButtonText:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->Companion:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;-><init>()V

    .line 26
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$contentData$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$contentData$2;-><init>(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->contentData$delegate:Lkotlin/Lazy;

    .line 30
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$contentDataArray$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$contentDataArray$2;-><init>(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->contentDataArray$delegate:Lkotlin/Lazy;

    .line 33
    invoke-static {}, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->shouldShowPermanentlyDeleteString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_double_confirmation_dialog_t2_header_delete:I

    goto :goto_0

    .line 35
    :cond_0
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_double_confirmation_dialog_header_delete:I

    .line 33
    :goto_0
    iput v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->dialogTitle:I

    .line 38
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$dialogMessage$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$dialogMessage$2;-><init>(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->dialogMessage$delegate:Lkotlin/Lazy;

    .line 46
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_double_confirmation_dialog_confirm_delete_button:I

    iput v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->positiveButtonText:I

    .line 48
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$positiveButtonListener$1;-><init>(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;)V

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->positiveButtonListener:Landroid/view/View$OnClickListener;

    .line 70
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$negativeButtonListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$negativeButtonListener$1;-><init>(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;)V

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->negativeButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$getContentData$p(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;)Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->getContentData()Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$reportFastMetricsOnButtonClick(Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;Ljava/lang/String;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->reportFastMetricsOnButtonClick(Ljava/lang/String;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V

    return-void
.end method

.method private final getContentData()Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->contentData$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    return-object v0
.end method

.method private final getFastMetricsDialogId(Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)Ljava/lang/String;
    .locals 0

    .line 84
    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getHasAudibleCompanion()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PermanentlyDeleteDestructiveWithAudibleCompanion"

    goto :goto_0

    :cond_0
    const-string p1, "PermanentlyDeleteDestructive"

    :goto_0
    return-object p1
.end method

.method private final reportFastMetricsOnButtonClick(Ljava/lang/String;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getFastMetricsClient()Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics;

    .line 78
    invoke-direct {p0, p2}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->getFastMetricsDialogId(Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {p2}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->serialize(Lcom/amazon/kindle/deletecontent/dialog/ContentData;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "ownershipRevoke"

    .line 76
    invoke-static {p1, v0, p2, v1}, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics;->reportUserDialogActionMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getContentDataArray()[Lcom/amazon/kindle/deletecontent/dialog/ContentData;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->contentDataArray$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/deletecontent/dialog/ContentData;

    return-object v0
.end method

.method protected getDialogMessage()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->dialogMessage$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method protected getDialogTitle()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->dialogTitle:I

    return v0
.end method

.method protected getNegativeButtonListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->negativeButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getPositiveButtonListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->positiveButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->positiveButtonText:I

    return v0
.end method
