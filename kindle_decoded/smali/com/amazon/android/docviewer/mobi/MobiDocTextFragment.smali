.class public Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;
.super Ljava/lang/Object;
.source "MobiDocTextFragment.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/MobiDocFragment;
.implements Lcom/amazon/android/docviewer/mobi/IPageProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/android/docviewer/mobi/MobiDocFragment;",
        "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
        "Lcom/amazon/android/docviewer/mobi/MobiPage;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.android.docviewer.mobi.MobiDocTextFragment"

.field private static final UNKNOWN_POSITION:Lcom/amazon/kindle/krf/KRF/Reader/Position;


# instance fields
.field private activeAreaTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentOrientation:I

.field private fileProviderAuthority:Ljava/lang/String;

.field private m_aaDrawInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_currentActiveTogglable:Lcom/amazon/kindle/krf/KRF/Reader/Position;

.field private m_currentTogglableNavigationIndex:I

.field private final m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

.field private m_hasCompletedInitialNavigation:Z

.field private m_isRendering:Z

.field private final m_krfListener:Lcom/amazon/android/docviewer/mobi/IKRFListener;

.field private m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

.field private m_maxTogglableNavigationIndex:I

.field private m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private m_minTogglableNavigationIndex:I

.field private m_navigatingWithinPage:Z

.field protected m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

.field private m_postNavigationPrerenderingEnabled:Z

.field private final m_renderDocFactory:Lcom/amazon/android/docviewer/mobi/RenderedDocFactory;

.field private m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

.field private final m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

.field private m_selectedActiveArea:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

.field private final m_selectorActionHandler:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;

.field private final m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7fffffff

    .line 80
    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->UNKNOWN_POSITION:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    return-void
.end method

