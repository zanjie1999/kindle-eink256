.class public final Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;
.super Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;
.source "RemoveArchivableFromLibraryDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoveArchivableFromLibraryDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveArchivableFromLibraryDialogFragment.kt\ncom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,118:1\n3755#2:119\n4270#2,2:120\n3755#2:122\n4270#2,2:123\n*E\n*S KotlinDebug\n*F\n+ 1 RemoveArchivableFromLibraryDialogFragment.kt\ncom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment\n*L\n96#1:119\n96#1,2:120\n97#1:122\n97#1,2:123\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$Companion;


# instance fields
.field private final contentDataArray$delegate:Lkotlin/Lazy;

.field private final dialogMessage$delegate:Lkotlin/Lazy;

.field private final dialogTitle:I

.field private final negativeButtonListener:Landroid/view/View$OnClickListener;

.field private final positiveButtonListener:Landroid/view/View$OnClickListener;

.field private final positiveButtonText:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->Companion:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;-><init>()V

    .line 27
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$contentDataArray$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$contentDataArray$2;-><init>(Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->contentDataArray$delegate:Lkotlin/Lazy;

    .line 32
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_double_confirmation_dialog_header_remove:I

    iput v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->dialogTitle:I

    .line 35
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_double_confirmation_dialog_confirm_remove_button:I

    iput v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->positiveButtonText:I

    .line 38
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$dialogMessage$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$dialogMessage$2;-><init>(Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->dialogMessage$delegate:Lkotlin/Lazy;

    .line 52
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$positiveButtonListener$1;-><init>(Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;)V

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->positiveButtonListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$negativeButtonListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$negativeButtonListener$1;-><init>(Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;)V

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->negativeButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$reportFastMetricsOnButtonClick(Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;Ljava/lang/String;[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->reportFastMetricsOnButtonClick(Ljava/lang/String;[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V

    return-void
.end method

.method private final getFastMetricsDialogId([Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)Ljava/lang/String;
    .locals 9

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    aget-object v5, p1, v3

    .line 96
    invoke-virtual {v5}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v6

    sget-object v7, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    array-length v3, p1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    aget-object v6, p1, v5

    .line 97
    invoke-virtual {v6}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v7

    sget-object v8, Lcom/amazon/kindle/krx/content/ContentType;->PDOC:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_4

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 99
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v4, :cond_6

    const-string p1, "RemoveFromLibraryNonDestructive"

    goto :goto_4

    .line 100
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v4, :cond_7

    const-string p1, "DeleteSamplePermanently"

    goto :goto_4

    .line 101
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_8

    const-string p1, "DeleteMultipleSamplesPermanently"

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_4
    return-object p1
.end method

.method private final reportFastMetricsOnButtonClick(Ljava/lang/String;[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V
    .locals 10

    .line 86
    invoke-direct {p0, p2}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->getFastMetricsDialogId([Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getFastMetricsClient()Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 90
    sget-object v7, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$reportFastMetricsOnButtonClick$1$1;->INSTANCE:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$reportFastMetricsOnButtonClick$1$1;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "ownershipRevoke"

    .line 87
    invoke-static {p1, v0, p2, v1}, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics;->reportUserDialogActionMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getContentDataArray()[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->contentDataArray$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    return-object v0
.end method

.method public bridge synthetic getContentDataArray()[Lcom/amazon/kindle/deletecontent/dialog/ContentData;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->getContentDataArray()[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object v0

    return-object v0
.end method

.method protected getDialogMessage()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->dialogMessage$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method protected getDialogTitle()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->dialogTitle:I

    return v0
.end method

.method protected getNegativeButtonListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->negativeButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getPositiveButtonListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->positiveButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->positiveButtonText:I

    return v0
.end method
