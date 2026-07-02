.class Lcom/amazon/android/docviewer/mobi/RenderedDocument;
.super Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;
.source "RenderedDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;,
        Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;
    }
.end annotation


# static fields
.field private static final TABLE_ARROW_SIZE:I = 0x1e

.field private static final TABLE_SHIFT_AMOUNT:I = 0x4b

.field private static final TAG:Ljava/lang/String; = "com.amazon.android.docviewer.mobi.RenderedDocument"


# instance fields
.field private bookType:Lcom/amazon/krfhacks/KRFHacks$BookType;

.field private currentPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

.field private listenersRegistered:Z

.field private final m_activeAreaSelectionListener:Lcom/amazon/android/docviewer/mobi/IActiveAreaSelectionListener;

.field private final m_annotationAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

.field private final m_audioActiveAreaCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;

.field private final m_buyBookCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;

.field private m_doc:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

.field private final m_externalLinkCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;

.field private m_historyManagerInfo:Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;

.field private m_krfListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/android/docviewer/mobi/IKRFListener;",
            ">;"
        }
    .end annotation
.end field

.field protected m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

.field private final m_maxPosition:I

.field private final m_navigationListener:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;

.field private final m_noteSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

.field private final m_objectSelector:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;

.field private final m_pageChangedListener:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;

.field protected m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

.field private final m_showDetailsCallBack:Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;

.field private final m_tableShiftCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;

.field private final m_tableShiftDefaultCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;

.field private final m_togglableCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;

.field private final m_togglableDefaultCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;

.field private final m_videoActiveAreaCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;

.field protected m_viewerInfo:Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;

.field private nextPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

