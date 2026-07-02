.class public Lcom/amazon/kcp/library/LibraryContentInteractionHandler;
.super Lcom/amazon/kcp/library/ContentInteractionHandler;
.source "LibraryContentInteractionHandler.java"

# interfaces
.implements Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;


# static fields
.field private static final BOOK_DOWNLOAD_CONTEXT_MENU:Ljava/lang/String; = "BookDownloadContextMenu"

.field private static final CUSTOM_ACTION_BUTTON_GROUP_ID:I = 0x63

.field private static final DELETED:Ljava/lang/String; = "DeletedViaContext"

.field private static final DISCOVERABLE_ACTIONS_GROUP_ID:I = 0x64

.field private static final DOWNLOAD_FROM_LIBRARY:Ljava/lang/String; = "DownloadFromLibrary"

.field private static final DOWNLOAD_VIEW_METRIC_COUNTER:Ljava/lang/String; = "LibraryView"

.field private static final ENTRY_POINT_IDENTIFIER_HOME:Ljava/lang/String; = "home"

.field private static final ENTRY_POINT_IDENTIFIER_LIBRARY:Ljava/lang/String; = "library"

.field private static final GET_LOCAL_BOOK_TIMEOUT:J = 0x3e8L

.field private static final HOME_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field private static final LIB_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field private static final METRICS_CONTEXT_MENU_POPULATOR:Ljava/lang/String; = "ContextMenuPopulator"

.field private static final METRICS_LIBRARY_ACTIVITY:Ljava/lang/String; = "LibraryActivity"

.field private static final PERIODICAL_KEPT:Ljava/lang/String; = "PeriodicalKeptViaContext"

.field private static final PERIODICAL_UNKEPT:Ljava/lang/String; = "PeriodicalUnkeptViaContext"

.field private static final SELECTED_OPTIONS_ADD_TO_COLLECTION:Ljava/lang/String; = "AddToCollection"

.field private static final SELECTED_OPTIONS_RECOMMEND_THIS_BOOK:Ljava/lang/String; = "RecommendThisBook"

.field private static final SELECTED_OPTIONS_SERIES_IN_STORE:Ljava/lang/String; = "OpenSeriesInStore"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actionBarHelper:Lcom/amazon/kcp/library/LibraryActionBarHelper;

.field private actionItemHelperMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/library/AbstractActionItemHelper;",
            ">;"
        }
    .end annotation
.end field

.field private actionMode:Landroid/view/ActionMode;

.field private animationOriginView:Landroid/view/View;

.field private animationParent:Landroid/view/View;

.field private bookOpenAndCloseAnimationHelper:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

.field protected final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private onPermissionRequestRunnable:Ljava/lang/Runnable;

