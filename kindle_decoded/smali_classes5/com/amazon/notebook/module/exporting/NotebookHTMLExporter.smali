.class Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;
.super Ljava/lang/Object;
.source "NotebookHTMLExporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;
    }
.end annotation


# static fields
.field private static final HTML_PLACEHOLDER_AUTHORS:Ljava/lang/String; = "#authors"

.field private static final HTML_PLACEHOLDER_BIBLIOGRAPHY:Ljava/lang/String; = "#bibliography"

.field private static final HTML_PLACEHOLDER_BOOK_TITLE:Ljava/lang/String; = "#bookTitle"

.field private static final HTML_PLACEHOLDER_CHAPTER_HEADING:Ljava/lang/String; = "#chapterHeading"

.field private static final HTML_PLACEHOLDER_DATA_URI:Ljava/lang/String; = "#dataURI"

.field private static final HTML_PLACEHOLDER_GRAPHIC_HEIGHT:Ljava/lang/String; = "#graphicHeight"

.field private static final HTML_PLACEHOLDER_GRAPHIC_WIDTH:Ljava/lang/String; = "#graphicWidth"

.field private static final HTML_PLACEHOLDER_HEADING:Ljava/lang/String; = "#heading"

.field private static final HTML_PLACEHOLDER_NOTES:Ljava/lang/String; = "#notes"

.field private static final HTML_PLACEHOLDER_NOTE_TEXT:Ljava/lang/String; = "#noteText"

.field private static final HTML_PLACEHOLDER_NOTE_TYPE:Ljava/lang/String; = "#noteType"

.field private static final HTML_PLACEHOLDER_PAGE_NUMBER:Ljava/lang/String; = "#pageNumber"

.field private static final HTML_PLACEHOLDER_SCRIPTS:Ljava/lang/String; = "#scripts"

.field private static final HTML_PLACEHOLDER_SECTION_HEADING:Ljava/lang/String; = "#sectionHeading"

.field private static final HTML_PLACEHOLDER_STYLES:Ljava/lang/String; = "#styles"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final css_embed:Ljava/lang/String;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final heading_template:Ljava/lang/String;

.field private final m_clippingLimitManager:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

.field private final m_graphicsExporter:Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;

.field private final master_template:Ljava/lang/String;

.field private final noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

.field private final note_template:Ljava/lang/String;

.field private final notegraphic_template:Ljava/lang/String;

.field private final noteheading_template:Ljava/lang/String;

.field private final sectionheading_template:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;Lcom/amazon/notebook/module/NotebookNoteTools;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->activity:Landroid/app/Activity;

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/notebook/module/R$raw;->notebook_export_master_template:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->master_template:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/notebook/module/R$raw;->notebook_export_heading_template:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->heading_template:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/notebook/module/R$raw;->notebook_export_sectionheading_template:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->sectionheading_template:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/notebook/module/R$raw;->notebook_export_noteheading_template:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->noteheading_template:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/notebook/module/R$raw;->notebook_export_note_template:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->note_template:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/notebook/module/R$raw;->notebook_export_notegraphic_template:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->notegraphic_template:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/notebook/module/R$raw;->notebook_export_css:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->css_embed:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->m_graphicsExporter:Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;

    .line 80
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 81
    iput-object p4, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    .line 82
    iput-object p3, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->m_clippingLimitManager:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Lcom/amazon/notebook/module/NotebookNoteTools;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->m_clippingLimitManager:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->note_template:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->notegraphic_template:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Landroid/app/Activity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->heading_template:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->css_embed:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->master_template:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->m_graphicsExporter:Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->sectionheading_template:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->noteheading_template:Ljava/lang/String;

    return-object p0
.end method

.method private inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 309
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method getNotebookHTMLString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/notebook/module/CompositeNotebookFilter;Ljava/lang/String;ZLcom/amazon/notebook/module/exporting/citations/CitationStyle;JFLcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;)Ljava/util/concurrent/Future;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/notebook/module/CompositeNotebookFilter;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/amazon/notebook/module/exporting/citations/CitationStyle;",
            "JF",
            "Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    .line 90
    iget-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->executorService:Ljava/util/concurrent/ExecutorService;

    move-object/from16 p1, v1

    new-instance v1, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;

    move-object v0, v1

    move-object/from16 v21, p1

    move-object/from16 v22, v1

    move-object/from16 v1, v20

    invoke-direct/range {v0 .. v19}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;-><init>(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/notebook/module/CompositeNotebookFilter;Ljava/lang/String;ZLcom/amazon/notebook/module/exporting/citations/CitationStyle;JFLcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
