.class public abstract Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;
.super Ljava/lang/Object;
.source "GoodreadsShelfComponentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;
    }
.end annotation


# static fields
.field private static final SUBTLE_JIT_ANIMATION_DURATION_IN_MS:I = 0x1f4

.field private static final SUBTLE_JIT_ANIMATION_START_DELAY_IN_MS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.goodreadsshelf.GoodreadsShelfComponentBase"

.field private static final defaultShelves:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected activityContext:Landroid/content/Context;

.field protected autoShelfContainer:Landroid/view/View;

.field protected autoShelfPrompt:Landroid/widget/TextView;

.field protected autoShelfSwitch:Landroid/widget/CompoundButton;

.field private currentShelf:Ljava/lang/String;

.field protected goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

.field protected final goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

.field protected layoutInflater:Landroid/view/LayoutInflater;

.field protected manualShelfContainer:Landroid/view/View;

.field protected manualShelfPrompt:Landroid/widget/TextView;

.field private final metricsTag:Ljava/lang/String;

.field protected shelfSelectionSpinner:Landroid/widget/Spinner;

.field protected updatingShelfText:Landroid/widget/TextView;

.field protected updatingShelfView:Landroid/view/View;

.field protected view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->defaultShelves:Ljava/util/Set;

    const-string/jumbo v1, "to-read"

    .line 93
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->defaultShelves:Ljava/util/Set;

    const-string v1, "currently-reading"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->defaultShelves:Ljava/util/Set;

    const-string/jumbo v1, "read"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->defaultShelves:Ljava/util/Set;

    const-string/jumbo v1, "none"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    .line 101
    iput-object p3, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    .line 102
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getInstance()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    .line 103
    iput-object p4, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->metricsTag:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 105
    iget-object p1, p2, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->shelves:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 107
    iget-object p1, p2, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->shelves:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 110
    iget-object p2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    invoke-virtual {p2, p3, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->setLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    invoke-virtual {p1, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->setCurrentShelf(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    sget-object p1, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Creating GoodreadsShelfComponent for asin: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->metricsTag:Ljava/lang/String;

    return-object p0
.end method

.method private createAndShowChangeFromCustomShelfWarningDialog(Ljava/lang/String;)V
    .locals 6

    .line 461
    sget v2, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_custom_shelf_warning_dialog_title:I

    sget v3, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_custom_shelf_warning_dialog_message:I

    sget v4, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_custom_shelf_warning_dialog_positive_action:I

    sget v5, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_custom_shelf_warning_dialog_negative_action:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->createAndShowWarningDialog(Ljava/lang/String;IIII)V

    return-void
.end method

.method private createAndShowErrorDialog(II)V
    .locals 3

    .line 605
    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;

    invoke-direct {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;-><init>()V

    .line 606
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 607
    sget-object v2, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;->MESSAGE_RESOURCE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 608
    sget-object p1, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;->BUTTON_TEXT_RESOURCE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 611
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 612
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private createAndShowGenericErrorDialog()V
    .locals 2

    .line 572
    sget v0, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_update_failed_dialog_message:I

    sget v1, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_update_failed_dialog_button:I

    invoke-direct {p0, v0, v1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->createAndShowErrorDialog(II)V

    const-string v0, "DisplayedGenericUpdateShelfFailureDialog"

    .line 574
    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->incrementMetric(Ljava/lang/String;)V

    return-void
.end method

.method private createAndShowGoodreadsLinkingErrorDialog()V
    .locals 2

    .line 582
    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->forceUpdate()V

    .line 588
    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->isGrokSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    sget v0, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_update_failed_unlinked_dialog_message:I

    goto :goto_0

    .line 591
    :cond_0
    sget v0, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_update_failed_unlinked_dialog_message_no_linking_flow:I

    .line 594
    :goto_0
    sget v1, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_update_failed_unlinked_dialog_button:I

    invoke-direct {p0, v0, v1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->createAndShowErrorDialog(II)V

    const-string v0, "DisplayedUnlinkedUpdateShelfFailureDialog"

    .line 595
    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->incrementMetric(Ljava/lang/String;)V

    return-void
.end method

.method private createAndShowRemoveFromShelfWarningDialog()V
    .locals 6

    .line 473
    sget v2, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_remove_book_warning_dialog_title:I

    sget v3, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_remove_book_warning_dialog_message:I

    sget v4, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_remove_book_warning_dialog_positive_action:I

    sget v5, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_remove_book_warning_dialog_negative_action:I

    const-string/jumbo v1, "none"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->createAndShowWarningDialog(Ljava/lang/String;IIII)V

    return-void
.end method

.method private createAndShowWarningDialog(Ljava/lang/String;IIII)V
    .locals 4

    .line 491
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/ea/R$style;->aa_NotesStyle:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 493
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 494
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 495
    new-instance p2, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$4;

    invoke-direct {p2, p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$4;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;Ljava/lang/String;)V

    invoke-virtual {v0, p4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 507
    new-instance p2, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$5;

    invoke-direct {p2, p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$5;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;Ljava/lang/String;)V

    invoke-virtual {v0, p5, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 518
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 519
    new-instance p2, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$6;

    invoke-direct {p2, p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$6;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 526
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getBaseReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object p3

    const-string p4, "AnyActionsWarningAlert"

    invoke-interface {p2, p4, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 527
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private getShelfOptions(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;",
            ">;"
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 884
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 885
    new-instance v2, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;

    sget v3, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_shelf_want_to_read:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "to-read"

    invoke-direct {v2, p0, v4, v3}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    new-instance v2, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;

    sget v3, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_shelf_currently_reading:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "currently-reading"

    invoke-direct {v2, p0, v4, v3}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    new-instance v2, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;

    sget v3, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_shelf_read:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "read"

    invoke-direct {v2, p0, v4, v3}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "none"

    .line 889
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 890
    new-instance v3, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;

    sget v4, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_shelf_not_on_profile:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v2, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 892
    :cond_0
    new-instance v3, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;

    sget v4, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_shelf_remove_from_profile:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v2, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isCustomShelf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 896
    new-instance v2, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;

    invoke-direct {v2, p0, p1, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method private initializeShelfSelectionSpinner(Ljava/lang/String;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->setSpinnerAdapterAndSelection(Ljava/lang/String;)V

    .line 293
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$1;

    invoke-direct {v0, p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$1;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 320
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$2;

    invoke-direct {v0, p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$2;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setCurrentShelf(Ljava/lang/String;)V
    .locals 4

    .line 718
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "Setting currentShelf: %s >> %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_0
    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    return-void
.end method

.method private setSpinnerAdapterAndSelection(Ljava/lang/String;)V
    .locals 5

    .line 381
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->setCurrentShelf(Ljava/lang/String;)V

    .line 387
    invoke-direct {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getShelfOptions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 393
    new-instance v1, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$3;

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    const v3, 0x1090008

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$3;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;Landroid/content/Context;ILjava/util/List;)V

    .line 414
    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 417
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 418
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;

    .line 419
    iget-object v3, v3, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;->shelfName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 424
    :goto_1
    iget-object v3, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 426
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 427
    sget-object v3, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const/4 p1, 0x1

    aput-object v0, v4, p1

    const/4 p1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    const-string/jumbo p1, "setSpinnerAdapterAndSelection > currentShelf: %s; shelfOptions: %s; selectedIndex: %d"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updateManualShelfExperienceContentDescription()V

    return-void
.end method


# virtual methods
.method public displaySubtleJit(Landroid/widget/LinearLayout;Landroid/widget/TextView;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 811
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 815
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 816
    new-instance p3, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$9;

    invoke-direct {p3, p0, p2}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$9;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;Landroid/widget/TextView;)V

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getBaseReadingStreamsContextMetaData()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 925
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 929
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v1

    const-string v2, "WidgetLayout"

    if-eqz v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v3, "AutoShelvingLayout"

    .line 931
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "ManualShelvingLayout"

    .line 934
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 938
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AutoShelvingEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    const-string v2, "ShelfStatus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Asin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 946
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 948
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BookGuid"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 953
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 956
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CurrentPosition"

    .line 955
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    :cond_2
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 960
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MaxPosition"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v1, 0x1

    .line 966
    invoke-static {v1}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->isGrokAvailable(Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IsGoodreadsUser"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentShelf()Ljava/lang/String;
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    return-object v0
.end method

.method protected getLocalShelfFromShelfManager()Ljava/lang/String;
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getManualShelvingMetricsCounterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "to-read"

    .line 908
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ManualShelvingWantToRead"

    return-object p1

    :cond_0
    const-string v0, "currently-reading"

    .line 910
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ManualShelvingCurrentlyReading"

    return-object p1

    :cond_1
    const-string/jumbo v0, "read"

    .line 912
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ManualShelvingRead"

    return-object p1

    :cond_2
    const-string p1, "ManualShelvingRemove"

    return-object p1
.end method

.method protected abstract getMetadataOrigin()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;
.end method

.method protected abstract getSpinnerDropDownView(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/widget/TextView;
.end method

.method protected abstract getSpinnerView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
.end method

.method protected handleFailureAndShowDialog(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V
    .locals 2

    .line 537
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->isGetRequest:Z

    if-eqz v0, :cond_0

    return-void

    .line 542
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move-result-object v0

    .line 543
    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_MANUAL:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_AUTO:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_ODOT:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->REMOVE_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    if-ne v1, v0, :cond_2

    .line 547
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getFailureReason()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->handleUpdateFailureAndShowDialog(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    :cond_2
    return-void
.end method

.method protected handleUpdateFailureAndShowDialog(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->setUpdateFailureThatOccurredForBook(Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    .line 559
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing error sharedPref and showing error dialog for FailureReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_UNAUTHORIZED:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    if-ne v0, p1, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->createAndShowGoodreadsLinkingErrorDialog()V

    goto :goto_0

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->createAndShowGenericErrorDialog()V

    :goto_0
    return-void
.end method

.method protected abstract incrementMetric(Ljava/lang/String;)V
.end method

.method protected abstract initMetrics()V
.end method

.method public initialize(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;ILjava/lang/String;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 132
    invoke-direct {p0, p4}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->setCurrentShelf(Ljava/lang/String;)V

    .line 135
    :cond_0
    iput-object p2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->layoutInflater:Landroid/view/LayoutInflater;

    const/4 p4, 0x0

    .line 136
    invoke-virtual {p2, p3, p1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    .line 138
    sget p2, Lcom/amazon/kindle/ea/R$id;->manual_shelf_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->manualShelfContainer:Landroid/view/View;

    .line 139
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->auto_shelf_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfContainer:Landroid/view/View;

    .line 140
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->shelf_selection_prompt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->manualShelfPrompt:Landroid/widget/TextView;

    .line 141
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->auto_shelf_prompt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfPrompt:Landroid/widget/TextView;

    .line 142
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->auto_shelf_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    .line 143
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->shelf_selection_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    .line 144
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->updating_shelf_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updatingShelfView:Landroid/view/View;

    .line 145
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->updating_shelf_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updatingShelfText:Landroid/widget/TextView;

    .line 146
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->initializeShelfSelectionSpinner(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->initializeAutoShelfAccessibility()V

    .line 150
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->initializeManualShelfAccessibility()V

    .line 152
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->initMetrics()V

    return-void
.end method

.method protected initializeAutoShelfAccessibility()V
    .locals 3

    .line 738
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 739
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 740
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setImportantForAccessibility(I)V

    .line 741
    new-instance v1, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$7;

    invoke-direct {v1, p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$7;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;)V

    .line 748
    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updateAutoShelfExperienceContentDescription()V

    return-void
.end method

.method protected initializeManualShelfAccessibility()V
    .locals 3

    .line 757
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 758
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 759
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setImportantForAccessibility(I)V

    .line 760
    new-instance v1, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$8;

    invoke-direct {v1, p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$8;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;)V

    .line 766
    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->manualShelfContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updateManualShelfExperienceContentDescription()V

    return-void
.end method

.method protected initializeSwitchUi(I)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    instance-of v1, v0, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v1, :cond_0

    .line 344
    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbResource(I)V

    :cond_0
    return-void
.end method

.method protected isAutoShelfExperience()Z
    .locals 3

    .line 668
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfContainer:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    if-nez v2, :cond_0

    goto :goto_0

    .line 672
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method protected isBlockingOverlayShowing()Z
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    .line 278
    invoke-static {v0}, Lcom/amazon/ea/ui/helper/BlockingOverlayHelper;->isBlockingOverlayShowing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isCustomShelf(Ljava/lang/String;)Z
    .locals 1

    .line 700
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->defaultShelves:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected isUpdateShelfServiceCallInProgress()Z
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->isUpdateCallInProgress(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Z

    move-result v0

    return v0
.end method

.method protected abstract isViewThemed()Z
.end method

.method protected abstract logMetricsForCurrentExperience()V
.end method

.method protected abstract onGoodreadsProfileEventReceived(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V
.end method

.method public onGoodreadsShelfEvent(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 163
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getGoodreadsInfo()Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->toggleUpdatingView(Z)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->toggleBlockingOverlay(Z)V

    .line 171
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getGoodreadsInfo()Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 176
    :cond_1
    sget-object v1, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 177
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getShelf()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->isSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "ShelfEvent received; Shelf: %s, Success: %b, Type: %s"

    .line 176
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->onGoodreadsProfileEventReceived(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V

    return-void
.end method

.method protected onManualShelfSelectionMade(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "none"

    .line 355
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updateShelfSelectionSpinner(Ljava/lang/String;)V

    .line 358
    invoke-direct {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->createAndShowRemoveFromShelfWarningDialog()V

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isCustomShelf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updateShelfSelectionSpinner(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->createAndShowChangeFromCustomShelfWarningDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updateShelfSelectionSpinner(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0, p1, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updateShelfForManualUserAction(Ljava/lang/String;Z)V

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->metricsTag:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->shelfActionToAction(Ljava/lang/String;)Lcom/amazon/ea/metrics/WidgetActions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 372
    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->recordMetricsForShelfSelectionMade(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract recordMetricsForShelfSelectionMade(Ljava/lang/String;)V
.end method

.method protected subscribeToShelfManagerUpdates()V
    .locals 1

    .line 196
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 203
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isUpdateShelfServiceCallInProgress()Z

    move-result v0

    .line 204
    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->toggleUpdatingView(Z)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->toggleBlockingOverlay(Z)V

    :cond_0
    return-void
.end method

.method protected subscribeToShelfManagerUpdatesAndFetchRemoteShelf()V
    .locals 3

    .line 215
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->subscribeToShelfManagerUpdates()V

    .line 216
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching remote shelf; local shelf is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getMetadataOrigin()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->fetchRemoteShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    :cond_0
    return-void
.end method

.method public toggleBlockingOverlay(Z)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 260
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isViewThemed()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/ui/helper/BlockingOverlayHelper;->toggleBlockingOverlay(Landroid/app/Activity;ZZ)V

    :cond_0
    return-void
.end method

.method protected toggleUpdatingView(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isBlockingOverlayShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updatingShelfView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updatingShelfView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected unsubscribeFromShelfManagerUpdates()V
    .locals 1

    .line 226
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected updateAutoShelfExperienceContentDescription()V
    .locals 3

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 777
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfPrompt:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 778
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_goodreads_shelf_auto_accessibility_value_on:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_goodreads_shelf_auto_accessibility_value_off:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :goto_0
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_goodreads_shelf_auto_accessibility_prompt:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected updateManualShelfExperienceContentDescription()V
    .locals 3

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 794
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->manualShelfPrompt:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 795
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    .line 796
    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;

    iget-object v1, v1, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;->displayName:Ljava/lang/String;

    .line 797
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_goodreads_shelf_manual_accessibility_prompt:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->manualShelfContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateShelf(Ljava/lang/String;ZZ)V
    .locals 4

    .line 624
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Updating shelf to: %s; useOdot: %b"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 627
    iget-object p2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object p3, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getMetadataOrigin()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    move-result-object v0

    invoke-virtual {p2, p3, p1, v0}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->updateShelfViaOdot(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    goto :goto_0

    .line 629
    :cond_0
    iget-object p2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getMetadataOrigin()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->updateShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Z)V

    :goto_0
    return-void
.end method

.method public updateShelfForManualUserAction(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 641
    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->toggleBlockingOverlay(Z)V

    const/4 v0, 0x0

    .line 642
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updateShelf(Ljava/lang/String;ZZ)V

    return-void
.end method

.method protected updateShelfSelectionSpinner(Ljava/lang/String;)V
    .locals 2

    .line 653
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 654
    invoke-direct {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->setSpinnerAdapterAndSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 657
    invoke-direct {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->setSpinnerAdapterAndSelection(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public useAutoShelfExperience()V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->manualShelfContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 690
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->logMetricsForCurrentExperience()V

    return-void
.end method

.method public useManualShelfExperience()V
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->manualShelfContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 681
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->logMetricsForCurrentExperience()V

    return-void
.end method
