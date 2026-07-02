.class public Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;
.super Ljava/lang/Object;
.source "ReaderTOCPanelHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Lcom/amazon/kcp/redding/ReddingActivity;

.field private contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

.field private disallowSwipeOpen:Z

.field private drawer:Landroidx/drawerlayout/widget/DrawerLayout;

.field private drawerListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

.field private drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field private isAccessibilityEnabled:Z

.field private isDrawerOpen:Z

.field private isDrawerSettling:Z

.field private isOverlayVisible:Z

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private readerMode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->readerMode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    .line 76
    iput-object p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    .line 77
    iput-object p2, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    const/4 p2, 0x0

    .line 79
    iput-boolean p2, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isDrawerOpen:Z

    .line 80
    iput-boolean p2, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isDrawerSettling:Z

    .line 82
    iput-boolean p2, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isOverlayVisible:Z

    .line 83
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isAccessibilityEnabled:Z

    .line 85
    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->preventSwipeOpen(Lcom/amazon/kcp/redding/ReddingActivity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->disallowSwipeOpen:Z

    .line 87
    invoke-direct {p0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->setupNavigationPanel()V

    .line 88
    invoke-direct {p0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->setupActionBar()V

    .line 90
    iget-object p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance p2, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;-><init>(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)V

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 92
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static SupportsContent(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_1

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 109
    :cond_1
    instance-of p1, p0, Lcom/amazon/kcp/reader/PdfReaderActivity;

    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/amazon/kindle/krl/R$bool;->pdf_uses_toc_panel:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic access$000(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->setDrawerSwipeEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->drawerListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isDrawerOpen:Z

    return p0
.end method

.method static synthetic access$202(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isDrawerOpen:Z

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object p0
.end method

.method static synthetic access$402(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isDrawerSettling:Z

    return p1
.end method

.method private isSlidingDisallowed()Z
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->disallow_slide_open_toc_drawer:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private preventSwipeOpen(Lcom/amazon/kcp/redding/ReddingActivity;)Z
    .locals 4

    .line 128
    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->alwaysAllowDrawerSwipeOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 132
    :cond_0
    instance-of v0, p1, Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 136
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isAccessibilityEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isOverlayVisible:Z

    if-nez v0, :cond_2

    return v2

    .line 141
    :cond_2
    check-cast p1, Lcom/amazon/kcp/reader/ReaderActivity;

    .line 143
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/krl/R$bool;->disallow_slide_open_toc_drawer:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 148
    :cond_3
    invoke-static {p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider;->supportsTOCPanel(Lcom/amazon/kcp/reader/ReaderActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    .line 153
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    .line 154
    sget-object v3, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    invoke-virtual {v3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 158
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object p1

    .line 159
    sget-object v0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->HORIZONTAL_RIGHT_TO_LEFT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->VERTICAL_RIGHT_TO_LEFT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v2
.end method

.method private setDrawerSwipeEnabled(Z)V
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->disallowSwipeOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 281
    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    :cond_0
    return-void
.end method

.method private setupActionBar()V
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    sget-object v0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->TAG:Ljava/lang/String;

    const-string v1, "TOC Panel Helper trying to set up ActionBar that doesn\'t exist"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_0
    new-instance v0, Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    iget-object v2, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    sget v3, Lcom/amazon/kindle/krl/R$string;->open_nav_panel:I

    sget v4, Lcom/amazon/kindle/krl/R$string;->close_nav_panel:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    iput-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    return-void
.end method

.method private setupNavigationPanel()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    sget v1, Lcom/amazon/kindle/krl/R$id;->reader_drawer_layout:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->setDrawerSwipeEnabled(Z)V

    return-void
.end method


# virtual methods
.method public handleOverlayVisibilityChanged(Z)V
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isAccessibilityEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 194
    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->setDrawerSwipeEnabled(Z)V

    .line 195
    iput-boolean p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isOverlayVisible:Z

    .line 196
    iget-object p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->preventSwipeOpen(Lcom/amazon/kcp/redding/ReddingActivity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->disallowSwipeOpen:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 198
    iput-boolean p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isOverlayVisible:Z

    .line 199
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->preventSwipeOpen(Lcom/amazon/kcp/redding/ReddingActivity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->disallowSwipeOpen:Z

    .line 200
    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->setDrawerSwipeEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isDrawerOpen()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isDrawerOpen:Z

    return v0
.end method

.method public isDrawerSettling()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isDrawerSettling:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 225
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 226
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 235
    iget-boolean p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isDrawerOpen:Z

    if-nez p1, :cond_1

    .line 236
    sget-object p1, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->OPENING:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->publishEvent(Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public onReaderModeChangedEvent(Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 320
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->readerMode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    return-void
.end method

.method publishEvent(Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 261
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    .line 262
    const-class v1, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    instance-of v1, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 267
    iget-object v1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v2, Lcom/amazon/kcp/reader/TableOfContentsEvent;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/amazon/kcp/reader/TableOfContentsEvent;-><init>(Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    goto :goto_1

    .line 269
    :cond_2
    sget-object p1, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->TAG:Ljava/lang/String;

    const-string v0, "Unable to publish ReaderTOCEvent due to no ReaderActivity present."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->drawerListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    return-void
.end method

.method public setInteractive(Z)V
    .locals 3

    .line 293
    invoke-direct {p0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isSlidingDisallowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->readerMode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v2, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_1

    :cond_1
    :goto_0
    xor-int/lit8 v0, p1, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->disallowSwipeOpen:Z

    .line 296
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public syncState()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isDrawerOpen:Z

    .line 250
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    :cond_0
    return-void
.end method
