.class public Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;
.super Lcom/amazon/kcp/reader/ReaderActivity;
.source "PeriodicalReaderActivity.java"


# static fields
.field public static final KEPT_METRIC:Ljava/lang/String; = "Kept"

.field public static final NEWSSTAND_PANEL_STATE:Ljava/lang/String; = "newsstand"

.field public static final OPERATION_OPEN_TOC:I = 0xa

.field private static final PERIODICAL_ACTIVITY_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final UNKEPT_METRIC:Ljava/lang/String; = "Unkept"


# instance fields
.field private alertDialog:Lcom/amazon/android/util/IAlertDialog;

.field public isInTutorialMode:Z

.field public mContext:Landroid/content/Context;

.field public mDisplayCutout:Landroid/view/DisplayCutout;

.field private mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

.field private mOrientationChangeEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field public mPeriodicalReaderController:Lcom/amazon/nwstd/activities/IPeriodicalReaderController;

.field public mTOCMetricTag:Ljava/lang/String;

.field private mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

.field private m_navigationHistoryManager:Lcom/amazon/android/docviewer/NavigationHistoryManager;

.field periodicalPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private shouldReconstructOptionsMenu:Z

.field private showTapToTextTuto:Z

.field private storeOption:Landroid/view/MenuItem;

.field tapToTextTutoViews:I

.field private userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

