.class public abstract Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;
.super Ljava/lang/Object;
.source "ReadingActionsGoodreadsShelfComponentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;
    }
.end annotation


# static fields
.field private static final SUBTLE_JIT_ANIMATION_DURATION_IN_MS:I = 0x1f4

.field private static final SUBTLE_JIT_ANIMATION_START_DELAY_IN_MS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "com.amazon.readingactions.goodreadsshelf.ReadingActionsGoodreadsShelfComponentBase"

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

.field protected view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->defaultShelves:Ljava/util/Set;

    const-string/jumbo v1, "to-read"

    .line 96
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->defaultShelves:Ljava/util/Set;

    const-string v1, "currently-reading"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->defaultShelves:Ljava/util/Set;

    const-string/jumbo v1, "read"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->defaultShelves:Ljava/util/Set;

    const-string v1, "none"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    .line 104
    iput-object p3, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    .line 105
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getInstance()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    .line 106
    iput-object p4, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->metricsTag:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 108
    iget-object p1, p2, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->shelves:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 110
    iget-object p1, p2, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->shelves:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 113
    iget-object p2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    invoke-virtual {p2, p3, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->setLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    invoke-virtual {p1, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->setCurrentShelf(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    sget-object p1, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

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

    .line 68
    sget-object v0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->metricsTag:Ljava/lang/String;

    return-object p0
.end method

.method private createAndShowChangeFromCustomShelfWarningDialog(Ljava/lang/String;)V
    .locals 6

    .line 427
    sget v2, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_custom_shelf_warning_dialog_title:I

    sget v3, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_custom_shelf_warning_dialog_message:I

    sget v4, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_custom_shelf_warning_dialog_positive_action:I

    sget v5, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_custom_shelf_warning_dialog_negative_action:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->createAndShowWarningDialog(Ljava/lang/String;IIII)V

    return-void
.end method

.method private createAndShowErrorDialog(II)V
    .locals 3

    .line 571
    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;

    invoke-direct {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;-><init>()V

    .line 572
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 573
    sget-object v2, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;->MESSAGE_RESOURCE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    sget-object p1, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;->BUTTON_TEXT_RESOURCE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 577
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 578
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

    .line 538
    sget v0, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_update_failed_dialog_message:I

    sget v1, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_update_failed_dialog_button:I

    invoke-direct {p0, v0, v1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->createAndShowErrorDialog(II)V

    const-string v0, "DisplayedGenericUpdateShelfFailureDialog"

    .line 540
    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->incrementMetric(Ljava/lang/String;)V

    return-void
.end method

.method private createAndShowGoodreadsLinkingErrorDialog()V
    .locals 2

    .line 548
    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->forceUpdate()V

    .line 554
    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->isGrokSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    sget v0, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_update_failed_unlinked_dialog_message:I

    goto :goto_0

    .line 557
    :cond_0
    sget v0, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_update_failed_unlinked_dialog_message_no_linking_flow:I

    .line 560
    :goto_0
    sget v1, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_update_failed_unlinked_dialog_button:I

    invoke-direct {p0, v0, v1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->createAndShowErrorDialog(II)V

    const-string v0, "DisplayedUnlinkedUpdateShelfFailureDialog"

    .line 561
    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->incrementMetric(Ljava/lang/String;)V

    return-void
.end method

.method private createAndShowRemoveFromShelfWarningDialog()V
    .locals 6

    .line 439
    sget v2, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_remove_book_warning_dialog_title:I

    sget v3, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_remove_book_warning_dialog_message:I

    sget v4, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_remove_book_warning_dialog_positive_action:I

    sget v5, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_remove_book_warning_dialog_negative_action:I

    const-string v1, "none"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->createAndShowWarningDialog(Ljava/lang/String;IIII)V

    return-void
.end method

.method private createAndShowWarningDialog(Ljava/lang/String;IIII)V
    .locals 4

    .line 457
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/ea/R$style;->aa_NotesStyle:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 459
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 460
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 461
    new-instance p2, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$4;

    invoke-direct {p2, p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$4;-><init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;Ljava/lang/String;)V

    invoke-virtual {v0, p4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 473
    new-instance p2, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$5;

    invoke-direct {p2, p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$5;-><init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;Ljava/lang/String;)V

    invoke-virtual {v0, p5, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 484
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 485
    new-instance p2, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$6;

    invoke-direct {p2, p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$6;-><init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 492
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getBaseReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object p3

    const-string p4, "AnyActionsWarningAlert"

    invoke-interface {p2, p4, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 493
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
            "Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;",
            ">;"
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 849
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 850
    new-instance v2, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;

    sget v3, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_shelf_want_to_read:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "to-read"

    invoke-direct {v2, p0, v4, v3}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;-><init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    new-instance v2, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;

    sget v3, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_shelf_currently_reading:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "currently-reading"

    invoke-direct {v2, p0, v4, v3}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;-><init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    new-instance v2, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;

    sget v3, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_shelf_read:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "read"

    invoke-direct {v2, p0, v4, v3}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;-><init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "none"

    .line 854
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 855
    new-instance v3, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;

    sget v4, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_shelf_not_on_profile:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v2, v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;-><init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 857
    :cond_0
    new-instance v3, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;

    sget v4, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_shelf_remove_from_profile:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v2, v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;-><init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->isCustomShelf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 861
    new-instance v2, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;

    invoke-direct {v2, p0, p1, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;-><init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method private initializeShelfSelectionSpinner(Ljava/lang/String;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->setSpinnerAdapterAndSelection(Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$1;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$1;-><init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 281
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$2;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$2;-><init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setCurrentShelf(Ljava/lang/String;)V
    .locals 4

    .line 683
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    sget-object v0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "Setting currentShelf: %s >> %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_0
    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    return-void
.end method

.method private setSpinnerAdapterAndSelection(Ljava/lang/String;)V
    .locals 5

    .line 346
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->setCurrentShelf(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getShelfOptions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 358
    new-instance v1, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$3;

    iget-object v2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    const v3, 0x1090008

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$3;-><init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;Landroid/content/Context;ILjava/util/List;)V

    .line 380
    iget-object v2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 383
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 384
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;

    .line 385
    iget-object v3, v3, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;->shelfName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 390
    :goto_1
    iget-object v3, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 392
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 393
    sget-object v3, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

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

    .line 396
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->updateManualShelfExperienceContentDescription()V

    return-void
.end method


# virtual methods
.method public displaySubtleJit(Landroid/widget/LinearLayout;Landroid/widget/TextView;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 776
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 780
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 781
    new-instance p3, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$9;

    invoke-direct {p3, p0, p2}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$9;-><init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;Landroid/widget/TextView;)V

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

    .line 890
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 894
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v1

    const-string v2, "WidgetLayout"

    if-eqz v1, :cond_0

    .line 895
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v3, "AutoShelvingLayout"

    .line 896
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "ManualShelvingLayout"

    .line 899
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 903
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AutoShelvingEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    const-string v2, "ShelfStatus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Asin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 911
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 913
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BookGuid"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 918
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 921
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CurrentPosition"

    .line 920
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    :cond_2
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 925
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MaxPosition"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v1, 0x1

    .line 931
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

    .line 674
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    return-object v0
.end method

.method protected getLocalShelfFromShelfManager()Ljava/lang/String;
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getManualShelvingMetricsCounterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "to-read"

    .line 873
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ManualShelvingWantToRead"

    return-object p1

    :cond_0
    const-string v0, "currently-reading"

    .line 875
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ManualShelvingCurrentlyReading"

    return-object p1

    :cond_1
    const-string/jumbo v0, "read"

    .line 877
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

.method protected abstract getSpinnerDropDownView(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end method

.method protected abstract getSpinnerView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected handleFailureAndShowDialog(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V
    .locals 2

    .line 503
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->isGetRequest:Z

    if-eqz v0, :cond_0

    return-void

    .line 508
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move-result-object v0

    .line 509
    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_MANUAL:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_AUTO:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_ODOT:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->REMOVE_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    if-ne v1, v0, :cond_2

    .line 513
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getFailureReason()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->handleUpdateFailureAndShowDialog(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    :cond_2
    return-void
.end method

.method protected handleUpdateFailureAndShowDialog(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->setUpdateFailureThatOccurredForBook(Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    .line 525
    sget-object v0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing error sharedPref and showing error dialog for FailureReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_UNAUTHORIZED:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    if-ne v0, p1, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->createAndShowGoodreadsLinkingErrorDialog()V

    goto :goto_0

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->createAndShowGenericErrorDialog()V

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

    .line 135
    invoke-direct {p0, p4}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->setCurrentShelf(Ljava/lang/String;)V

    .line 138
    :cond_0
    iput-object p2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->layoutInflater:Landroid/view/LayoutInflater;

    const/4 p4, 0x0

    .line 139
    invoke-virtual {p2, p3, p1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->view:Landroid/view/View;

    .line 141
    sget p2, Lcom/amazon/kindle/ea/R$id;->manual_shelf_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->manualShelfContainer:Landroid/view/View;

    .line 142
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->auto_shelf_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfContainer:Landroid/view/View;

    .line 143
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->shelf_selection_prompt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->manualShelfPrompt:Landroid/widget/TextView;

    .line 144
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->auto_shelf_prompt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfPrompt:Landroid/widget/TextView;

    .line 145
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->auto_shelf_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    .line 146
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->shelf_selection_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    .line 147
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->initializeShelfSelectionSpinner(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->initializeAutoShelfAccessibility()V

    .line 151
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->initializeManualShelfAccessibility()V

    .line 153
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->initMetrics()V

    return-void
.end method

.method protected initializeAutoShelfAccessibility()V
    .locals 3

    .line 703
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 704
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 705
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setImportantForAccessibility(I)V

    .line 706
    new-instance v1, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$7;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$7;-><init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;)V

    .line 713
    iget-object v2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->updateAutoShelfExperienceContentDescription()V

    return-void
.end method

.method protected initializeManualShelfAccessibility()V
    .locals 3

    .line 722
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 723
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 724
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setImportantForAccessibility(I)V

    .line 725
    new-instance v1, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$8;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$8;-><init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;)V

    .line 731
    iget-object v2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->manualShelfContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->updateManualShelfExperienceContentDescription()V

    return-void
.end method

.method protected initializeSwitchUi(I)V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    instance-of v1, v0, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v1, :cond_0

    .line 309
    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbResource(I)V

    :cond_0
    return-void
.end method

.method protected isAutoShelfExperience()Z
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfContainer:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    if-nez v2, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method protected isCustomShelf(Ljava/lang/String;)Z
    .locals 1

    .line 665
    sget-object v0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->defaultShelves:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected isUpdateShelfServiceCallInProgress()Z
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->isUpdateCallInProgress(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Z

    move-result v0

    return v0
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

    .line 164
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getGoodreadsInfo()Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getGoodreadsInfo()Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 174
    :cond_1
    sget-object v0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 175
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getShelf()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->isSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "ShelfEvent received; Shelf: %s, Success: %b, Type: %s"

    .line 174
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->onGoodreadsProfileEventReceived(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V

    return-void
.end method

.method protected onManualShelfSelectionMade(Ljava/lang/String;)V
    .locals 2

    const-string v0, "none"

    .line 320
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->updateShelfSelectionSpinner(Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->createAndShowRemoveFromShelfWarningDialog()V

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->isCustomShelf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->updateShelfSelectionSpinner(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->createAndShowChangeFromCustomShelfWarningDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->updateShelfSelectionSpinner(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, p1, v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->updateShelfForManualUserAction(Ljava/lang/String;Z)V

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->metricsTag:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->shelfActionToAction(Ljava/lang/String;)Lcom/amazon/ea/metrics/WidgetActions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 337
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->recordMetricsForShelfSelectionMade(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract recordMetricsForShelfSelectionMade(Ljava/lang/String;)V
.end method

.method protected subscribeToShelfManagerUpdates()V
    .locals 1

    .line 194
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected subscribeToShelfManagerUpdatesAndFetchRemoteShelf()V
    .locals 3

    .line 202
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->subscribeToShelfManagerUpdates()V

    .line 203
    sget-object v0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching remote shelf; local shelf is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->currentShelf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getMetadataOrigin()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->fetchRemoteShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    :cond_0
    return-void
.end method

.method protected unsubscribeFromShelfManagerUpdates()V
    .locals 1

    .line 213
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected updateAutoShelfExperienceContentDescription()V
    .locals 3

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfPrompt:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 743
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_goodreads_shelf_auto_accessibility_value_on:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_goodreads_shelf_auto_accessibility_value_off:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    :goto_0
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_goodreads_shelf_auto_accessibility_prompt:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected updateManualShelfExperienceContentDescription()V
    .locals 3

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->manualShelfPrompt:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 760
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    .line 761
    iget-object v2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;

    iget-object v1, v1, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;->displayName:Ljava/lang/String;

    .line 762
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_goodreads_shelf_manual_accessibility_prompt:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->manualShelfContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateShelf(Ljava/lang/String;ZZ)V
    .locals 4

    .line 590
    sget-object v0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->TAG:Ljava/lang/String;

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

    .line 593
    iget-object p2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object p3, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getMetadataOrigin()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    move-result-object v0

    invoke-virtual {p2, p3, p1, v0}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->updateShelfViaOdot(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    goto :goto_0

    .line 595
    :cond_0
    iget-object p2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsShelfManager:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getMetadataOrigin()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->updateShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Z)V

    :goto_0
    return-void
.end method

.method public updateShelfForManualUserAction(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 607
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->updateShelf(Ljava/lang/String;ZZ)V

    return-void
.end method

.method protected updateShelfSelectionSpinner(Ljava/lang/String;)V
    .locals 2

    .line 618
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 619
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->setSpinnerAdapterAndSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 622
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->setSpinnerAdapterAndSelection(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public useAutoShelfExperience()V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->manualShelfContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 655
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->logMetricsForCurrentExperience()V

    return-void
.end method

.method public useManualShelfExperience()V
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->manualShelfContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 646
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->logMetricsForCurrentExperience()V

    return-void
.end method
