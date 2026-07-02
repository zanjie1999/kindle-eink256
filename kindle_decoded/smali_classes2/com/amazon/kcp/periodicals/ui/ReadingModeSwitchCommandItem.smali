.class public Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "ReadingModeSwitchCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# static fields
.field private static final READING_MODE_SWITCH_PRIORITY:I = 0x5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    return-void
.end method

.method private getSwitchReadingModeIcon(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 127
    sget v0, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_replica_magazine_switch_to_text_view:I

    invoke-static {p1, v0}, Lcom/amazon/android/docviewer/ChromeUtil;->getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    instance-of v1, p2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-eqz v1, :cond_0

    .line 129
    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-object v2, p2

    check-cast v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 130
    sget v0, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_replica_magazine_switch_to_image_view:I

    invoke-static {p1, v0}, Lcom/amazon/android/docviewer/ChromeUtil;->getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;->isSwitchReadingModeAvailable(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/amazon/kindle/newsstand/core/R$integer;->menu_item_enabled_alpha:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/amazon/kindle/newsstand/core/R$integer;->menu_item_disabled_alpha:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    return-object v0
.end method

.method private isAccessibilityModeOn()Z
    .locals 1

    .line 119
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSwitchReadingModeAvailable(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 2

    .line 148
    instance-of v0, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-eqz v0, :cond_1

    .line 149
    check-cast p2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object p2

    .line 150
    check-cast p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    .line 151
    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, p2, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->doesArticleFragmentNotExistAtCurrentPage()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "ReplicaReadingModeSwitch"

    return-object v0
.end method

.method public getDisplayPosition(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;
    .locals 0

    .line 55
    sget-object p1, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;->END:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;

    return-object p1
.end method

.method public bridge synthetic getDisplayPosition(Landroid/content/Context;Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;
    .locals 0

    .line 24
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;->getDisplayPosition(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 43
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->reading_mode_switch_command_item_id:I

    return v0
.end method

.method public getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 85
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p2

    .line 86
    instance-of v0, p2, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 88
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p2

    .line 87
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;->getSwitchReadingModeIcon(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 90
    :cond_0
    sget p2, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_replica_magazine_switch_to_text_view:I

    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/ChromeUtil;->getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getImage(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 24
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;->getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    const/16 p1, 0x5f

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 0

    .line 49
    sget p2, Lcom/amazon/kindle/newsstand/core/R$string;->menuitem_toggle_view_mode:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 24
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    .line 66
    invoke-static {}, Lcom/amazon/nwstd/utils/NewtronUtils;->isNewtronNotebookAdditionEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/nwstd/utils/NewtronUtils;->isNewtronTOCEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 72
    invoke-static {p1}, Lcom/amazon/nwstd/utils/MobiReplicaCommandBarHelper;->isMobiReplicaContent(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    .line 73
    instance-of v2, v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 75
    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 76
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;->isAccessibilityModeOn()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;->isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    .line 95
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p2

    .line 97
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    .line 98
    invoke-direct {p0, p2, p1}, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;->isSwitchReadingModeAvailable(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    instance-of v0, p2, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-eqz v0, :cond_2

    .line 103
    check-cast p1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 104
    check-cast p2, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    .line 105
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object p1

    .line 106
    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, p1, :cond_1

    .line 107
    invoke-virtual {p2, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeTextView(Z)V

    goto :goto_0

    .line 109
    :cond_1
    sget-object p1, Lcom/amazon/android/docviewer/IPeriodicalNavigator;->CURRENT_PAGE:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p2, p1, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextViewForReplicaPageToggleViewMode(Lcom/amazon/android/docviewer/mapper/PageIndex;Z)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public bridge synthetic onClick(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;->onClick(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method