.field private viewModeToggle:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    const-class v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->m_navigationHistoryManager:Lcom/amazon/android/docviewer/NavigationHistoryManager;

    .line 131
    new-instance v1, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mOrientationChangeEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    const/4 v1, 0x0

    .line 133
    iput-boolean v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isInTutorialMode:Z

    .line 134
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mContext:Landroid/content/Context;

    .line 135
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 146
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)Z
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->isTypefaceChangeAllowed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onSearchEnded()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 100
    sget-object v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private constructOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .line 596
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 598
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isNeutronPhase1Enabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v1, :cond_0

    .line 600
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$menu;->newtron_periodical_reader_mainmenu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 601
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_toggle_view_mode:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->viewModeToggle:Landroid/view/MenuItem;

    .line 603
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_replica_magazine_switch_to_image_view:I

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/ChromeUtil;->getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 604
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->viewModeToggle:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    .line 606
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$menu;->newtron_periodical_replica_standalone_mainmenu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 607
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_toggle_view_mode:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->viewModeToggle:Landroid/view/MenuItem;

    .line 609
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_replica_magazine_switch_to_text_view:I

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/ChromeUtil;->getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 610
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->viewModeToggle:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    .line 613
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v1, :cond_2

    .line 614
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$menu;->periodical_reader_mainmenu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 616
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$menu;->periodical_replica_standalone_mainmenu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 620
    invoke-static {}, Lcom/amazon/nwstd/utils/DeviceRequirements;->doesRamMeetRequirements()Z

    move-result v0

    if-nez v0, :cond_3

    .line 621
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_gridview:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 623
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_gridview:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 630
    :cond_3
    :goto_0
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_reader_store:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->storeOption:Landroid/view/MenuItem;

    .line 635
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_search:I

    const/4 v1, 0x0

    new-instance v2, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$4;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$4;-><init>(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/amazon/kcp/redding/ReddingActivity;->setupSearchView(Landroid/view/Menu;ILcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;)V

    return-void
.end method

.method private freeMemory()V
    .locals 2

    .line 1174
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-nez v0, :cond_0

    return-void

    .line 1180
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getBitmapProvider()Lcom/amazon/nwstd/model/replica/BitmapProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1181
    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1182
    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->freeMemory()V

    :cond_1
    return-void
.end method

.method private getCurrentSectionID()I
    .locals 3

    .line 938
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 939
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 944
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    check-cast v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 947
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getSectionAtCurrentPosition()Lcom/amazon/nwstd/toc/ISectionTOCItem;

    move-result-object v2

    .line 949
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 1012
    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isAccessibilityModeOn()Z
    .locals 1

    .line 1443
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

.method private isBookKept()Z
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 989
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 990
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/LocalBookState;->isBookKept()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isNeutronPhase1Enabled()Z
    .locals 2

    .line 1439
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private performActionFromIntent(Landroid/content/Intent;)V
    .locals 9

    .line 230
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    const-string v2, "ReturnFromSearch"

    .line 234
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v3, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v3, :cond_0

    .line 242
    invoke-virtual {v1, v4, v5}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextView(ZZ)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v1, v5, v5}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextView(ZZ)V

    .line 251
    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    const-string v2, "ViewMode"

    .line 253
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 255
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "ReplicaMode"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "PageNumber"

    .line 257
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 259
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 262
    sget-object v7, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->UPSELL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-virtual {v7}, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PageType"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    sget-object v0, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->UPSELL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    goto :goto_1

    .line 265
    :cond_2
    sget-object v0, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->NORMAL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    .line 267
    :goto_1
    new-instance v7, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-direct {v7, v6, v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(ILcom/amazon/android/docviewer/mapper/PageIndex$PageType;)V

    .line 268
    invoke-virtual {v1, v7, v4, v5}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openImageViewAt(Lcom/amazon/android/docviewer/mapper/PageIndex;ZZ)V

    .line 269
    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->reportOpenArticleInImageViewFromTOCMetrics()V

    goto :goto_2

    .line 273
    :cond_3
    invoke-virtual {v1, v4, v5}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openImageView(ZZ)V

    .line 276
    :goto_2
    invoke-virtual {p1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v3, "Position"

    .line 280
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 282
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0, v4, v5}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextViewAt(IZZ)V

    .line 283
    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->reportOpenArticleInTextViewFromTOCMetrics()V

    goto :goto_3

    .line 287
    :cond_5
    invoke-virtual {v1, v4, v5}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextView(ZZ)V

    .line 290
    :goto_3
    invoke-virtual {p1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 293
    :goto_4
    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const-string v1, "settingsChange"

    .line 295
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 296
    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->updateNavigationHistory(Landroid/content/Intent;)V

    :cond_7
    :goto_5
    return-void
.end method

.method private registerOpenTimeMetricReporters(J)V
    .locals 3

    .line 505
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 506
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v1, v2, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_1

    .line 509
    new-instance v1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$2;-><init>(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;JLcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->addOnInitialDrawListener(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 530
    :cond_0
    new-instance v1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$3;-><init>(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;JLcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->addOnInitialDrawListener(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateNavigationHistory(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "NavigationHistory"

    .line 303
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 305
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 306
    invoke-virtual {v0, p1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 307
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getNavigationHistoryManager()Lcom/amazon/android/docviewer/NavigationHistoryManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/NavigationHistoryManager;->setHistoryPoints(Ljava/util/Stack;)V

    :cond_0
    return-void
.end method

.method private updateOrientation()V
    .locals 2

    .line 1218
    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->getReaderScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 1219
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_0

    .line 1220
    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setOrientation(I)V

    .line 1222
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mOrientationChangeEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    return-void
.end method


# virtual methods
.method protected doesContentSupportDLC()Z
    .locals 2

    .line 1344
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 1345
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    .line 1304
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_0

    .line 1306
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getChromeColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1311
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomMenuType()Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayCutout()Landroid/view/DisplayCutout;
    .locals 2

    .line 1420
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    return-object v0

    .line 1424
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 1425
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1426
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mDisplayCutout:Landroid/view/DisplayCutout;

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavigationHistoryManager()Lcom/amazon/android/docviewer/NavigationHistoryManager;
    .locals 2

    .line 1037
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->m_navigationHistoryManager:Lcom/amazon/android/docviewer/NavigationHistoryManager;

    if-nez v0, :cond_0

    .line 1039
    new-instance v0, Lcom/amazon/android/docviewer/NavigationHistoryManager;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    check-cast v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/NavigationHistoryManager;-><init>(Lcom/amazon/android/docviewer/IPeriodicalNavigator;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->m_navigationHistoryManager:Lcom/amazon/android/docviewer/NavigationHistoryManager;

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->m_navigationHistoryManager:Lcom/amazon/android/docviewer/NavigationHistoryManager;

    return-object v0
.end method

.method public getOrientationChangeEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mOrientationChangeEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getPanelState()Ljava/lang/String;
    .locals 1

    const-string v0, "newsstand"

    return-object v0
.end method

.method protected getThemeForColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I
    .locals 2

    .line 1404
    sget-object v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$7;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1415
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/DocumentActivity;->getThemeForColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I

    move-result p1

    return p1

    .line 1413
    :cond_0
    sget p1, Lcom/amazon/kindle/newsstand/core/R$style;->Theme_ReaderStyle_White_NonLinear_Newsstand:I

    return p1

    .line 1411
    :cond_1
    sget p1, Lcom/amazon/kindle/newsstand/core/R$style;->Theme_ReaderStyle_Green_NonLinear_Newsstand:I

    return p1

    .line 1409
    :cond_2
    sget p1, Lcom/amazon/kindle/newsstand/core/R$style;->Theme_ReaderStyle_Sepia_NonLinear_Newsstand:I

    return p1

    .line 1407
    :cond_3
    sget p1, Lcom/amazon/kindle/newsstand/core/R$style;->Theme_ReaderStyle_Black_NonLinear_Newsstand:I

    return p1
.end method

.method public getUpsellController()Lcom/amazon/nwstd/upsell/UpsellController;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    return-object v0
.end method

.method public hidePeriodicalLocationSeeker()V
    .locals 1

    .line 1349
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_0

    .line 1351
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->hideLocationSeeker()V

    :cond_0
    return-void
.end method

.method public incrementTapToTextTutoViews()V
    .locals 3

    const/4 v0, 0x0

    .line 1051
    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->showTapToTextTuto:Z

    .line 1052
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->periodicalPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    if-eqz v0, :cond_0

    .line 1053
    iget v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->tapToTextTutoViews:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->tapToTextTutoViews:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TapToTextTutoViews"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putInt(Ljava/lang/String;Ljava/lang/Integer;)Z

    :cond_0
    return-void
.end method

.method public invalidatCustomActionButtons()V
    .locals 0

    .line 1282
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public navigateToAllArticles()V
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mPeriodicalReaderController:Lcom/amazon/nwstd/activities/IPeriodicalReaderController;

    invoke-interface {v0}, Lcom/amazon/nwstd/activities/IPeriodicalReaderController;->openTOC()V

    return-void
.end method

.method protected newCustomMenuController()Lcom/amazon/android/menu/AndroidCustomMenuController;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected newReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 2

    .line 167
    sget v0, Lcom/amazon/kindle/newsstand/core/R$layout;->periodical_layout:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    .line 169
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 1249
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_2

    .line 1251
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isBookmarkListOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->hideBookmarkList()V

    goto :goto_0

    .line 1253
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInGridView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1254
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->quitGridView()V

    goto :goto_0

    .line 1256
    :cond_1
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onBackPressed()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onBookOptionsPressed()V
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mPeriodicalReaderController:Lcom/amazon/nwstd/activities/IPeriodicalReaderController;

    invoke-interface {v0}, Lcom/amazon/nwstd/activities/IPeriodicalReaderController;->openTOC()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1192
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1194
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-nez v0, :cond_0

    return-void

    .line 1198
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mOrientationChangeEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 1200
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    invoke-static {v0, p0}, Lcom/amazon/nwstd/upsell/UpsellController;->isUpsellEnabled(Lcom/amazon/nwstd/upsell/UpsellController;Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 1201
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/amazon/nwstd/upsell/UpsellController;->onOrientationChanged(Z)V

    goto :goto_1

    .line 1202
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    if-eqz v0, :cond_3

    .line 1203
    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/UpsellController;->hideBanner()V

    .line 1207
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_4

    .line 1209
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateHeaderActionBarItems()V

    .line 1210
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    invoke-static {v2, p0}, Lcom/amazon/nwstd/upsell/UpsellController;->isUpsellEnabled(Lcom/amazon/nwstd/upsell/UpsellController;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_4

    .line 1211
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->handleOverlaysOnMenuOptionSelected()V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 315
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->NWSTD_OPEN:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 318
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->PERIODICAL_ACTIVITY_ONCREATE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 320
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    .line 322
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    const/4 v2, 0x1

    .line 326
    invoke-virtual {v0, p0, v2}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 328
    instance-of v0, v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 329
    sget-object v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t create PeriodicalReaderActivity instance since the current doc viewer is not an instance of NewsstandDocViewer!"

    invoke-static {v0, v3, v5}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 330
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 331
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->finish()V

    .line 335
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 337
    check-cast v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 338
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v7

    check-cast v7, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-static {v0, v7}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->getTOCMetricTag(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/nwstd/toc/IPeriodicalTOC;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mTOCMetricTag:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->periodicalPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    if-nez v0, :cond_1

    .line 341
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "PeriodicalsAppPreferences"

    .line 341
    invoke-interface {v0, v8, v4, v7}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->periodicalPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    .line 347
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    .line 349
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->periodicalPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    const-string v7, "TapToTextTutoViews"

    invoke-virtual {v0, v7, v4}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->tapToTextTutoViews:I

    .line 350
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/amazon/kindle/newsstand/core/R$integer;->max_tap_to_text_views:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 351
    iget v7, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->tapToTextTutoViews:I

    if-ge v7, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->showTapToTextTuto:Z

    .line 356
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 358
    invoke-direct {p0, v5, v6}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->registerOpenTimeMetricReporters(J)V

    .line 361
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 362
    invoke-static {v5, p0}, Lcom/amazon/nwstd/upsell/UpsellController;->shouldEnableUpsell(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    .line 365
    new-instance v11, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$1;

    invoke-direct {v11, p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$1;-><init>(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)V

    .line 395
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getMetricsHelper()Lcom/amazon/nwstd/metrics/IMetricsHelper;

    move-result-object v10

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getOriginType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getUpsellOrigin(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    move-result-object v12

    invoke-static/range {v5 .. v12}, Lcom/amazon/nwstd/upsell/UpsellController;->createInstance(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/store/IWebStoreController;Landroid/view/View$OnClickListener;Lcom/amazon/nwstd/resources/DynamicResourcesController;Landroid/content/Context;Lcom/amazon/nwstd/metrics/IMetricsHelper;Lcom/amazon/nwstd/upsell/IReadingHelper;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Lcom/amazon/nwstd/upsell/UpsellController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    if-nez v0, :cond_3

    .line 397
    sget-object v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->TAG:Ljava/lang/String;

    const-string v1, "Could not create the upsell controller"

    invoke-static {v0, v3, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 401
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 402
    sget-object p1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->PERIODICAL_ACTIVITY_ONCREATE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {p1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    return-void

    .line 406
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-nez v0, :cond_5

    .line 409
    sget-object p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t create PeriodicalReaderActivity instance since the current doc viewer is null"

    invoke-static {p1, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 410
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 411
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->finish()V

    .line 412
    sget-object p1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->PERIODICAL_ACTIVITY_ONCREATE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {p1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    return-void

    .line 416
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v1, :cond_6

    .line 418
    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->onActivityCreated()V

    .line 421
    :cond_6
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    check-cast v3, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0, v3}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->setModeChangeHandler(Lcom/amazon/android/docviewer/mobi/ModeChangeListener;)V

    .line 422
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/UserSettingsController;->isPageCurlEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->setImageViewPageCurl(Z)V

    .line 424
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getAlertDialog(Landroid/content/res/Resources;)Lcom/amazon/android/util/IAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->alertDialog:Lcom/amazon/android/util/IAlertDialog;

    .line 426
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz p1, :cond_a

    const-string v5, "ViewMode"

    .line 427
    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 431
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 433
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    const-string v5, "PageNumber"

    const/4 v6, -0x1

    .line 435
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v6, :cond_8

    const-string v8, "PageType"

    .line 437
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 438
    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    const-string v5, "Position"

    .line 441
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v6, :cond_9

    .line 443
    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    :cond_9
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 448
    :cond_a
    invoke-direct {p0, v3}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->performActionFromIntent(Landroid/content/Intent;)V

    .line 453
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/amazon/kindle/newsstand/core/R$string;->nwstd_periodical_reader_controller_clazz:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 454
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/nwstd/activities/IPeriodicalReaderController;

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mPeriodicalReaderController:Lcom/amazon/nwstd/activities/IPeriodicalReaderController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getRootView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-interface {p1, p0, v3}, Lcom/amazon/nwstd/activities/IPeriodicalReaderController;->init(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;Landroid/view/ViewGroup;)V

    .line 461
    iget-boolean p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isInTutorialMode:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 463
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 464
    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne p1, v3, :cond_b

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 466
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->disableFlashOverlays()V

    .line 468
    invoke-virtual {v1, v2, v4}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 469
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mPeriodicalReaderController:Lcom/amazon/nwstd/activities/IPeriodicalReaderController;

    sget-object v0, Lcom/amazon/nwstd/tutorial/TutorialHelper;->LAYOUTS_GRID_VIEW_SCENARIO:[I

    invoke-interface {p1, v0}, Lcom/amazon/nwstd/activities/IPeriodicalReaderController;->createTutorialWithScenario([I)V

    .line 474
    :cond_b
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isNeutronPhase1Enabled()Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    .line 477
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 478
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    :cond_c
    if-eqz p1, :cond_d

    .line 482
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 483
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDateInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/nwstd/utils/DateUtils;->getLongDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 487
    :cond_d
    sget-object p1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->PERIODICAL_ACTIVITY_ONCREATE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {p1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    return-void

    :catch_0
    move-exception p1

    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->alertDialog:Lcom/amazon/android/util/IAlertDialog;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    .line 919
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 917
    :cond_1
    sget p1, Lcom/amazon/kindle/newsstand/core/R$string;->alert_dialog_dontkeep:I

    invoke-interface {v0, p0, p1}, Lcom/amazon/android/util/IAlertDialog;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 915
    :cond_2
    sget p1, Lcom/amazon/kindle/newsstand/core/R$string;->alert_dialog_keep:I

    invoke-interface {v0, p0, p1}, Lcom/amazon/android/util/IAlertDialog;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 580
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_std_settings_button_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_std_settings_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->constructOptionsMenu(Landroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1316
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onDestroy()V

    .line 1318
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    if-eqz v0, :cond_0

    .line 1319
    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/UpsellController;->destroy()V

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1323
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    .line 1324
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    .line 1327
    :cond_1
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->storeOption:Landroid/view/MenuItem;

    .line 1328
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->viewModeToggle:Landroid/view/MenuItem;

    .line 1330
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mContext:Landroid/content/Context;

    .line 1332
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_fortate_identity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1333
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$6;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$6;-><init>(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1337
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 980
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "PeriodicalReaderActivity"

    const-string v2, "PeriodicalSearchViaReaderHWButton"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .locals 3

    .line 1154
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    const-string v0, "NewsstandOnLowMemory"

    .line 1157
    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->reportMaxMemoryMetric(Ljava/lang/String;)V

    .line 1159
    sget-object v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->TAG:Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "Newsstand application is running out of memory - the behavior of the application is not predicatable"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 1160
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->freeMemory()V

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 764
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz p1, :cond_1

    .line 771
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isBookmarkListOpened()Z

    move-result p2

    if-nez p2, :cond_1

    .line 772
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setOnMenuOpenedOverlays()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onModeChanged()V
    .locals 2

    .line 1020
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(ZZZ)Z

    .line 1028
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1029
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1031
    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->shouldReconstructOptionsMenu:Z

    :goto_0
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 492
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/redding/ReddingActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    .line 494
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    if-eqz p1, :cond_0

    .line 495
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/UpsellController;->hideBanner()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 223
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 225
    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->performActionFromIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 804
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_home:I

    const/4 v2, 0x1

    const-string v3, "PeriodicalReaderActivity"

    if-ne v0, v1, :cond_0

    .line 805
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "LandingViaPeriodicalReaderMenu"

    invoke-virtual {p1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryController;->showLandingPage()V

    .line 807
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->finish()V

    goto/16 :goto_1

    .line 809
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_bookmarks_list:I

    if-ne v0, v1, :cond_2

    .line 810
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz p1, :cond_f

    .line 812
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isBookmarkListOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->hideBookmarkList()V

    goto/16 :goto_1

    .line 815
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->showBookmarkList()V

    goto/16 :goto_1

    .line 818
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_gridview:I

    if-ne v0, v1, :cond_3

    .line 819
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz p1, :cond_f

    .line 821
    sget-object v0, Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;->BUTTON:Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->toggleGridView(Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;)V

    goto/16 :goto_1

    .line 823
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_periodical_toc:I

    if-ne v0, v1, :cond_4

    .line 824
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mPeriodicalReaderController:Lcom/amazon/nwstd/activities/IPeriodicalReaderController;

    invoke-interface {p1}, Lcom/amazon/nwstd/activities/IPeriodicalReaderController;->openTOC()V

    goto/16 :goto_1

    .line 825
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_viewoptions:I

    const/4 v4, 0x0

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 826
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "ViewOptionsViaPeriodicalReaderMenu"

    invoke-virtual {p1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 830
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    .line 837
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 838
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 839
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->isTypefaceChangeAllowed()Z

    move-result v0

    invoke-virtual {p1, v4, v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(ZZ)Z

    goto/16 :goto_1

    .line 841
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->isTypefaceChangeAllowed()Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(ZZ)Z

    goto/16 :goto_1

    .line 846
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_add_bookmark:I

    if-ne v0, v1, :cond_7

    .line 847
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    check-cast p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewNavigator()Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 849
    invoke-interface {p1}, Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object p1

    .line 850
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getPageType()Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->NORMAL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 851
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getBookmarkManager()Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->toggleBookmarkForLocationIndex(I)Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    goto/16 :goto_1

    .line 854
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_search:I

    if-ne v0, v1, :cond_9

    .line 855
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 856
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->isTypefaceChangeAllowed()Z

    move-result v0

    invoke-virtual {p1, v4, v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(ZZ)Z

    .line 858
    :cond_8
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onSearchRequested()Z

    goto/16 :goto_1

    .line 859
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_reader_store:I

    if-ne v0, v1, :cond_a

    .line 860
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object p1

    const-string v0, "kin_red_lib_0"

    invoke-interface {p1, v0}, Lcom/amazon/kcp/store/IWebStoreController;->showStorefront(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 861
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_keep:I

    if-ne v0, v1, :cond_d

    .line 862
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isBookKept()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string v0, "Unkept"

    goto :goto_0

    :cond_b
    const-string v0, "Kept"

    .line 865
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 866
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_c

    .line 868
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 869
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 870
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 871
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 872
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v4

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    xor-int/2addr p1, v2

    invoke-interface {v4, v1, p1}, Lcom/amazon/kcp/library/ILibraryController;->setBookKeptStatus(Ljava/lang/String;Z)V

    .line 875
    :cond_c
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Periodical"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ViaContext"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 878
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 879
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 880
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 881
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LocalBookState;->persist()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 885
    sget-object v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->TAG:Ljava/lang/String;

    const/16 v1, 0x8

    const-string v3, "Unable to persist bookState"

    invoke-static {v0, v1, v3, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 887
    :cond_d
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_toggle_view_mode:I

    .line 888
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 889
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    .line 890
    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 891
    invoke-virtual {p1, v4}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeTextView(Z)V

    goto :goto_1

    .line 893
    :cond_e
    sget-object v0, Lcom/amazon/android/docviewer/IPeriodicalNavigator;->CURRENT_PAGE:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p1, v0, v4}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextViewForReplicaPageToggleViewMode(Lcom/amazon/android/docviewer/mapper/PageIndex;Z)V

    :cond_f
    :goto_1
    return v2

    .line 897
    :cond_10
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_11

    .line 898
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInLandscapeOrientation()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 899
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->handleOverlaysOnMenuOptionSelected()V

    .line 901
    :cond_11
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3

    .line 779
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 781
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-nez p1, :cond_0

    return-void

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->isSearching()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 787
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isBookmarkListOpened()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInGridView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 789
    invoke-virtual {p1, v2, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setVisibleOverlays(IZ)Z

    goto :goto_0

    .line 790
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isBookmarkListOpened()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 794
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    goto :goto_0

    .line 798
    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setVisibleOverlays(IZ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1085
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onPause()V

    .line 1089
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 1090
    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 1092
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getReplicaBehaviorMetricsHelper()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->onActivityPaused()V

    .line 1093
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getMetricsHelper()Lcom/amazon/nwstd/metrics/IMetricsHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/nwstd/metrics/IMetricsHelper;->pauseSession()V

    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .line 660
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_std_settings_button_enabled:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 665
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_std_settings_enabled:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->storeOption:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    .line 671
    const-class v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    if-eqz v0, :cond_2

    .line 672
    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->storeOption:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canGotoStore()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->storeOption:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 677
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->storeOption:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 681
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 682
    :goto_2
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 683
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 685
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/amazon/android/docviewer/ChromeUtil;->applyThemedButtonColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 691
    :cond_6
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_keep:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 693
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isBookKept()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 694
    sget v3, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_menu_dontkeep:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 695
    sget v3, Lcom/amazon/kindle/newsstand/core/R$string;->menuitem_dontkeep:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 696
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleApplicationController;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/ILocalStorage;->isAvailable()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 698
    :cond_7
    sget v3, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_menu_keep:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 699
    sget v3, Lcom/amazon/kindle/newsstand/core/R$string;->menuitem_keep:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 700
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleApplicationController;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/ILocalStorage;->isAvailable()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 704
    :cond_8
    :goto_3
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_add_bookmark:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 706
    sget v3, Lcom/amazon/kindle/newsstand/core/R$string;->menuitem_add_bookmark:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 707
    sget v3, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_bookmark:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 708
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    check-cast v3, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewNavigator()Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 710
    invoke-interface {v3}, Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v3

    .line 711
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getPageType()Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    move-result-object v4

    sget-object v5, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->NORMAL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v4

    check-cast v4, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getBookmarkManager()Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;->isPageBookmarked(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 712
    sget v3, Lcom/amazon/kindle/newsstand/core/R$string;->menuitem_remove_bookmark:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 714
    sget v3, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_bookmark_pressed:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 722
    :cond_9
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_c

    .line 724
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInGridView()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isBookmarkListOpened()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 726
    :cond_a
    sget v3, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_search:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 727
    sget v3, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_periodical_toc:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 728
    sget v3, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_add_bookmark:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 729
    sget v3, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_bookmarks_list:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 731
    :cond_b
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isBookmarkListOpened()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 732
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_gridview:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 738
    :cond_c
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 739
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    .line 740
    iget-object v3, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    check-cast v3, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 741
    iget-object v4, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->viewModeToggle:Landroid/view/MenuItem;

    if-eqz v4, :cond_10

    if-eqz v0, :cond_10

    if-eqz v3, :cond_10

    .line 742
    sget-object v4, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v5

    if-ne v4, v5, :cond_d

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v3

    if-nez v3, :cond_d

    .line 744
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_toggle_view_mode:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_4

    .line 745
    :cond_d
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isAccessibilityModeOn()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 747
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_toggle_view_mode:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_4

    .line 748
    :cond_e
    sget-object p1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v3

    if-ne p1, v3, :cond_f

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->doesArticleFragmentNotExistAtCurrentPage()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 750
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->viewModeToggle:Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 751
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->viewModeToggle:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$integer;->menu_item_disabled_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4

    .line 753
    :cond_f
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->viewModeToggle:Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 754
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->viewModeToggle:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$integer;->menu_item_enabled_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_10
    :goto_4
    return v2

    :cond_11
    :goto_5
    return v1
.end method

.method protected onResume()V
    .locals 3

    .line 1059
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onResume()V

    .line 1061
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 1062
    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 1064
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getReplicaBehaviorMetricsHelper()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->onActivityResumed()V

    .line 1066
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$5;-><init>(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1075
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->isPageCurlEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->activateImageViewPageCurl(Z)V

    .line 1077
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_1

    .line 1079
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateHeaderActionBarItems()V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 182
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    const-string v3, "ViewMode"

    if-ne v1, v2, :cond_0

    const-string v0, "ReplicaMode"

    .line 188
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewNavigator()Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewNavigator()Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewNavigator()Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v1

    const-string v2, "PageNumber"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewNavigator()Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getPageType()Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewNavigator()Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getPageType()Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PageType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "TextMode"

    .line 200
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageStartPosition()I

    move-result v0

    const-string v1, "Position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 1111
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onStart()V

    .line 1113
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1115
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isNeutronPhase1Enabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1116
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1117
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1118
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1119
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1121
    sget v2, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_leave_book_down_arrow:I

    .line 1122
    invoke-static {}, Lcom/amazon/nwstd/utils/NewtronUtils;->isNewtronTOCEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1123
    sget v2, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_back_button:I

    .line 1125
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/amazon/android/docviewer/ChromeUtil;->getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1126
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1128
    :cond_1
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1132
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-eqz v0, :cond_3

    .line 1133
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v2, :cond_3

    .line 1137
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0, v1, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextView(ZZ)V

    .line 1140
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getInstance()Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1141
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isDebuggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1142
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getNbOfTapToTextTutorialViews()I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->tapToTextTutoViews:I

    .line 1143
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->periodicalPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getNbOfTapToTextTutorialViews()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "TapToTextTutoViews"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putInt(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 1147
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_5

    .line 1148
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    check-cast v3, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerLocationSeekerDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    :cond_5
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1263
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onStop()V

    .line 1265
    invoke-static {}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getInstance()Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1267
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isDebuggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1268
    iget v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->tapToTextTutoViews:I

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setNbOfTapToTextTutorialViews(I)V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 1165
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 1167
    sget-object p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->TAG:Ljava/lang/String;

    const/16 v0, 0x10

    const-string v1, "Newsstand application needs to trim memory"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 1170
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->freeMemory()V

    return-void
.end method

.method public openTOC()V
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mPeriodicalReaderController:Lcom/amazon/nwstd/activities/IPeriodicalReaderController;

    invoke-interface {v0}, Lcom/amazon/nwstd/activities/IPeriodicalReaderController;->openTOC()V

    return-void
.end method

.method protected populateSupportedFeatureSet()V
    .locals 2

    .line 153
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->BackNavigation:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 154
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Selection:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 155
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Search:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 156
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SearchWiki:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 157
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SearchWeb:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 158
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->ActiveArea:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 161
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Bookmark:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    return-void
.end method

.method public requiresRegistration()Z
    .locals 1

    .line 1229
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidApplicationController;

    .line 1231
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    .line 1233
    check-cast v0, Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected restartActivity(Ljava/lang/String;Lcom/amazon/kcp/application/UserSettingsController;)V
    .locals 4

    .line 1358
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1362
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLOR_MODE_CHANGED_FROM_FAB:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1365
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getNavigationHistoryManager()Lcom/amazon/android/docviewer/NavigationHistoryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/NavigationHistoryManager;->getHistoryPoints()Ljava/util/Stack;

    move-result-object v2

    .line 1366
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v2, "NavigationHistory"

    .line 1367
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1370
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->destroy()V

    const/4 v1, 0x0

    .line 1371
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 1374
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_2

    .line 1376
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1379
    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_ILLUSTRATED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v2, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1382
    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p2}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedEnabled()Z

    move-result p2

    invoke-interface {v2, p2, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setKindleIllustratedSettings(ZLcom/amazon/android/docviewer/KindleDocColorMode;)V

    goto :goto_0

    .line 1386
    :cond_1
    iget-object p2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p2, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    :cond_2
    :goto_0
    const/high16 p2, 0x10a0000

    const v1, 0x10a0001

    .line 1391
    invoke-static {p0, p2, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p2

    .line 1393
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLOR_MODE_CHANGED_FROM_FAB:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_3

    const-string p1, "settingsChange"

    .line 1395
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1398
    :cond_3
    invoke-virtual {p2}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public setupCustomButtons()V
    .locals 1

    .line 1274
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_0

    .line 1276
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setupPeriodicalCustomButtons(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)V

    .line 1278
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method protected shouldSetOverlayVisibleAtLaunch()Z
    .locals 3

    .line 573
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "settingsChange"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    invoke-static {v0, p0}, Lcom/amazon/nwstd/upsell/UpsellController;->isUpsellEnabled(Lcom/amazon/nwstd/upsell/UpsellController;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public shouldShowTapToTextTuto()Z
    .locals 1

    .line 1046
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->showTapToTextTuto:Z

    return v0
.end method

.method public startSearch(Ljava/lang/String;)V
    .locals 3

    .line 176
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Newsstand"

    const-string v2, "SearchInitiatedInPeriodicals"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mPeriodicalReaderController:Lcom/amazon/nwstd/activities/IPeriodicalReaderController;

    invoke-interface {v0, p0, p1}, Lcom/amazon/nwstd/activities/IPeriodicalReaderController;->startSearch(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;Ljava/lang/String;)V

    return-void
.end method

.method public supportsAnnotations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsBackNavigation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsBookmarks()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsReaderSoftBackViaHwButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSelection()Z
    .locals 2

    .line 1006
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateCustomButtons()V
    .locals 1

    .line 1289
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCustomActionMenuController()Lcom/amazon/android/menu/CustomActionMenuController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1291
    invoke-virtual {v0}, Lcom/amazon/android/menu/CustomActionMenuController;->updateButtons()V

    :cond_0
    return-void
.end method
