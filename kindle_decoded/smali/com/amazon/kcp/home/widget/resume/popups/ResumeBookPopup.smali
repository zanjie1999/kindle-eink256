.class public abstract Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;
.super Ljava/lang/Object;
.source "ResumeBookPopup.java"


# static fields
.field private static final CUSTOM_ACTION_BUTTON_GROUP_ID:I = 0x63

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final activity:Lcom/amazon/kcp/redding/ReddingActivity;

.field private final asin:Ljava/lang/String;

.field private final bookID:Ljava/lang/String;

.field protected final context:Landroid/content/Context;

.field private final downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field private groupService:Lcom/amazon/kindle/content/IGroupService;

.field private final handler:Lcom/amazon/kcp/library/ContentInteractionHandler;

.field private final isDeleteFromLibraryEnabled:Z

.field protected isInitSucceeded:Z

.field private final layoutId:I

.field private final libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

.field private libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field protected popupWindow:Landroid/widget/PopupWindow;

.field private rootView:Landroid/view/ViewGroup;

.field private scrollView:Landroid/view/View;

.field private final serializedFormId:Ljava/lang/String;

.field protected final title:Ljava/lang/String;

.field protected titleView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/home/events/ResumeWidgetEvent;Lcom/amazon/kcp/library/ContentInteractionHandler;Z)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;

    const-string v1, "ResumeBookPopup"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    .line 105
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/redding/ReddingActivity;

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    .line 106
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    .line 107
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->resume_popup:I

    iput p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->layoutId:I

    .line 108
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 109
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->groupService:Lcom/amazon/kindle/content/IGroupService;

    .line 110
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryResumeCardEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p2}, Lcom/amazon/kcp/home/events/ResumeWidgetEvent;->getItemData()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    goto :goto_1

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {p2}, Lcom/amazon/kcp/home/events/ResumeWidgetEvent;->getItemData()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p2, v0

    goto :goto_0

    .line 116
    :cond_1
    new-instance p2, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {p2, p1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    :goto_0
    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 118
    :goto_1
    iput-object p3, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->handler:Lcom/amazon/kcp/library/ContentInteractionHandler;

    .line 119
    iput-boolean p4, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->isDeleteFromLibraryEnabled:Z

    .line 120
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->isInitSucceeded:Z

    .line 122
    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->bookID:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->title:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->asin:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->serializedFormId:Ljava/lang/String;

    goto :goto_2

    .line 127
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->bookID:Ljava/lang/String;

    .line 128
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->title:Ljava/lang/String;

    .line 129
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->asin:Ljava/lang/String;

    .line 130
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->serializedFormId:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->inflatePopupWindow()V

    :goto_2
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kindle/content/IGroupService;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->groupService:Lcom/amazon/kindle/content/IGroupService;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->bookID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->asin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->reportOnClickMetricsForResumeBookPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->reportHomeLongPressMenuActionClicked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kcp/library/ContentInteractionHandler;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->handler:Lcom/amazon/kcp/library/ContentInteractionHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->reportOnClickMetricsForMarkAsRead(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->serializedFormId:Ljava/lang/String;

    return-object p0
.end method

.method private addActionButtons()V
    .locals 9

    .line 323
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->handler:Lcom/amazon/kcp/library/ContentInteractionHandler;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getActionButtons(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    .line 328
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/ui/IActionButton;

    .line 329
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->handler:Lcom/amazon/kcp/library/ContentInteractionHandler;

    invoke-virtual {v3, v2}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getActionButtonItemId(Lcom/amazon/kindle/krx/ui/IActionButton;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 333
    :cond_1
    iget-object v4, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-nez v4, :cond_2

    .line 336
    new-instance v4, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;

    invoke-direct {v4, p0, v2, v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;-><init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Lcom/amazon/kindle/krx/ui/IActionButton;Ljava/util/List;)V

    .line 349
    iget-object v5, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/librarymodule/R$layout;->resume_popup_menu_option:I

    iget-object v7, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->rootView:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 350
    sget-object v6, Lcom/amazon/kindle/krx/ui/TextType;->SHORT:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {v2, v6}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    sget-object v6, Lcom/amazon/kindle/krx/ui/TextType;->VERBOSE:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {v2, v6}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 352
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setId(I)V

    const/16 v3, 0x63

    .line 353
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 354
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 355
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v4, v5

    .line 357
    :cond_2
    invoke-direct {p0, v4, v2, v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->setUpActionButtonVisibility(Landroid/widget/TextView;Lcom/amazon/kindle/krx/ui/IActionButton;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private addCustomActionButtons()V
    .locals 0

    .line 318
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->clearCustomActionButtons()V

    .line 319
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->addActionButtons()V

    return-void
.end method

.method private addDiscoverableActions()V
    .locals 5

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->newActionContext(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    move-result-object v0

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    const-class v2, Lcom/amazon/kindle/krx/library/LibraryBookActionFactory;

    invoke-static {v2}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/library/LibraryBookActionFactory;

    .line 274
    invoke-interface {v3, v0}, Lcom/amazon/kindle/krx/action/ActionFactory;->createActions(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 276
    :cond_0
    invoke-static {v1}, Lcom/amazon/kindle/util/PriorityUtils;->sort(Ljava/util/List;)V

    .line 277
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/library/LibraryBookAction;

    .line 278
    invoke-interface {v1}, Lcom/amazon/kindle/krx/action/Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$3;

    invoke-direct {v4, p0, v1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$3;-><init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Lcom/amazon/kindle/krx/library/LibraryBookAction;)V

    invoke-direct {p0, v2, v3, v4}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopupOption(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private clearCustomActionButtons()V
    .locals 4

    const/4 v0, 0x0

    .line 376
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 377
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 378
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v2, 0x63

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 379
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createAddToCollectionPopUpItem()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 253
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->add_to_collection:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->popup_add_to_collection:I

    new-instance v2, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$2;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$2;-><init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopupOption(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->add_to_collection:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->popup_add_to_collection:I

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createDisabledPopupOption(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private createDeletePopupItemIfNeeded()V
    .locals 3

    .line 550
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->isDeleteFromLibraryEnabled:Z

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->bookID:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 552
    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isSample()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isArchivable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->delete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->popup_remove_this_sample:I

    new-instance v2, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$12;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$12;-><init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopupOption(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->lib_context_remove:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->popup_remove_from_device:I

    new-instance v2, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$13;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$13;-><init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopupOption(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createDisabledPopupOption(Ljava/lang/String;I)V
    .locals 0

    .line 588
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->inflateMenuOption(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    .line 589
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private createPopUpItemBasedOnStatus()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopUpItemForLocalBook()V

    goto :goto_1

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 417
    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->PAUSED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 418
    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 421
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopUpItemForAIBook()V

    goto :goto_1

    .line 419
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopUpItemForDownloadingBook()V

    :goto_1
    return-void
.end method

.method private createPopUpItemForAIBook()V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->serializedFormId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, v1, :cond_0

    .line 530
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->lib_context_download:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->popup_download_to_device:I

    new-instance v2, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$11;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$11;-><init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopupOption(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 546
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createDeletePopupItemIfNeeded()V

    return-void
.end method

.method private createPopUpItemForDownloadingBook()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 480
    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 481
    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->PAUSED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v1, :cond_3

    .line 484
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopUpItemIfDownloading()V

    goto :goto_1

    .line 482
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopUpItemIfDownloadError()V

    :cond_3
    :goto_1
    return-void
.end method

.method private createPopUpItemForLocalBook()V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-static {v1}, Lcom/amazon/kcp/util/LibraryUtils;->lookupMetadata(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/content/ILibraryService;->getLocalBook(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x4

    .line 451
    invoke-static {v0, v1}, Lcom/amazon/kcp/library/models/BookCapability;->supportsCapability(Lcom/amazon/kindle/model/content/IListableBook;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    new-instance v1, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$7;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$7;-><init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    .line 465
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/LocalBookState;->isBookKept()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->lib_context_dontkeep:I

    goto :goto_0

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->lib_context_keep:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->popup_context_keep:I

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopupOption(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 471
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createDeletePopupItemIfNeeded()V

    return-void
.end method

.method private createPopUpItemIfDownloadError()V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->serializedFormId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->resume_download:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->popup_resume_download:I

    new-instance v2, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$8;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$8;-><init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopupOption(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->lib_context_remove:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->popup_remove_from_device:I

    new-instance v2, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$9;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$9;-><init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopupOption(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private createPopUpItemIfDownloading()V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-nez v0, :cond_0

    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->lib_context_cancel_download:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->popup_cancel_download:I

    new-instance v2, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$10;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$10;-><init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopupOption(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private createPopupOption(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 583
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->inflateMenuOption(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    .line 584
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private createRemoveFromHomeItem()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->bookID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->resume_remove_from_home:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->popup_remove_from_home:I

    new-instance v2, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$1;-><init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopupOption(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private createSharePopUpItem()V
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getShareHelper()Lcom/amazon/kcp/reader/IShareHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    check-cast v1, Lcom/amazon/kcp/redding/ReddingActivity;

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/reader/IShareHelper;->showNewShareOption(Landroid/app/Activity;Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->share_this_book:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->popup_share:I

    new-instance v2, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$6;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$6;-><init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopupOption(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private inflateMenuOption(Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 4

    .line 593
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->resume_popup_menu_option:I

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->rootView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 594
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 595
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setId(I)V

    .line 597
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private inflatePopupWindow()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->setUpPopupWindow()V

    .line 147
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->initPopupMenu()V

    :cond_0
    return-void
.end method

.method private initPopupMenu()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-nez v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->addDiscoverableActions()V

    .line 190
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createAddToCollectionPopUpItem()V

    .line 191
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->addCustomActionButtons()V

    .line 192
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createSharePopUpItem()V

    .line 193
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopUpItemBasedOnStatus()V

    .line 194
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createRemoveFromHomeItem()V

    .line 195
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->setUpTitlePopUpItem()V

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->isInitSucceeded:Z

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->isInitSucceeded:Z

    return-void
.end method

.method private newActionContext(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/krx/library/LibraryBookActionContext;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->handler:Lcom/amazon/kcp/library/ContentInteractionHandler;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getIBookList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 293
    new-instance v0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$4;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$4;-><init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Ljava/util/List;)V

    return-object v0
.end method

.method private reportHomeLongPressMenuActionClicked(Ljava/lang/String;)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordLibraryActionButtonMetricsKt;->convertLibraryDisplayItemListToContentMetadataList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "HomeLongPressMenuPressed"

    const-string v2, "Home"

    .line 210
    invoke-static {v1, v0, p1, v2}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->reportLibraryActionMenuActionSelectedMetrics(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportOnClickMetricsForMarkAsRead(Ljava/lang/String;)V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->mark_as_read:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MarkAsReadManualFinished"

    goto :goto_0

    :cond_0
    const-string p1, "MarkAsReadUnfinished"

    .line 365
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz v0, :cond_1

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordLibraryActionButtonMetricsKt;->convertLibraryDisplayItemListToContentMetadataList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "HomeLongPressMenuPressed"

    const-string v2, "Home"

    .line 368
    invoke-static {v1, v0, p1, v2}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->reportLibraryActionMenuActionSelectedMetrics(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private reportOnClickMetricsForResumeBookPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "HomeResumePopup"

    .line 202
    invoke-static {p1, p3, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 203
    invoke-direct {p0, p3}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->reportHomeLongPressMenuActionClicked(Ljava/lang/String;)V

    return-void
.end method

.method private setUpActionButtonVisibility(Landroid/widget/TextView;Lcom/amazon/kindle/krx/ui/IActionButton;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 392
    sget-object v0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$14;->$SwitchMap$com$amazon$kindle$krx$ui$ComponentStatus:[I

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->handler:Lcom/amazon/kcp/library/ContentInteractionHandler;

    invoke-virtual {v1, p3}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getIBookList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/amazon/kindle/krx/ui/IButton;->getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eq p2, p3, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 403
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 404
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 399
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private setUpPopupWindow()V
    .locals 8

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->scrollView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    iget v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->layoutId:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->scrollView:Landroid/view/View;

    .line 154
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->resume_popup_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->rootView:Landroid/view/ViewGroup;

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->scrollView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->resume_title_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->titleView:Landroid/view/ViewGroup;

    .line 157
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->requiresShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->scrollView:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/librarymodule/R$attr;->resume_popup_background_color:I

    sget v4, Lcom/amazon/kindle/librarymodule/R$attr;->core_accent_1:I

    sget v5, Lcom/amazon/kindle/librarymodule/R$dimen;->resume_popup_radius:I

    sget v6, Lcom/amazon/kindle/librarymodule/R$dimen;->resume_popup_elevation:I

    const/16 v7, 0x11

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kcp/home/util/ViewUtils;->generateBackgroundWithShadow(Landroid/view/View;IIIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->scrollView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/librarymodule/R$attr;->resume_popup_background_color:I

    invoke-static {v0, v2}, Lcom/amazon/kcp/home/util/ViewUtils;->resolveAttribute(Landroid/view/View;I)Landroid/util/TypedValue;

    move-result-object v0

    .line 166
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->scrollView:Landroid/view/View;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->scrollView:Landroid/view/View;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 172
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 171
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 175
    :cond_1
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->scrollView:Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-direct {v0, v2, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    .line 176
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method protected requiresShadow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method abstract setUpTitlePopUpItem()V
.end method