.field private previousCheckedItemCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 121
    const-class v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->TAG:Ljava/lang/String;

    .line 144
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$LIBRARY;

    const-string v1, "ContentInteractionHandler"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$LIBRARY;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->LIB_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    .line 145
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->HOME_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1, p3}, Lcom/amazon/kcp/library/ContentInteractionHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    .line 167
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->actionItemHelperMap:Ljava/util/Map;

    const/4 p3, 0x0

    .line 172
    iput p3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->previousCheckedItemCount:I

    const/4 p3, 0x0

    .line 174
    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->onPermissionRequestRunnable:Ljava/lang/Runnable;

    .line 179
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 180
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 181
    new-instance p2, Lcom/amazon/kcp/library/LibraryActionBarHelper;

    invoke-direct {p2, p1}, Lcom/amazon/kcp/library/LibraryActionBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->actionBarHelper:Lcom/amazon/kcp/library/LibraryActionBarHelper;

    .line 182
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object p1

    new-instance p2, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$1;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;)Ljava/lang/Runnable;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->onPermissionRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->onPermissionRequestRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/util/List;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
    .locals 0

    .line 120
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->animateBookOpen(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/util/List;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;)Landroid/view/View;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->animationOriginView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 120
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->reportLibraryMenuItemPressedMetrics(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;)Landroid/view/ActionMode;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->actionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method private addBookOpenedMetricsByLibraryGroupType(Ljava/util/List;Lcom/amazon/kindle/krx/library/LibraryGroupType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
            ")V"
        }
    .end annotation

    .line 793
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne p2, v0, :cond_0

    const-string p2, "ReaderViaBooksLibraryViewAndDeviceView"

    .line 794
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 795
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->CLOUD:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne p2, v0, :cond_1

    const-string p2, "ReaderViaBooksLibraryViewAndCloudView"

    .line 796
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private addBookOpenedMetricsByLibraryView(Ljava/util/List;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;",
            ")V"
        }
    .end annotation

    .line 768
    invoke-interface {p2}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    .line 769
    invoke-interface {p2}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object p2

    .line 771
    sget-object v1, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kindle$krx$library$LibraryView:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 p2, 0x5

    if-eq v1, p2, :cond_0

    .line 788
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected invlaid library view "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "ReaderViaCollectionItemsView"

    .line 784
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 780
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->addBookOpenedMetricsByLibraryGroupType(Ljava/util/List;Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    goto :goto_0

    .line 776
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->addBookOpenedMetricsByLibraryGroupType(Ljava/util/List;Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    goto :goto_0

    :cond_3
    const-string p2, "ReaderViaHomeLibraryView"

    .line 773
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private addBookOpenedMetricsBySortAndViewType(Ljava/util/List;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;",
            ")V"
        }
    .end annotation

    .line 802
    instance-of v0, p2, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;

    if-eqz v0, :cond_2

    .line 804
    move-object v0, p2

    check-cast v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getSortType()Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v0

    .line 805
    sget-object v1, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kcp$library$LibrarySortType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "ReaderViaSortCustom"

    .line 827
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    const-string v0, "ReaderViaSortPublicationDate"

    .line 823
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    const-string v0, "ReaderViaSortRecent"

    .line 819
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    const-string v0, "ReaderViaSortTitle"

    .line 815
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    const-string v0, "ReaderViaSortAuthorReverse"

    .line 811
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_5
    const-string v0, "ReaderViaSortAuthor"

    .line 807
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    :goto_0
    invoke-interface {p2}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 836
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 846
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected invalid show view type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p2, "ReaderViaList"

    .line 842
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p2, "ReaderViaGrid"

    .line 838
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private animateBookOpen(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/util/List;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 565
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->getBookOpenAndCloseAnimationHelper()Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 567
    invoke-interface/range {p5 .. p5}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getBookCloseAnimation()I

    move-result v4

    invoke-virtual {v3, v2, v1, v4}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->openBookFromBottom(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 571
    :cond_0
    iget-object v3, v0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v4, Lcom/amazon/kindle/librarymodule/R$id;->library_root_view:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 577
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->clearAnimation()V

    .line 580
    iget-object v4, v0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/librarymodule/R$layout;->book_open_curtain:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->animationParent:Landroid/view/View;

    .line 581
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 582
    sget v4, Lcom/amazon/kindle/librarymodule/R$id;->book_open_curtain:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 583
    iget-object v5, v0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v7, Lcom/amazon/kindle/librarymodule/R$anim;->fade_in:I

    invoke-static {v5, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 584
    iget-object v4, v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->animationParent:Landroid/view/View;

    sget v5, Lcom/amazon/kindle/librarymodule/R$id;->book_open_cover:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 585
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 590
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 591
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v8, v1, :cond_2

    int-to-float v7, v5

    int-to-float v9, v8

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float v7, v7, v9

    float-to-int v7, v7

    goto :goto_0

    :cond_2
    if-ge v7, v5, :cond_3

    int-to-float v8, v1

    int-to-float v9, v7

    int-to-float v10, v5

    div-float/2addr v9, v10

    mul-float v8, v8, v9

    float-to-int v8, v8

    .line 598
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v5

    div-float/2addr v9, v10

    int-to-float v11, v7

    div-float/2addr v11, v10

    const/4 v10, 0x2

    new-array v12, v10, [I

    .line 604
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    new-array v13, v10, [I

    move-object/from16 v14, p1

    .line 606
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 607
    aget v6, v13, v6

    const/4 v15, 0x1

    .line 608
    aget v13, v13, v15

    aget v16, v12, v15

    sub-int v13, v13, v16

    .line 609
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v16

    sub-int v1, v1, v16

    div-int/2addr v1, v10

    sub-int/2addr v6, v1

    .line 610
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sub-int/2addr v5, v1

    div-int/2addr v5, v10

    sub-int/2addr v13, v5

    .line 614
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/2addr v1, v10

    .line 615
    aget v5, v12, v15

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    div-int/2addr v3, v10

    add-int/2addr v5, v3

    .line 616
    div-int/2addr v8, v10

    sub-int/2addr v1, v8

    .line 617
    div-int/2addr v7, v10

    sub-int/2addr v5, v7

    .line 620
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 621
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    int-to-float v3, v6

    .line 622
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setX(F)V

    int-to-float v3, v13

    .line 623
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 624
    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v3, v5

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 625
    invoke-virtual {v1, v11}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0xfa

    .line 626
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;

    move-object/from16 v4, p4

    invoke-direct {v3, v0, v2, v4}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/util/List;)V

    .line 627
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 666
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    :goto_1
    return-void
.end method

.method private clearAnimation()V
    .locals 2

    .line 1034
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->animationOriginView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1035
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->animationParent:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1039
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1041
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->animationParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    .line 1043
    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->animationParent:Landroid/view/View;

    :cond_2
    return-void
.end method

.method private clearCustomActionButtons(Landroid/view/Menu;)V
    .locals 2

    const/16 v0, 0x63

    const/4 v1, 0x0

    .line 1491
    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return-void
.end method

.method private generateBookOpenedMetricsList(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 761
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->addBookOpenedMetricsByLibraryView(Ljava/util/List;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    .line 762
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->addBookOpenedMetricsBySortAndViewType(Ljava/util/List;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    return-object v0
.end method

.method private getBookOpenAndCloseAnimationHelper()Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->bookOpenAndCloseAnimationHelper:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    iget-object v1, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->library_root_view:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->bookOpenAndCloseAnimationHelper:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->bookOpenAndCloseAnimationHelper:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    return-object v0
.end method

.method private isEntryPointHome(Ljava/lang/String;)Z
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->landing:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private newActionContext(Ljava/util/List;)Lcom/amazon/kindle/krx/library/LibraryBookActionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Lcom/amazon/kindle/krx/library/LibraryBookActionContext;"
        }
    .end annotation

    .line 1371
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getIBookList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1372
    new-instance v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$25;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$25;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Ljava/util/List;)V

    return-object v0
.end method

.method private oneTapOpenBook(Landroid/app/Activity;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Z)Z
    .locals 3

    .line 398
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenLibraryEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_1

    .line 400
    :cond_0
    invoke-static {v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenHomeEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p4, :cond_6

    .line 401
    :cond_1
    const-class v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-nez p3, :cond_2

    goto :goto_1

    .line 406
    :cond_2
    invoke-interface {p2}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 407
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->cover_image:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object p3, v2

    :cond_3
    if-eqz p4, :cond_4

    const-string p4, "home"

    goto :goto_0

    :cond_4
    const-string p4, "library"

    .line 408
    :goto_0
    invoke-interface {v0, p2, p1, p3, p4}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;->open(Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return v1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private prepareDiscoverableActions(Landroid/view/Menu;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x64

    .line 1338
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeGroup(I)V

    .line 1339
    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->newActionContext(Ljava/util/List;)Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    move-result-object v1

    .line 1340
    const-class v2, Lcom/amazon/kindle/krx/library/LibraryBookActionFactory;

    invoke-static {v2}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/library/LibraryBookActionFactory;

    .line 1341
    invoke-interface {v3, v1}, Lcom/amazon/kindle/krx/action/ActionFactory;->createActions(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/library/LibraryBookAction;

    .line 1342
    invoke-interface {v4}, Lcom/amazon/kindle/krx/foundation/Prioritized;->getPriority()I

    move-result v5

    .line 1343
    invoke-interface {v4}, Lcom/amazon/kindle/krx/action/Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1344
    invoke-interface {v4}, Lcom/amazon/kindle/krx/action/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x0

    .line 1345
    invoke-interface {p1, v0, v8, v5, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v7, :cond_1

    .line 1347
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const/4 v6, 0x1

    .line 1348
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1350
    :cond_1
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1352
    :goto_1
    new-instance v6, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$24;

    invoke-direct {v6, p0, v4, p2}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$24;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/kindle/krx/library/LibraryBookAction;Ljava/util/List;)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private reportLibraryLongPressMenuMetrics(Landroid/view/Menu;Ljava/util/List;ZLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1396
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->add_to_collection:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AddToCollection"

    .line 1397
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1399
    :cond_0
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_delete:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1400
    new-instance v1, Lcom/amazon/kcp/library/DeleteActionItemHelper;

    invoke-direct {v1}, Lcom/amazon/kcp/library/DeleteActionItemHelper;-><init>()V

    .line 1401
    invoke-virtual {v1, p2}, Lcom/amazon/kcp/library/DeleteActionItemHelper;->getItemSetStatus(Ljava/util/List;)Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;

    move-result-object v1

    .line 1402
    iget-boolean v2, v1, Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;->allItemsCloudDeletable:Z

    if-eqz v2, :cond_1

    const-string v1, "DeleteFromCloud"

    .line 1403
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1404
    :cond_1
    iget-boolean v1, v1, Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;->allItemsDeviceDeletable:Z

    if-eqz v1, :cond_2

    const-string v1, "RemoveItems"

    .line 1405
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1408
    :cond_2
    :goto_0
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_download:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Download"

    .line 1409
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1411
    :cond_3
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 1412
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 1413
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1414
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    xor-int/lit8 p1, p3, 0x1

    .line 1422
    invoke-static {p2}, Lcom/amazon/kcp/util/fastmetrics/RecordLibraryActionButtonMetricsKt;->convertLibraryDisplayItemListToContentMetadataList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 1423
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Library"

    .line 1421
    invoke-static {p2, p3, p4, p1}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->reportLibraryActionMenuPresentedMetrics(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private reportLibraryMenuItemPressedMetrics(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 1150
    invoke-static {p2}, Lcom/amazon/kcp/util/fastmetrics/RecordLibraryActionButtonMetricsKt;->convertLibraryDisplayItemListToContentMetadataList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    const-string v0, "LibraryLongPressMenuItemPressed"

    const-string v1, "Library"

    .line 1148
    invoke-static {v0, p2, p1, v1}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->reportLibraryActionMenuActionSelectedMetrics(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportRemoveFromCollectionMetrics(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 1135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1136
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getCollectionItem()Lcom/amazon/kindle/collections/dto/ICollectionItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1138
    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CollectionID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    invoke-static {p1}, Lcom/amazon/kcp/util/MetricsUtils;->getAsinListStringFromLibraryItemList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ASINS"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1143
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v1, "Collections"

    const-string v2, "RemoveFromCollection"

    invoke-interface {p1, v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private startContentOpenExperience(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/metrics/ContentOpenMetricsType;Ljava/lang/String;)V
    .locals 4

    .line 418
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    .line 419
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isSample()Z

    move-result p1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, p1, p3, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->startExperiences(Lcom/amazon/kindle/model/content/IBookID;ZLjava/lang/String;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    return-void
.end method

.method private static toCollectionItemList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 1453
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1454
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 1455
    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getCollectionItem()Lcom/amazon/kindle/collections/dto/ICollectionItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1457
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public announceActionModeBarIfNeeded()V
    .locals 1

    .line 1441
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->actionBarHelper:Lcom/amazon/kcp/library/LibraryActionBarHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryActionBarHelper;->announceActionModeBarIfNeeded()V

    return-void
.end method

.method public clearBookOpenAnimation()V
    .locals 0

    .line 1446
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->clearAnimation()V

    return-void
.end method

.method public destroyActionMenu(Landroid/view/ActionMode;)V
    .locals 1

    .line 1435
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->actionBarHelper:Lcom/amazon/kcp/library/LibraryActionBarHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/LibraryActionBarHelper;->setDescendantFocusable(Z)V

    const/4 p1, 0x0

    .line 1436
    iput p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->previousCheckedItemCount:I

    return-void
.end method

.method getActionButtonsVisibility(Ljava/util/Collection;Landroid/view/Menu;Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;>;",
            "Landroid/view/Menu;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1297
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/IActionButton;

    .line 1298
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getActionButtonItemId(Lcom/amazon/kindle/krx/ui/IActionButton;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1303
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    const/16 v3, 0x63

    .line 1305
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1306
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IActionButton;->getPriority()I

    move-result v5

    sget-object v6, Lcom/amazon/kindle/krx/ui/TextType;->SHORT:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {v1, v6}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object v6

    .line 1305
    invoke-interface {p2, v3, v2, v5, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 1309
    sget-object v2, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    sget-object v5, Lcom/amazon/kindle/krx/ui/IconType;->SOFTKEY:Lcom/amazon/kindle/krx/ui/IconType;

    invoke-interface {v1, v2, v5}, Lcom/amazon/kindle/krx/ui/IButton;->getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1311
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IActionButton;->showAsAction()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1312
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1314
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1319
    :cond_3
    sget-object v2, Lcom/amazon/kindle/krx/ui/TextType;->SHORT:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1321
    :goto_1
    invoke-virtual {p0, v3, v1, p3}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->setVisibility(Landroid/view/MenuItem;Lcom/amazon/kindle/krx/ui/IActionButton;Ljava/util/List;)V

    .line 1323
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1324
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IButton;->getIconKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHARE_BUTTON_KEY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1325
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "RecommendThisBook"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1326
    :cond_4
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IButton;->getIconKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MARK_AS_READ_BUTTON_KEY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1327
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "MarkAsReadManualFinished"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1328
    :cond_5
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IButton;->getIconKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MARK_AS_UNREAD_BUTTON_KEY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1329
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "MarkAsReadUnfinished"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method handleItemClick(Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V
    .locals 13

    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    if-nez v8, :cond_0

    return-void

    .line 304
    :cond_0
    iput-object v0, v7, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->animationOriginView:Landroid/view/View;

    .line 306
    invoke-interface/range {p5 .. p5}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/amazon/kcp/util/LibraryUtils;->isConsolidated(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/LibraryContentFilter;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface/range {p3 .. p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    .line 311
    :cond_1
    invoke-interface/range {p5 .. p5}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTitleString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->isEntryPointHome(Ljava/lang/String;)Z

    move-result v2

    .line 313
    invoke-interface/range {p3 .. p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/util/MopDeprecationUtils;->handleMopDeprecation(Lcom/amazon/kindle/content/ContentMetadata;)V

    move-object v3, p1

    .line 315
    invoke-direct {p0, p1, v8, v0, v2}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->oneTapOpenBook(Landroid/app/Activity;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    if-eqz v2, :cond_3

    const-string v4, "home"

    goto :goto_0

    :cond_3
    const-string v4, "library"

    .line 321
    :goto_0
    invoke-interface/range {p3 .. p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 322
    sget-object v2, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    invoke-direct {p0, v8, v2, v4}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->startContentOpenExperience(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/metrics/ContentOpenMetricsType;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    const/4 v9, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 325
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Asin"

    aput-object v6, v5, v4

    .line 328
    invoke-interface/range {p3 .. p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->makeMetadata([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "OpenBook"

    .line 325
    invoke-interface {v2, v1, v6, v5}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 331
    :cond_4
    invoke-virtual {p0, v8}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportBookOpenedPerformanceForQA(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    move-object/from16 v6, p5

    .line 333
    invoke-direct {p0, v6}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->generateBookOpenedMetricsList(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)Ljava/util/List;

    move-result-object v10

    .line 338
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$bool;->book_open_animation_enabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {p3 .. p3}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_AUDIBLE_AUDIOBOOK:Lcom/amazon/kcp/library/models/BookType;

    if-eq v1, v2, :cond_6

    .line 339
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->cover_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    .line 340
    iget-object v0, v7, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->animationOriginView:Landroid/view/View;

    instance-of v0, v0, Lcom/amazon/kcp/library/ui/LibraryBookRow;

    if-eqz v0, :cond_5

    .line 342
    iput-object v3, v7, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->animationOriginView:Landroid/view/View;

    :cond_5
    if-eqz v3, :cond_6

    .line 345
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v2, -0x1

    invoke-interface {v0, v8, v1, v2}, Lcom/amazon/kcp/cover/ICoverCacheManager;->getCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cover/ImageSizes$Type;I)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v11

    .line 346
    new-instance v12, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v11

    move-object/from16 v4, p3

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/kcp/cover/UpdatableCover;Landroid/widget/ImageView;Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/util/List;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    invoke-virtual {v11, v12}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_c

    const-string v0, "Library"

    const-string v1, "LibraryActivity"

    .line 363
    invoke-virtual {p0, v8, v0, v1, v10}, Lcom/amazon/kcp/library/ContentInteractionHandler;->openItemAndReportMetrics(Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    :cond_7
    move-object/from16 v6, p5

    .line 365
    invoke-interface/range {p3 .. p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v1, v3, :cond_8

    .line 366
    invoke-interface/range {p3 .. p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v1, v3, :cond_8

    .line 367
    invoke-interface/range {p3 .. p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v1, v3, :cond_8

    .line 368
    invoke-interface/range {p3 .. p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->UNSUPPORTED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v1, v3, :cond_c

    .line 370
    :cond_8
    invoke-interface/range {p3 .. p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v1, v3, :cond_9

    .line 371
    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    invoke-direct {p0, v8, v1, v4}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->startContentOpenExperience(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/metrics/ContentOpenMetricsType;Ljava/lang/String;)V

    .line 373
    :cond_9
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 374
    invoke-interface/range {p5 .. p5}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LibraryView"

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->cover_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    move-object v5, v1

    goto :goto_2

    :cond_a
    move-object v5, v0

    :goto_2
    if-eqz v2, :cond_b

    .line 376
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->HOME_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    goto :goto_3

    :cond_b
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->LIB_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    :goto_3
    move-object v6, v0

    const-string v2, "LibraryActivity"

    const-string v3, "DownloadFromLibrary"

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kcp/library/ContentInteractionHandler;->downloadItemAndReportMetrics(Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/view/View;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    .line 380
    :cond_c
    :goto_4
    invoke-interface/range {p3 .. p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->handleClick()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_d
    return-void

    .line 307
    :cond_e
    :goto_5
    iget-object v0, v7, Lcom/amazon/kcp/library/ContentInteractionHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v0, v8}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->showGroupItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method

.method protected initAddToCollectionDialogFragment(Ljava/util/List;)Lcom/amazon/kcp/library/AddToCollectionDialogFragment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Lcom/amazon/kcp/library/AddToCollectionDialogFragment;"
        }
    .end annotation

    .line 1513
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/ContentInteractionHandler;->initAddToCollectionDialogFragment(Ljava/util/List;)Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    move-result-object p1

    .line 1514
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->setupDialog(Lcom/amazon/kcp/library/LibraryDialogFragment;)V

    return-object p1
.end method

.method protected initDeleteOwnedSampleDialogFragment(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;
    .locals 0

    .line 1520
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/ContentInteractionHandler;->initDeleteOwnedSampleDialogFragment(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;

    move-result-object p1

    .line 1521
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->setupDialog(Lcom/amazon/kcp/library/LibraryDialogFragment;)V

    return-object p1
.end method

.method public onActionItemSelected(Landroid/view/ActionMode;Lcom/amazon/kindle/krx/library/LibraryView;Landroid/view/MenuItem;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ActionMode;",
            "Lcom/amazon/kindle/krx/library/LibraryView;",
            "Landroid/view/MenuItem;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)Z"
        }
    .end annotation

    .line 1049
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1050
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->actionItemHelperMap:Ljava/util/Map;

    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1055
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->actionItemHelperMap:Ljava/util/Map;

    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/library/AbstractActionItemHelper;

    .line 1056
    invoke-virtual {p2, p4}, Lcom/amazon/kcp/library/AbstractActionItemHelper;->onSelected(Ljava/util/List;)Lcom/amazon/kcp/library/LibraryDialogFragment;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1058
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->setupDialog(Lcom/amazon/kcp/library/LibraryDialogFragment;)V

    .line 1059
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/AbstractActionItemHelper;->getDialogTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1061
    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_0
    return v1

    .line 1064
    :cond_2
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->add_to_collection:I

    if-ne v0, v2, :cond_3

    .line 1066
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LibraryView"

    invoke-static {p2, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    const-string p2, "LibraryActivity"

    const-string p3, "AddToCollectionDialogShown"

    .line 1067
    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/amazon/kcp/library/ContentInteractionHandler;->showAddToCollectionView(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "AddToCollection"

    .line 1068
    invoke-direct {p0, p1, p4}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->reportLibraryMenuItemPressedMetrics(Ljava/lang/String;Ljava/util/List;)V

    return v1

    .line 1070
    :cond_3
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->remove_from_collection:I

    if-ne p2, v0, :cond_4

    .line 1071
    invoke-direct {p0, p4}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->reportRemoveFromCollectionMetrics(Ljava/util/List;)V

    .line 1073
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object p2

    invoke-static {p4}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->toCollectionItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/amazon/kindle/collections/ICollectionsManager;->removeCollectionItems(Ljava/util/Collection;)Z

    .line 1074
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    .line 1076
    :cond_4
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_view_all_in_store:I

    const/4 v2, 0x0

    if-ne p2, v0, :cond_6

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1077
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isGroup()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1079
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v4

    .line 1080
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-static {p2}, Lcom/amazon/kcp/util/LibraryUtils;->getContentType(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v5

    const-string v6, "ContextMenuPopulator"

    const-string v7, "ViewSeriesInStoreClickedViaContext"

    const-string v8, "kin_red_lib_lp_0"

    move-object v3, p0

    .line 1078
    invoke-virtual/range {v3 .. v8}, Lcom/amazon/kcp/library/ContentInteractionHandler;->viewSeriesInStore(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1087
    :cond_5
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v4

    .line 1088
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-static {p2}, Lcom/amazon/kcp/util/LibraryUtils;->getContentType(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v5

    const-string v6, "ContextMenuPopulator"

    const-string v7, "ViewSeriesInStoreClickedViaContext"

    const-string v8, "kin_red_lib_lp_0"

    move-object v3, p0

    .line 1086
    invoke-virtual/range {v3 .. v8}, Lcom/amazon/kcp/library/ContentInteractionHandler;->viewBookInStore(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string p2, "OpenSeriesInStore"

    .line 1095
    invoke-direct {p0, p2, p4}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->reportLibraryMenuItemPressedMetrics(Ljava/lang/String;Ljava/util/List;)V

    .line 1096
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    .line 1098
    :cond_6
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_perioidical_keep:I

    if-ne p2, v0, :cond_7

    .line 1099
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p2

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {p3}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, v1}, Lcom/amazon/kcp/library/ILibraryController;->setBookKeptStatus(Ljava/lang/String;Z)V

    .line 1100
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    .line 1102
    :cond_7
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_perioidical_dont_keep:I

    if-ne p2, v0, :cond_8

    .line 1103
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p2

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {p3}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, v2}, Lcom/amazon/kcp/library/ILibraryController;->setBookKeptStatus(Ljava/lang/String;Z)V

    .line 1104
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    .line 1106
    :cond_8
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_share_button:I

    if-ne p2, v0, :cond_9

    .line 1107
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getShareHelper()Lcom/amazon/kcp/reader/IShareHelper;

    move-result-object v3

    .line 1108
    iget-object v4, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->library_root_view:I

    invoke-virtual {v4, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    sget-object v8, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->WHOLEBOOK_LIBRARY:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    invoke-interface/range {v3 .. v8}, Lcom/amazon/kcp/reader/IShareHelper;->share(Landroid/app/Activity;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V

    .line 1109
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    .line 1113
    :cond_9
    invoke-virtual {p0, p4}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getActionButtons(Ljava/util/List;)Ljava/util/Collection;

    move-result-object p2

    .line 1115
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/IActionButton;

    .line 1116
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getActionButtonItemId(Lcom/amazon/kindle/krx/ui/IActionButton;)Ljava/lang/Integer;

    move-result-object v2

    .line 1118
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_a

    .line 1119
    invoke-virtual {p0, p4}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getIBookList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 1120
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IButton;->getIconKey()Ljava/lang/String;

    move-result-object p3

    const-string v2, "SHARE_BUTTON_KEY"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    const-string p3, "RecommendThisBook"

    .line 1121
    invoke-direct {p0, p3, p4}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->reportLibraryMenuItemPressedMetrics(Ljava/lang/String;Ljava/util/List;)V

    .line 1123
    :cond_b
    invoke-interface {v0, p2}, Lcom/amazon/kindle/krx/ui/IButton;->onClick(Ljava/lang/Object;)V

    .line 1129
    :cond_c
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1
.end method

.method public onItemClick(Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V
    .locals 11

    move-object v1, p1

    .line 268
    instance-of v0, v1, Lcom/amazon/kcp/redding/ReddingActivity;

    if-nez v0, :cond_0

    .line 269
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->TAG:Ljava/lang/String;

    const-string v1, "activity should  should be an instance of ReddingActivity"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/amazon/kcp/redding/ReddingActivity;

    .line 273
    invoke-virtual {v3}, Lcom/amazon/kcp/redding/ReddingActivity;->getPermissionsManager()Lcom/amazon/android/system/PermissionsManager;

    move-result-object v8

    .line 274
    invoke-static {}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v0

    move-object v10, p0

    move-object v5, p3

    .line 275
    invoke-virtual {p0, v3, p3, v0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->requiresExternalStoragePermission(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/debug/ScopedStorageUtils;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    invoke-virtual {v0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isSideloadPermissionChangesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    .line 277
    invoke-virtual/range {v2 .. v9}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->showExternalDirectoryPermissionsDialog(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/android/system/PermissionsManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object v6, v8

    move-object/from16 v7, p6

    .line 279
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->showExternalStoragePermissionsDialog(Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/android/system/PermissionsManager;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual/range {p0 .. p6}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->handleItemClick(Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1021
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->clearBookOpenAnimation()V

    .line 1022
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "AddToCollectionDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/LibraryDialogFragment;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->setupDialog(Lcom/amazon/kcp/library/LibraryDialogFragment;)V

    .line 1023
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "DeleteOwnedSampleDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/LibraryDialogFragment;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->setupDialog(Lcom/amazon/kcp/library/LibraryDialogFragment;)V

    .line 1024
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->actionItemHelperMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/AbstractActionItemHelper;

    .line 1025
    invoke-virtual {v1}, Lcom/amazon/kcp/library/AbstractActionItemHelper;->getDialogTag()Ljava/lang/String;

    move-result-object v1

    .line 1026
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1027
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/LibraryDialogFragment;

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->setupDialog(Lcom/amazon/kcp/library/LibraryDialogFragment;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1012
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->clearBookOpenAnimation()V

    .line 1013
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->getBookOpenAndCloseAnimationHelper()Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-virtual {v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->onStop()V

    :cond_0
    return-void
.end method

.method public postProcessActionMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1430
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->actionBarHelper:Lcom/amazon/kcp/library/LibraryActionBarHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/LibraryActionBarHelper;->setDescendantFocusable(Z)V

    return-void
.end method

.method public prepareActionMenu(Landroid/view/Menu;Ljava/util/List;Lcom/amazon/kindle/krx/library/LibraryView;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Lcom/amazon/kindle/krx/library/LibraryView;",
            "Z)V"
        }
    .end annotation

    .line 1156
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1164
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 1165
    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1171
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/collections/ICollectionsManager;->canModifyCollections()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1173
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 1174
    invoke-interface {v4}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isFalkor()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 1179
    :goto_1
    sget-object v4, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTION_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-virtual {p3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p3

    xor-int/lit8 v4, v0, 0x1

    xor-int/2addr v1, v2

    and-int/2addr v1, v4

    .line 1181
    iget-object v4, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    instance-of v5, v4, Lcom/amazon/kcp/library/CollectionItemsActivity;

    if-eqz v5, :cond_6

    if-eqz p3, :cond_6

    .line 1182
    check-cast v4, Lcom/amazon/kcp/library/CollectionItemsActivity;

    invoke-virtual {v4}, Lcom/amazon/kcp/library/CollectionItemsActivity;->isUncollectedCollection()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 p3, 0x0

    const/4 v1, 0x0

    :cond_6
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x0

    .line 1188
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v2, :cond_7

    .line 1189
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 1190
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v6

    invoke-interface {v5}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/amazon/kindle/content/IGroupService;->isGroupFalkorStory(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 1194
    :goto_3
    new-instance v7, Lcom/amazon/kcp/library/DownloadActionItemHelper;

    invoke-direct {v7}, Lcom/amazon/kcp/library/DownloadActionItemHelper;-><init>()V

    .line 1195
    sget v8, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_download:I

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-virtual {v7, p2}, Lcom/amazon/kcp/library/DownloadActionItemHelper;->isVisible(Ljava/util/List;)Z

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1196
    iget-object v8, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->actionItemHelperMap:Ljava/util/Map;

    sget v9, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_download:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_8

    .line 1203
    iget-object p3, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v7, Lcom/amazon/kindle/librarymodule/R$string;->lib_menu_remove_from_device:I

    invoke-virtual {p3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v7, 0x0

    goto :goto_4

    .line 1206
    :cond_8
    iget-object p3, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v7, Lcom/amazon/kindle/librarymodule/R$string;->lib_menu_delete:I

    invoke-virtual {p3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v7, 0x1

    .line 1209
    :goto_4
    invoke-static {}, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->isDeleteBooksFromAccountEnabled()Z

    move-result v8

    if-nez v8, :cond_9

    .line 1210
    new-instance v8, Lcom/amazon/kcp/library/DeleteActionItemHelper;

    invoke-direct {v8}, Lcom/amazon/kcp/library/DeleteActionItemHelper;-><init>()V

    .line 1211
    sget v9, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_delete:I

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 1212
    invoke-interface {v9, p3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p3

    .line 1213
    invoke-virtual {v8, p2}, Lcom/amazon/kcp/library/DeleteActionItemHelper;->isVisible(Ljava/util/List;)Z

    move-result v9

    invoke-interface {p3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object p3

    .line 1214
    invoke-interface {p3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1215
    iget-object p3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->actionItemHelperMap:Ljava/util/Map;

    sget v7, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_delete:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    :cond_9
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 1219
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_delete:I

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1223
    :cond_a
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->add_to_collection:I

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1224
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->remove_from_collection:I

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1227
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_view_all_in_store:I

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_b

    .line 1228
    invoke-interface {v5}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v5}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isStoreAccessAllowed()Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v6, :cond_b

    const/4 v1, 0x1

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    .line 1227
    :goto_5
    invoke-interface {p3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1233
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_perioidical_keep:I

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1234
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_perioidical_dont_keep:I

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1235
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v2, :cond_c

    invoke-interface {v5}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isLocal()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 1236
    invoke-static {v5}, Lcom/amazon/kcp/util/LibraryUtils;->lookupMetadata(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 1239
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 1240
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v4

    new-instance v5, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;

    invoke-direct {v5, p0, v1, p3, p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/content/ContentMetadata;Landroid/view/Menu;)V

    invoke-interface {v4, v5, v3}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    .line 1269
    :cond_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v2, :cond_d

    .line 1271
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getShareHelper()Lcom/amazon/kcp/reader/IShareHelper;

    move-result-object p3

    iget-object v1, p0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {p3, v1, v2}, Lcom/amazon/kcp/reader/IShareHelper;->showNewShareOption(Landroid/app/Activity;Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result p3

    .line 1272
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_share_button:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    .line 1275
    :cond_d
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_share_button:I

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1282
    :goto_6
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->clearCustomActionButtons(Landroid/view/Menu;)V

    if-eqz v0, :cond_e

    .line 1283
    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_7

    .line 1284
    :cond_e
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getActionButtons(Ljava/util/List;)Ljava/util/Collection;

    move-result-object p3

    .line 1285
    :goto_7
    invoke-virtual {p0, p3, p1, p2}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->getActionButtonsVisibility(Ljava/util/Collection;Landroid/view/Menu;Ljava/util/List;)Ljava/util/Map;

    move-result-object p3

    .line 1286
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->prepareDiscoverableActions(Landroid/view/Menu;Ljava/util/List;)V

    .line 1288
    iget v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->previousCheckedItemCount:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_f

    .line 1289
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->reportLibraryLongPressMenuMetrics(Landroid/view/Menu;Ljava/util/List;ZLjava/util/Map;)V

    .line 1290
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->previousCheckedItemCount:I

    :cond_f
    return-void
.end method

.method public requiresExternalStoragePermission(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/debug/ScopedStorageUtils;)Z
    .locals 3

    .line 1534
    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1535
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isDefaultContentSupported()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1537
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isDefaultContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 1542
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1544
    invoke-virtual {p3, p1, p2}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isStoragePermissionsGranted(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public setActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .line 1495
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->actionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public setVisibility(Landroid/view/MenuItem;Lcom/amazon/kindle/krx/ui/IActionButton;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 1471
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kindle$krx$ui$ComponentStatus:[I

    invoke-virtual {p0, p3}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getIBookList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/amazon/kindle/krx/ui/IButton;->getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 1482
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1483
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1478
    :cond_0
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1473
    :cond_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1474
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method protected setupDialog(Lcom/amazon/kcp/library/LibraryDialogFragment;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1500
    new-instance v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$26;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$26;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/LibraryDialogFragment;->setOkClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method showExternalDirectoryPermissionsDialog(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/android/system/PermissionsManager;Ljava/lang/String;)V
    .locals 12

    move-object v8, p0

    move-object v9, p1

    .line 507
    new-instance v10, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V

    .line 519
    new-instance v0, Ljava/io/File;

    invoke-interface {p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 521
    new-instance v4, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$8;

    invoke-direct {v4, p0, p1, v6}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$8;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/kcp/redding/ReddingActivity;Ljava/io/File;)V

    .line 533
    new-instance v7, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$9;

    invoke-direct {v7, p0, p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$9;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/kcp/redding/ReddingActivity;)V

    .line 542
    new-instance v11, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$10;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p6

    move-object v3, v10

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$10;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/android/system/PermissionsManager;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/io/File;)V

    .line 549
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 550
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->directory_permission_dialog_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 551
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->directory_permission_dialog_text:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 552
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->allow:I

    invoke-virtual {v0, v1, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 553
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->deny:I

    invoke-virtual {v0, v1, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 554
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method showExternalStoragePermissionsDialog(Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/android/system/PermissionsManager;Ljava/lang/String;)V
    .locals 11

    move-object v8, p0

    move-object v9, p1

    .line 445
    new-instance v10, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V

    .line 454
    new-instance v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$4;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$4;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Landroid/app/Activity;)V

    .line 464
    new-instance v1, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$5;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$5;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Landroid/app/Activity;)V

    .line 474
    new-instance v2, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$6;

    move-object/from16 v3, p6

    invoke-direct {v2, p0, v3, v10, v0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$6;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/android/system/PermissionsManager;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 481
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 482
    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->storage_permission_dialog_title:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 483
    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->storage_permission_dialog_text:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 484
    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->storage_permission_not_now:I

    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 485
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->ok:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 486
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method