.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/android/docviewer/mobi/RenderedDocFactory;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_postNavigationPrerenderingEnabled:Z

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_isRendering:Z

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->currentOrientation:I

    .line 580
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_selectorActionHandler:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;

    .line 766
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    .line 958
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_krfListener:Lcom/amazon/android/docviewer/mobi/IKRFListener;

    .line 114
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 115
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getKRFExecutorService()Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    .line 116
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getInternalDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    .line 117
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageRenderDrawableArray()Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    .line 119
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderDocFactory:Lcom/amazon/android/docviewer/mobi/RenderedDocFactory;

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->activeAreaTasks:Ljava/util/List;

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_aaDrawInfo:Ljava/util/List;

    .line 122
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$string;->file_provider_authority:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->fileProviderAuthority:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_navigatingWithinPage:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_selectedActiveArea:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_postNavigationPrerenderingEnabled:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_postNavigationPrerenderingEnabled:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_hasCompletedInitialNavigation:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krx/events/IEvent;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_aaDrawInfo:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Ljava/util/List;
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->generateActiveAreaDrawInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->fileProviderAuthority:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->updateTogglableStateOnPositionChange(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_currentTogglableNavigationIndex:I

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_currentActiveTogglable:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;I)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->navigateToTogglable(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getTogglableElementById(Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->toggleOff(Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->setCurrentActiveTogglable(Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/KRFExecutorService;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Ljava/util/List;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->activeAreaTasks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$902(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_isRendering:Z

    return p1
.end method

.method private generateActiveAreaDrawInfo()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1265
    iget-object v1, v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->getActiveAreaManager()Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->getActiveAreas()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    move-result-object v1

    .line 1266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    iget-object v3, v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_selectedActiveArea:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    invoke-static {v3}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getCPtr(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)J

    move-result-wide v3

    const/4 v6, 0x0

    :goto_0
    if-eqz v1, :cond_5

    int-to-long v7, v6

    .line 1269
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getCount()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-gez v11, :cond_5

    .line 1270
    invoke-virtual {v1, v7, v8}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    move-result-object v7

    .line 1271
    invoke-static {v7}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getCPtr(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)J

    move-result-wide v8

    cmp-long v10, v8, v3

    if-nez v10, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v7, :cond_4

    .line 1273
    invoke-virtual {v7}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getType()J

    move-result-wide v9

    const-wide/16 v11, 0x100

    cmp-long v13, v9, v11

    if-eqz v13, :cond_1

    const-wide/16 v11, 0x80

    cmp-long v13, v9, v11

    if-eqz v13, :cond_1

    const-wide/16 v11, 0x200

    cmp-long v13, v9, v11

    if-eqz v13, :cond_1

    const-wide/16 v11, 0x400

    cmp-long v13, v9, v11

    if-eqz v13, :cond_1

    const-wide/16 v11, 0x2000

    cmp-long v13, v9, v11

    if-eqz v13, :cond_1

    const-wide/16 v11, 0x1000

    cmp-long v13, v9, v11

    if-eqz v13, :cond_1

    if-eqz v8, :cond_4

    .line 1284
    :cond_1
    invoke-virtual {v7}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getActiveRectangles()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;

    move-result-object v11

    if-nez v11, :cond_2

    goto :goto_3

    .line 1289
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_2
    int-to-long v14, v13

    .line 1291
    invoke-virtual {v11}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->getCount()J

    move-result-wide v16

    cmp-long v18, v14, v16

    if-gez v18, :cond_3

    .line 1292
    invoke-virtual {v7}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getActiveRectangles()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;

    move-result-object v5

    .line 1293
    new-instance v14, Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {v5}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_x()I

    move-result v15

    invoke-virtual {v5}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_y()I

    move-result v0

    move-object/from16 v17, v1

    .line 1294
    invoke-virtual {v5}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_width()I

    move-result v1

    invoke-virtual {v5}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_height()I

    move-result v5

    invoke-direct {v14, v15, v0, v1, v5}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 1293
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_2

    :cond_3
    move-object/from16 v17, v1

    .line 1297
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;

    invoke-direct {v0, v12, v9, v10, v8}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;-><init>(Ljava/util/List;JZ)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v17, v1

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto/16 :goto_0

    :cond_5
    return-object v2
.end method

.method private getTogglableByNavIndex(I)Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getTogglableByNavIndex(I)Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;

    move-result-object p1

    return-object p1
.end method

.method private getTogglableElementById(Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;
    .locals 2

    .line 1127
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getTogglableElementById(Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;

    move-result-object p1

    return-object p1
.end method

.method private navigateToTogglable(I)Z
    .locals 5

    .line 1168
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_currentActiveTogglable:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getTogglableElementById(Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->toggleOff(Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;)Z

    .line 1170
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getTogglableByNavIndex(I)Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1172
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->getId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;->getOrdinal()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->setCurrentActiveTogglable(Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V

    .line 1173
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1174
    sget-object v3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_TOGGLE_ELEMENT_ON:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v3}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1176
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->toggleCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1177
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;->toggle()V

    .line 1179
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1180
    sget-object v3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_TOGGLE_ELEMENT_ON:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v3}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1185
    :cond_2
    sget-object v3, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->UNKNOWN_POSITION:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-direct {p0, v3, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->setCurrentActiveTogglable(Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V

    .line 1188
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1189
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-virtual {v3, v2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->setToggleableActived(ZI)V

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private needToRefreshPage()Z
    .locals 5

    .line 534
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    .line 535
    sget-object v2, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->CURRENT:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    invoke-virtual {p0, v2}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v2

    .line 536
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->isReadyToDraw()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 537
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getPageRange()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 538
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getPageRange()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    move-result-object v3

    iget v3, v3, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->begin:I

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getFirstElementPositionId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 539
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getPageRange()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    move-result-object v0

    iget v0, v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->end:I

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getLastElementPositionId()I

    move-result v2

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V
    .locals 2

    .line 1317
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 1318
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private refreshTogglableNavigationBounds()V
    .locals 2

    const/4 v0, -0x1

    .line 1137
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_minTogglableNavigationIndex:I

    .line 1138
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_maxTogglableNavigationIndex:I

    .line 1140
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refreshTogglableNavigationBounds()Landroid/util/Pair;

    move-result-object v0

    .line 1141
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_minTogglableNavigationIndex:I

    .line 1142
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_maxTogglableNavigationIndex:I

    return-void
.end method

.method private setCurrentActiveTogglable(Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V
    .locals 2

    .line 1148
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_currentActiveTogglable:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->delete()V

    :cond_0
    if-eqz p1, :cond_1

    .line 1153
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/Position;)V

    move-object p1, v0

    .line 1156
    :cond_1
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_currentActiveTogglable:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    .line 1157
    iput p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_currentTogglableNavigationIndex:I

    .line 1158
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1159
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->setToggleableActived(ZI)V

    .line 1161
    :cond_2
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_currentActiveTogglable:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_navigatingWithinPage:Z

    return-void
.end method

.method private toggleOff(Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;)Z
    .locals 4

    .line 1109
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->toggleCacheEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;->isOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1110
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1111
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_TOGGLE_ELEMENT_OFF:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1113
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;->toggle()V

    .line 1114
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1115
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_TOGGLE_ELEMENT_OFF:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1118
    :cond_1
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1119
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->setToggleableActived(ZI)V

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method private turnPanelOff()V
    .locals 4

    .line 1038
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$5;

    invoke-direct {v2, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$5;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)V

    new-instance v3, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$6;

    invoke-direct {v3, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$6;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    return-void
.end method

.method private updateTogglableStateOnPositionChange(I)V
    .locals 1

    .line 1195
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->refreshTogglableNavigationBounds()V

    .line 1197
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_currentActiveTogglable:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1202
    iget p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_minTogglableNavigationIndex:I

    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->navigateToTogglable(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1204
    iget p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_maxTogglableNavigationIndex:I

    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->navigateToTogglable(I)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1209
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->setCurrentActiveTogglable(Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public applySettings(Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Z)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->invalidatePages()V

    .line 235
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->applySettings(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Z)V

    :cond_0
    return-void
.end method

.method public cancelPendingPrerendering()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 217
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 218
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isCustomDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 217
    :goto_0
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->destroy(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    .line 222
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    .line 223
    invoke-direct {p0, v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->setCurrentActiveTogglable(Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V

    .line 224
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method differentLabel(II)Z
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v1, p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v1

    .line 503
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->supportsPageLabels()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    .line 504
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->userLocationFromPosition(I)I

    move-result p1

    .line 505
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0, p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->userLocationFromPosition(I)I

    move-result p2

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public enablePrerendering()V
    .locals 1

    .line 526
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isDoneWithInitialDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->needToRefreshPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->refreshAllPages()V

    :cond_0
    return-void
.end method

.method public getActiveAreaInfoForDrawing()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;",
            ">;"
        }
    .end annotation

    .line 1259
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_aaDrawInfo:Ljava/util/List;

    return-object v0
.end method

.method getAnnotationsManager()Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    return-object v0
.end method

.method public getBackDepth()J
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->getBackDepth()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getCurrentPageID()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getCurrentPageID()I

    move-result v0

    return v0

    .line 168
    :cond_0
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getDefaultPageID()I

    move-result v0

    return v0
.end method

.method public getDefaultPageID()I
    .locals 1

    .line 172
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getDefaultPageID()I

    move-result v0

    return v0
.end method

.method getDocumentPageRenderDrawable(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/mobi/KRFError;
        }
    .end annotation

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getKRFCustomTaskReceiver()Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    return-object v0
.end method

.method public getLastReadPosition()Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 1

    .line 487
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getLastElementPositionId()I

    move-result v0

    .line 489
    :goto_0
    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object p1

    return-object p1
.end method

.method public getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;
    .locals 1

    .line 1242
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->getCurrentPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/mobi/MobiPage;
    .locals 2

    .line 1247
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$11;->$SwitchMap$com$amazon$android$docviewer$mobi$IPageProvider$PagePosition:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-object v1

    .line 1253
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->getPreviousPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1251
    :cond_2
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->getNextPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v1

    :goto_1
    return-object v1

    .line 1249
    :cond_4
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->getCurrentPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public getSelector()Lcom/amazon/android/docviewer/IObjectSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/mobi/KRFError;
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->initialize()V

    .line 264
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    return-object v0
.end method

.method public hasCover()Z
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->hasCoverPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNextNavigationStop()Z
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->hasNextNavigationStop()Z

    move-result v0

    return v0
.end method

.method public hasPrevNavigationStop()Z
    .locals 2

    .line 1086
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->hasPrevNavigationStop()Z

    move-result v0

    return v0
.end method

.method public hasTOC()Z
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->hasTOC()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/mobi/KRFError;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "MobiDocTextFragment.initialize()"

    .line 183
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 185
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderDocFactory:Lcom/amazon/android/docviewer/mobi/RenderedDocFactory;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocFactory;->createRenderedDocument()Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    .line 186
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->initialize()V

    .line 187
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_selectorActionHandler:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;

    invoke-virtual {v2, v3}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->setObjectSelectorActionHandler(Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;)V

    .line 188
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    invoke-virtual {v2, v3}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->setRenderedDocListener(Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;)V

    .line 189
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_krfListener:Lcom/amazon/android/docviewer/mobi/IKRFListener;

    invoke-virtual {v2, v3}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->registerKRFListener(Lcom/amazon/android/docviewer/mobi/IKRFListener;)V

    .line 191
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v2, v3}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->registerPageRenderedEventListener(Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;)V

    .line 193
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 194
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_isRendering:Z

    .line 195
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getStartPage()Lcom/amazon/kindle/model/content/LastPageRead;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->navigateToLastPageRead(Lcom/amazon/kindle/model/content/LastPageRead;Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V

    const/4 v0, 0x0

    .line 197
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public isBackAvailable()Z
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->isBackAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNavigatingWithinPage()Z
    .locals 1

    .line 1058
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_navigatingWithinPage:Z

    return v0
.end method

.method public isNextPageAvailable()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->isNextPageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrevPageAvailable()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->isPrevPageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPromptworthyFpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z
    .locals 1

    .line 447
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 452
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getLastElementPositionId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isPromptworthyFpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;I)Z

    move-result p1

    return p1
.end method

.method public isPromptworthyFpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;I)Z
    .locals 4

    .line 456
    iget v0, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-static {v1}, Lcom/amazon/krfhacks/KRFHacks;->getBookEndPosition(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 457
    :goto_0
    iget v1, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    if-le v1, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 459
    iget p1, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->differentLabel(II)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public isPromptworthyMrpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z
    .locals 6

    .line 464
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 469
    :cond_0
    iget v2, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-static {v3}, Lcom/amazon/krfhacks/KRFHacks;->getBookEndPosition(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)I

    move-result v3

    const/4 v4, 0x1

    if-gt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 470
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getFirstElementPositionId()I

    move-result v3

    .line 471
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getLastElementPositionId()I

    move-result v0

    .line 472
    iget v5, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    if-gt v5, v0, :cond_3

    if-ge v5, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 476
    iget p1, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    invoke-virtual {p0, p1, v3}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->differentLabel(II)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public isPromptworthyMrpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;I)Z
    .locals 4

    .line 480
    iget v0, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-static {v1}, Lcom/amazon/krfhacks/KRFHacks;->getBookEndPosition(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 481
    :goto_0
    iget v1, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    if-eq v1, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 482
    iget p1, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->differentLabel(II)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public navigateBack(I)V
    .locals 5

    .line 371
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz p1, :cond_3

    .line 374
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getBackDepth()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/4 p1, 0x1

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 377
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPostBackRenderHelpers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/PostBackRenderHelper;

    .line 378
    invoke-interface {v3, v0, v1}, Lcom/amazon/android/docviewer/PostBackRenderHelper;->shouldRenderAfterGoingBack(J)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 385
    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_postNavigationPrerenderingEnabled:Z

    .line 386
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_isRendering:Z

    .line 387
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->navigateBack()V

    :cond_3
    return-void
.end method

.method public navigateToAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 318
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_isRendering:Z

    .line 319
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->navigateToAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    :cond_0
    return-void
.end method

.method public navigateToBeginning()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 302
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_isRendering:Z

    .line 303
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->navigateToBeginning()V

    :cond_0
    return-void
.end method

.method public navigateToCover()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->hasCoverPage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 405
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_isRendering:Z

    .line 406
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->navigateToCover()V

    goto :goto_0

    .line 408
    :cond_0
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_isRendering:Z

    .line 409
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->navigateToFirstPage()V

    :cond_1
    :goto_0
    return-void
.end method

.method public navigateToLocation(I)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 310
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_isRendering:Z

    .line 311
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->navigateToLocation(I)V

    :cond_0
    return-void
.end method

.method public navigateToNextNavigationStop()V
    .locals 4

    .line 1069
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$7;

    invoke-direct {v2, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$7;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)V

    new-instance v3, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$8;

    invoke-direct {v3, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$8;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;Z)V

    return-void
.end method

.method public navigateToNextPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 281
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_isRendering:Z

    .line 282
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->navigateToNextPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    :cond_0
    return-void
.end method

.method public navigateToPosition(I)V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 326
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_isRendering:Z

    .line 327
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->navigateToPosition(I)V

    :cond_0
    return-void
.end method

.method public navigateToPrevNavigationStop()V
    .locals 4

    .line 1092
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$9;

    invoke-direct {v2, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$9;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)V

    new-instance v3, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$10;

    invoke-direct {v3, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$10;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;Z)V

    return-void
.end method

.method public navigateToPrevPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 289
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_isRendering:Z

    .line 290
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->navigateToPrevPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    :cond_0
    return-void
.end method

.method public navigateToTOC()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 430
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_isRendering:Z

    .line 431
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->navigateToTOC()V

    :cond_0
    return-void
.end method

.method public onAnnotationManagerEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 203
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_NEED_REFRESH:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getAnnotationsManager()Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isPageDrawRequested()Z

    move-result p1

    if-nez p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getEventHandlers()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 207
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerRefresh()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected postMobiActiveAreToggled()V
    .locals 0

    return-void
.end method

.method repushLastCanceledNavigationRequest()V
    .locals 1

    .line 1220
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_renderedDoc:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->repushLastCanceledNavigationRequest()V

    :cond_0
    return-void
.end method

.method public saveState()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v0

    .line 243
    sget-object v1, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->TEXT:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/model/content/LocalBookState;->setLastReadViewMode(Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;)V

    .line 244
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$1;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/model/content/LocalBookState;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 253
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 1030
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->currentOrientation:I

    if-eq p1, v1, :cond_0

    .line 1031
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->invalidatePages()V

    .line 1032
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->turnPanelOff()V

    .line 1034
    :cond_0
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->currentOrientation:I

    return-void
.end method

.method public supportsZoom()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected toggleCacheEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