.field private previousPage:Lcom/amazon/android/docviewer/mobi/MobiPage;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/android/docviewer/mobi/CachedPageProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/mobi/KRFError;
        }
    .end annotation

    .line 158
    invoke-static {p2, p3, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->createViewer(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)V

    .line 887
    new-instance p3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$32;

    invoke-direct {p3, p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$32;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_pageChangedListener:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;

    .line 901
    new-instance p3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;

    invoke-direct {p3, p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_navigationListener:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;

    .line 967
    new-instance p3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$34;

    invoke-direct {p3, p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$34;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_externalLinkCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;

    .line 986
    new-instance p3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$35;

    invoke-direct {p3, p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$35;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_buyBookCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;

    .line 1006
    new-instance p3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$36;

    invoke-direct {p3, p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$36;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_showDetailsCallBack:Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;

    .line 1026
    new-instance p3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$37;

    invoke-direct {p3, p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$37;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_noteSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    .line 1041
    new-instance p3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$38;

    invoke-direct {p3, p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$38;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_activeAreaSelectionListener:Lcom/amazon/android/docviewer/mobi/IActiveAreaSelectionListener;

    .line 1049
    new-instance p3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$39;

    invoke-direct {p3, p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$39;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_tableShiftCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;

    .line 1074
    new-instance p3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$40;

    invoke-direct {p3, p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$40;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_togglableCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;

    .line 1101
    new-instance p3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$41;

    invoke-direct {p3, p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$41;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_audioActiveAreaCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;

    .line 1115
    new-instance p3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$42;

    invoke-direct {p3, p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$42;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_videoActiveAreaCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;

    .line 159
    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    if-eqz p3, :cond_1

    .line 162
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_doc:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    .line 163
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    .line 164
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfListeners:Ljava/util/Set;

    .line 165
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->getTableShiftDefaultCallback()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_tableShiftDefaultCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;

    .line 166
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->getTogglableDefaultCallback()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_togglableDefaultCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;

    .line 167
    new-instance p1, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-direct {p1, p0, p4, p2}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_annotationAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    .line 168
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    const/16 p2, 0x4b

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->setTableShiftSize(I)Z

    .line 169
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->setTableShiftActiveAreaSize(I)Z

    .line 170
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_videoActiveAreaCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->setVideoCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V

    .line 171
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_audioActiveAreaCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->setAudioCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V

    .line 173
    new-instance p1, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_annotationAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-direct {p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;-><init>(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_objectSelector:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;

    .line 179
    invoke-virtual {p5}, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->currentPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    const/4 p2, 0x0

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 181
    new-instance p1, Lcom/amazon/android/docviewer/mobi/MobiPage;

    iget-object p4, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-direct {p1, p3, p2, p4}, Lcom/amazon/android/docviewer/mobi/MobiPage;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;ZLcom/amazon/android/docviewer/mobi/KRFExecutorService;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->currentPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    .line 183
    :cond_0
    new-instance p1, Lcom/amazon/android/docviewer/mobi/MobiPage;

    iget-object p4, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-direct {p1, p3, p2, p4}, Lcom/amazon/android/docviewer/mobi/MobiPage;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;ZLcom/amazon/android/docviewer/mobi/KRFExecutorService;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->nextPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    .line 184
    new-instance p1, Lcom/amazon/android/docviewer/mobi/MobiPage;

    iget-object p4, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-direct {p1, p3, p2, p4}, Lcom/amazon/android/docviewer/mobi/MobiPage;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;ZLcom/amazon/android/docviewer/mobi/KRFExecutorService;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->previousPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    .line 185
    new-instance p1, Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    invoke-direct {p1, p0, p2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_historyManagerInfo:Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;

    .line 196
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_doc:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getMaxPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_maxPosition:I

    return-void

    .line 160
    :cond_1
    new-instance p1, Lcom/amazon/android/docviewer/mobi/KRFError;

    const-string p2, "IKindleDocument.createViewer"

    const-string/jumbo p3, "null"

    invoke-direct {p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/KRFError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->afterPrevious(Z)V

    return-void
.end method

.method static synthetic access$101(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V
    .locals 0

    .line 59
    invoke-super {p0}, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->destroy()V

    return-void
.end method

.method static synthetic access$1100(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_historyManagerInfo:Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->afterGoto(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->logPerformanceMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Ljava/util/Set;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->invalidatePages()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->updateAdjacentPages(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_tableShiftDefaultCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_togglableDefaultCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->updateCurrentPage()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->afterNext(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method private afterGoto(Z)V
    .locals 2

    .line 1154
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1156
    invoke-interface {v0, v1, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionChanged(IZ)V

    .line 1157
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiRefresh()V

    goto :goto_0

    .line 1159
    :cond_0
    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiNavigationFailed(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private afterNext(Z)V
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1133
    invoke-interface {v0, v1, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionChanged(IZ)V

    .line 1134
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiRefresh()V

    goto :goto_0

    .line 1136
    :cond_0
    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiNavigationFailed(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private afterPrevious(Z)V
    .locals 2

    .line 1143
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1145
    invoke-interface {v0, v1, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionChanged(IZ)V

    .line 1146
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiRefresh()V

    goto :goto_0

    .line 1148
    :cond_0
    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiNavigationFailed(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static createViewer(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 2

    .line 98
    new-instance v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/RenderedDocument$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$1;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)V

    invoke-direct {v0, p2, v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/util/concurrent/Callable;)V

    invoke-virtual {p2, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitBlockingTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object p0
.end method

.method private invalidatePages()V
    .locals 3

    .line 1243
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->currentPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/mobi/MobiPage;->updatePage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;Z)V

    .line 1244
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->previousPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/mobi/MobiPage;->updatePage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;Z)V

    .line 1245
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->nextPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/mobi/MobiPage;->updatePage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;Z)V

    return-void
.end method

.method private logPerformanceMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V
    .locals 1

    .line 1286
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 1288
    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_doc:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getAsin()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1290
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_doc:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getAsin()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerListeners()V
    .locals 2

    .line 849
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_navigationListener:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->addListener(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V

    .line 850
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_pageChangedListener:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->addListener(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;)V

    .line 851
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_externalLinkCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->setExternalLinkCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V

    .line 852
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_buyBookCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->setBuyLinkCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;)V

    .line 853
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_showDetailsCallBack:Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->setShowBookDetailLinkCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;)V

    .line 854
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_tableShiftCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->setTableShiftCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;)V

    .line 855
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_togglableCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->setTogglableCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;)V

    .line 856
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_objectSelector:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_noteSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->setNoteSelectionListener(Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;)V

    .line 857
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_objectSelector:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_activeAreaSelectionListener:Lcom/amazon/android/docviewer/mobi/IActiveAreaSelectionListener;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->setActiveAreaSelectionListener(Lcom/amazon/android/docviewer/mobi/IActiveAreaSelectionListener;)V

    const/4 v0, 0x1

    .line 858
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->listenersRegistered:Z

    return-void
.end method

.method private unregisterListeners()V
    .locals 2

    .line 862
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->listenersRegistered:Z

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_navigationListener:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->removeListener(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V

    .line 864
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_pageChangedListener:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->removeListener(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;)V

    .line 865
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->setExternalLinkCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V

    .line 866
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->setBuyLinkCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;)V

    .line 867
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->setShowBookDetailLinkCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;)V

    .line 868
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->setTableShiftCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;)V

    .line 869
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->setTogglableCallback(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;)V

    .line 870
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_objectSelector:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->setNoteSelectionListener(Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;)V

    .line 871
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_objectSelector:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->setActiveAreaSelectionListener(Lcom/amazon/android/docviewer/mobi/IActiveAreaSelectionListener;)V

    const/4 v0, 0x0

    .line 872
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->listenersRegistered:Z

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private updateAdjacentPages(I)V
    .locals 7

    .line 1204
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->bookType:Lcom/amazon/krfhacks/KRFHacks$BookType;

    if-nez v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_doc:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v0

    .line 1206
    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->getBookType(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/krfhacks/KRFHacks$BookType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->bookType:Lcom/amazon/krfhacks/KRFHacks$BookType;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez p1, :cond_3

    .line 1213
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->bookType:Lcom/amazon/krfhacks/KRFHacks$BookType;

    sget-object v4, Lcom/amazon/krfhacks/KRFHacks$BookType;->Mobi8:Lcom/amazon/krfhacks/KRFHacks$BookType;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->isNextPageReady()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1214
    :cond_1
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->nextPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    invoke-virtual {v4}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->getNextPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->bookType:Lcom/amazon/krfhacks/KRFHacks$BookType;

    sget-object v6, Lcom/amazon/krfhacks/KRFHacks$BookType;->Topaz:Lcom/amazon/krfhacks/KRFHacks$BookType;

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3, v4, v5}, Lcom/amazon/android/docviewer/mobi/MobiPage;->updatePage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;Z)V

    goto :goto_2

    .line 1216
    :cond_3
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->nextPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->bookType:Lcom/amazon/krfhacks/KRFHacks$BookType;

    sget-object v5, Lcom/amazon/krfhacks/KRFHacks$BookType;->Topaz:Lcom/amazon/krfhacks/KRFHacks$BookType;

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    new-instance v5, Lcom/amazon/android/docviewer/mobi/RenderedDocument$43;

    invoke-direct {v5, p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$43;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    invoke-virtual {v3, v0, v4, v5}, Lcom/amazon/android/docviewer/mobi/MobiPage;->updatePage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;ZLcom/amazon/android/docviewer/mobi/MobiPage$IKRFPageProvider;)V

    :goto_2
    if-lez p1, :cond_7

    .line 1227
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->bookType:Lcom/amazon/krfhacks/KRFHacks$BookType;

    sget-object v3, Lcom/amazon/krfhacks/KRFHacks$BookType;->Mobi8:Lcom/amazon/krfhacks/KRFHacks$BookType;

    if-ne p1, v3, :cond_5

    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->isPreviousPageReady()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1228
    :cond_5
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->previousPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->getPreviousPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->bookType:Lcom/amazon/krfhacks/KRFHacks$BookType;

    sget-object v4, Lcom/amazon/krfhacks/KRFHacks$BookType;->Topaz:Lcom/amazon/krfhacks/KRFHacks$BookType;

    if-ne v3, v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1, v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiPage;->updatePage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;Z)V

    goto :goto_5

    .line 1230
    :cond_7
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->previousPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->bookType:Lcom/amazon/krfhacks/KRFHacks$BookType;

    sget-object v4, Lcom/amazon/krfhacks/KRFHacks$BookType;->Topaz:Lcom/amazon/krfhacks/KRFHacks$BookType;

    if-ne v3, v4, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    new-instance v2, Lcom/amazon/android/docviewer/mobi/RenderedDocument$44;

    invoke-direct {v2, p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$44;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/MobiPage;->updatePage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;ZLcom/amazon/android/docviewer/mobi/MobiPage$IKRFPageProvider;)V

    :goto_5
    return-void
.end method

.method private updateCurrentPage()V
    .locals 4

    .line 1195
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->bookType:Lcom/amazon/krfhacks/KRFHacks$BookType;

    if-nez v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_doc:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->getBookType(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/krfhacks/KRFHacks$BookType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->bookType:Lcom/amazon/krfhacks/KRFHacks$BookType;

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->currentPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->getCurrentPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->bookType:Lcom/amazon/krfhacks/KRFHacks$BookType;

    sget-object v3, Lcom/amazon/krfhacks/KRFHacks$BookType;->Topaz:Lcom/amazon/krfhacks/KRFHacks$BookType;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/MobiPage;->updatePage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;Z)V

    return-void
.end method


# virtual methods
.method applySettings(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Z)V
    .locals 3

    .line 259
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 262
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v2, :cond_0

    .line 263
    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionWillChange(I)V

    .line 266
    :cond_0
    new-instance v1, Lcom/amazon/android/docviewer/mobi/RenderedDocument$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$3;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)V

    .line 276
    new-instance p1, Lcom/amazon/android/docviewer/mobi/RenderedDocument$4;

    invoke-direct {p1, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$4;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    if-eqz p2, :cond_1

    .line 291
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p2, v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitBlockingTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Ljava/lang/Object;

    .line 292
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 294
    :cond_1
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p2, v1, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    :goto_0
    return-void
.end method

.method clearBackHistory()V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/RenderedDocument$11;

    invoke-direct {v2, p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$11;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    return-void
.end method

.method degisterKRFListener(Lcom/amazon/android/docviewer/mobi/IKRFListener;)V
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method destroy(Z)V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_annotationAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->destroy()V

    .line 229
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->unregisterListeners()V

    .line 231
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/RenderedDocument$2;

    invoke-direct {v2, p0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$2;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Z)V

    invoke-direct {v1, v0, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;Z)V

    .line 244
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->invalidatePages()V

    .line 245
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_pageChangedListener:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->delete()V

    .line 246
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_navigationListener:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;->delete()V

    .line 247
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_externalLinkCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;->delete()V

    .line 248
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_buyBookCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;->delete()V

    .line 249
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_showDetailsCallBack:Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;->delete()V

    .line 250
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_tableShiftCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;->delete()V

    .line 251
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_togglableCallback:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;->delete()V

    return-void
.end method

.method public getActiveAreaManager()Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    return-object v0
.end method

.method getBackDepth()J
    .locals 2

    .line 809
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_historyManagerInfo:Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;->getBackDepth()J

    move-result-wide v0

    return-wide v0
.end method

.method getCurrentPage()Lcom/amazon/android/docviewer/mobi/MobiPage;
    .locals 1

    .line 1260
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->currentPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfPageAvailible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->currentPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getNextPage()Lcom/amazon/android/docviewer/mobi/MobiPage;
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->nextPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfPageAvailible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->nextPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getPreviousPage()Lcom/amazon/android/docviewer/mobi/MobiPage;
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->previousPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfPageAvailible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->previousPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getSelector()Lcom/amazon/android/docviewer/IObjectSelector;
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_objectSelector:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;

    return-object v0
.end method

.method hasCoverPage()Z
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_viewerInfo:Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->hasNavigated:Z

    if-nez v0, :cond_0

    .line 821
    sget-object v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->TAG:Ljava/lang/String;

    const-string v1, "Accessing IDocumentViewer info before navigation finished."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_viewerInfo:Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->hasCoverPage:Z

    return v0
.end method

.method hasTOC()Z
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_viewerInfo:Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->hasNavigated:Z

    if-nez v0, :cond_0

    .line 814
    sget-object v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->TAG:Ljava/lang/String;

    const-string v1, "Accessing IDocumentViewer info before navigation finished."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_viewerInfo:Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->hasTOC:Z

    return v0
.end method

.method initialize()V
    .locals 0

    .line 204
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->initializeViewerInfo()V

    .line 205
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->registerListeners()V

    return-void
.end method

.method protected initializeViewerInfo()V
    .locals 2

    .line 212
    new-instance v0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_viewerInfo:Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;

    .line 213
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->initialize(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)V

    return-void
.end method

.method isBackAvailable()Z
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_historyManagerInfo:Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;->isBackAvailable()Z

    move-result v0

    return v0
.end method

.method isNextPageAvailable()Z
    .locals 2

    .line 797
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_viewerInfo:Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->hasNavigated:Z

    if-nez v0, :cond_0

    .line 798
    sget-object v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->TAG:Ljava/lang/String;

    const-string v1, "Accessing IDocumentViewer info before navigation finished."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_viewerInfo:Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->isNextPageAvailable:Z

    return v0
.end method

.method isPrevPageAvailable()Z
    .locals 2

    .line 789
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_viewerInfo:Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->hasNavigated:Z

    if-nez v0, :cond_0

    .line 790
    sget-object v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->TAG:Ljava/lang/String;

    const-string v1, "Accessing IDocumentViewer info before navigation finished."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_viewerInfo:Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->isPrevPageAvailable:Z

    return v0
.end method

.method navigateBack()V
    .locals 5

    .line 369
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 370
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v2, :cond_0

    .line 371
    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionWillChange(I)V

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$9;

    invoke-direct {v3, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$9;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v4, Lcom/amazon/android/docviewer/mobi/RenderedDocument$10;

    invoke-direct {v4, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$10;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v2, v1, v3, v4}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitBlockingTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Ljava/lang/Object;

    return-void
.end method

.method navigateToAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 5

    .line 618
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 619
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 622
    iget v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_maxPosition:I

    if-le p1, v2, :cond_0

    .line 623
    sget-object v2, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to navigate to a position beyond the end of the book! Pos is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but max is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_maxPosition:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, p1, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 624
    iget p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_maxPosition:I

    .line 627
    :cond_0
    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object p1

    .line 629
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v2, :cond_1

    .line 630
    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionWillChange(I)V

    .line 635
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$26;

    invoke-direct {v3, p0, v0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$26;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/amazon/kindle/krf/KRF/Reader/Position;)V

    new-instance p1, Lcom/amazon/android/docviewer/mobi/RenderedDocument$27;

    invoke-direct {p1, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$27;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v2, v1, v3, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    return-void
.end method

.method navigateToBeginning()V
    .locals 5

    .line 486
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 487
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v2, :cond_0

    .line 488
    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionWillChange(I)V

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$18;

    invoke-direct {v3, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$18;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v4, Lcom/amazon/android/docviewer/mobi/RenderedDocument$19;

    invoke-direct {v4, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$19;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v2, v1, v3, v4}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    return-void
.end method

.method navigateToCover()V
    .locals 5

    .line 408
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 409
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v2, :cond_0

    .line 410
    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionWillChange(I)V

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$12;

    invoke-direct {v3, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$12;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v4, Lcom/amazon/android/docviewer/mobi/RenderedDocument$13;

    invoke-direct {v4, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$13;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v2, v1, v3, v4}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    return-void
.end method

.method navigateToFirstPage()V
    .locals 5

    .line 434
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 435
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v2, :cond_0

    .line 436
    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionWillChange(I)V

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$14;

    invoke-direct {v3, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$14;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v4, Lcom/amazon/android/docviewer/mobi/RenderedDocument$15;

    invoke-direct {v4, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$15;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v2, v1, v3, v4}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    return-void
.end method

.method navigateToLastPageRead(Lcom/amazon/kindle/model/content/LastPageRead;Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V
    .locals 8

    .line 657
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 660
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v0, :cond_0

    .line 661
    invoke-interface {v0, v7}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionWillChange(I)V

    :cond_0
    if-eqz p1, :cond_4

    .line 663
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LastPageRead;->getLastPageReadPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 682
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LastPageRead;->getState()[B

    move-result-object v2

    .line 683
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LastPageRead;->getLastPageReadPosition()I

    move-result p1

    .line 686
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_maxPosition:I

    if-le p1, v0, :cond_2

    .line 687
    sget-object v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to navigate to a position beyond the end of the book! Pos is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but max is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_maxPosition:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 688
    iget p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_maxPosition:I

    .line 691
    :cond_2
    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v3

    if-nez v2, :cond_3

    .line 694
    new-instance p1, Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;

    invoke-direct {p1, p0, v6, v3, p2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/amazon/kindle/krf/KRF/Reader/Position;Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V

    goto :goto_1

    .line 714
    :cond_3
    new-instance p1, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;

    move-object v0, p1

    move-object v1, p0

    move-object v4, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;[BLcom/amazon/kindle/krf/KRF/Reader/Position;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V

    goto :goto_1

    .line 664
    :cond_4
    :goto_0
    new-instance p1, Lcom/amazon/android/docviewer/mobi/RenderedDocument$28;

    invoke-direct {p1, p0, v6, p2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$28;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V

    :goto_1
    const/4 p2, 0x1

    const-string v0, "Submit Navigate to LPR task"

    .line 751
    invoke-static {v0, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 753
    new-instance p2, Lcom/amazon/android/docviewer/mobi/RenderedDocument$31;

    invoke-direct {p2, p0, v6}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$31;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 771
    new-instance v1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1, p2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 775
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    .line 776
    invoke-static {v0, v7}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method navigateToLocation(I)V
    .locals 4

    .line 582
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 584
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v2, :cond_0

    .line 585
    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionWillChange(I)V

    .line 588
    :cond_0
    new-instance v1, Lcom/amazon/android/docviewer/mobi/RenderedDocument$24;

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$24;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 600
    new-instance p1, Lcom/amazon/android/docviewer/mobi/RenderedDocument$25;

    invoke-direct {p1, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$25;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 607
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$bool;->is_post_location_navigation_run_on_ui_thread:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 609
    new-instance v2, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v1, p1, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    .line 611
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 612
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$bool;->is_location_navigation_a_blocking_krf_task:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 614
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {v0, v2, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;Z)V

    return-void
.end method

.method navigateToNextPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 6

    .line 303
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 304
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 305
    invoke-interface {v2, v3}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionWillChange(I)V

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v3, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/amazon/android/docviewer/mobi/RenderedDocument$5;

    invoke-direct {v4, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$5;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v5, Lcom/amazon/android/docviewer/mobi/RenderedDocument$6;

    invoke-direct {v5, p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$6;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/foundation/internal/IBooleanCallback;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v3, v2, v4, v5}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3, v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;Z)V

    return-void
.end method

.method navigateToPosition(I)V
    .locals 5

    .line 512
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 515
    iget v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_maxPosition:I

    if-le p1, v2, :cond_0

    .line 516
    sget-object v2, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to navigate to a position beyond the end of the book! Pos is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but max is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_maxPosition:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, p1, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 517
    iget p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_maxPosition:I

    .line 520
    :cond_0
    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object p1

    .line 521
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v2, :cond_1

    .line 522
    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionWillChange(I)V

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;

    invoke-direct {v3, p0, v0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/amazon/kindle/krf/KRF/Reader/Position;)V

    new-instance p1, Lcom/amazon/android/docviewer/mobi/RenderedDocument$21;

    invoke-direct {p1, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$21;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v2, v1, v3, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    return-void
.end method

.method navigateToPrevPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 6

    .line 338
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 339
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v2, :cond_0

    const/4 v3, -0x1

    .line 340
    invoke-interface {v2, v3}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionWillChange(I)V

    .line 344
    :cond_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v3, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/amazon/android/docviewer/mobi/RenderedDocument$7;

    invoke-direct {v4, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$7;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v5, Lcom/amazon/android/docviewer/mobi/RenderedDocument$8;

    invoke-direct {v5, p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$8;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/foundation/internal/IBooleanCallback;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v3, v2, v4, v5}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3, v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;Z)V

    return-void
.end method

.method navigateToTOC()V
    .locals 5

    .line 460
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 461
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v2, :cond_0

    .line 462
    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionWillChange(I)V

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/amazon/android/docviewer/mobi/RenderedDocument$16;

    invoke-direct {v3, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$16;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v4, Lcom/amazon/android/docviewer/mobi/RenderedDocument$17;

    invoke-direct {v4, p0, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$17;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v2, v1, v3, v4}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    return-void
.end method

.method registerKRFListener(Lcom/amazon/android/docviewer/mobi/IKRFListener;)V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method repushLastCanceledNavigationRequest()V
    .locals 0

    return-void
.end method

.method setObjectSelectorActionHandler(Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_objectSelector:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->setActionHandler(Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;)V

    return-void
.end method

.method setRenderedDocListener(Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    return-void
.end method

.method public submitCustomKRFTask(Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1249
    new-instance v6, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/RenderedDocument$45;

    invoke-direct {v2, p0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$45;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;)V

    .line 1254
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;->getTaskFinishedRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;->getTaskErrorRunnable()Ljava/lang/Runnable;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    .line 1255
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {p1, v6}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    .line 1256
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->getFutureValue()Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
