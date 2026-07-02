.class Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;
.super Ljava/lang/Object;
.source "NotebookHTMLExporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncHTMLGenerateCall"
.end annotation


# instance fields
.field private authors:Ljava/lang/String;

.field private bookId:Ljava/lang/String;

.field private bookTitle:Ljava/lang/String;

.field private bookmarkTypeString:Ljava/lang/String;

.field private callback:Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;

.field private citationStyle:Lcom/amazon/notebook/module/exporting/citations/CitationStyle;

.field private clippingStatus:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

.field private filter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

.field private filterName:Ljava/lang/String;

.field private highlightTypeString:Ljava/lang/String;

.field private maxClippingPercentage:F

.field private maxSize:J

.field private noteTypeString:Ljava/lang/String;

.field private publicationDate:Ljava/lang/String;

.field private publisher:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

.field private userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/notebook/module/CompositeNotebookFilter;Ljava/lang/String;ZLcom/amazon/notebook/module/exporting/citations/CitationStyle;JFLcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    .line 117
    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p2

    .line 118
    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->userId:Ljava/lang/String;

    move-object v1, p3

    .line 119
    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->bookId:Ljava/lang/String;

    move-object v1, p4

    .line 120
    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->bookTitle:Ljava/lang/String;

    move-object v1, p5

    .line 121
    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->authors:Ljava/lang/String;

    move-object v1, p6

    .line 122
    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->publicationDate:Ljava/lang/String;

    move-object v1, p7

    .line 123
    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->publisher:Ljava/lang/String;

    .line 124
    new-instance v1, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    move-object v2, p8

    invoke-direct {v1, p8}, Lcom/amazon/notebook/module/CompositeNotebookFilter;-><init>(Lcom/amazon/notebook/module/CompositeNotebookFilter;)V

    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->filter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    move v2, p10

    .line 125
    invoke-virtual {v1, p10}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->setShouldIncludeImages(Z)V

    move-object v1, p9

    .line 126
    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->filterName:Ljava/lang/String;

    move-object v1, p11

    .line 127
    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->citationStyle:Lcom/amazon/notebook/module/exporting/citations/CitationStyle;

    move-wide v1, p12

    .line 128
    iput-wide v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->maxSize:J

    move/from16 v1, p14

    .line 129
    iput v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->maxClippingPercentage:F

    move-object/from16 v1, p15

    .line 130
    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->clippingStatus:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    move-object/from16 v1, p16

    .line 131
    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->noteTypeString:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 132
    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->bookmarkTypeString:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 133
    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->highlightTypeString:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 134
    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->callback:Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;

    return-void
.end method

.method private getNotesHTML(Ljava/util/List;Lcom/amazon/notebook/module/exporting/NotebookExportStatus;Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;",
            "Lcom/amazon/notebook/module/exporting/NotebookExportStatus;",
            "Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 192
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v4

    move-object v9, v7

    move-object v8, v5

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/kcp/reader/Note;

    const/high16 v11, 0x42c80000    # 100.0f

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v6, v12

    int-to-float v12, v2

    div-float v12, v6, v12

    mul-float v12, v12, v11

    float-to-int v11, v12

    move-object/from16 v12, p3

    .line 193
    invoke-interface {v12, v11}, Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;->receiveProgressUpdate(I)V

    .line 194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v11

    if-eqz v11, :cond_0

    return-object v5

    .line 199
    :cond_0
    invoke-virtual {v10}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getMetadata()Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 200
    invoke-virtual {v10}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v11

    invoke-interface {v11}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v11

    const-string v13, "mchl_color"

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 201
    invoke-virtual {v10}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v11

    invoke-interface {v11}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string/jumbo v11, "yellow"

    .line 204
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "highlight_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 205
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(<span class=\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\">"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-direct {v0, v11}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->getTranslatedHighlightColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "</span>)"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 208
    iget-object v13, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v13}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$000(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Lcom/amazon/notebook/module/NotebookNoteTools;

    move-result-object v13

    invoke-virtual {v13, v10, v8}, Lcom/amazon/notebook/module/NotebookNoteTools;->getTOCLabels(Lcom/amazon/kcp/reader/Note;Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;

    move-result-object v8

    .line 211
    iget-object v13, v8, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    .line 212
    iget-object v14, v8, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    if-eqz v14, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v8, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " > "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 213
    :cond_2
    iget-object v8, v8, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->pagePosition:Ljava/lang/String;

    if-eqz v8, :cond_3

    move-object v9, v8

    .line 214
    :cond_3
    iget-object v8, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->filter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v8}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->shouldIncludeImages()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v8}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$700(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;->getImageDataURIFromNote(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter$DataURIImg;

    move-result-object v8

    goto :goto_2

    :cond_4
    move-object v8, v5

    :goto_2
    if-eqz v13, :cond_5

    .line 217
    iget-object v14, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v14}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$800(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "#sectionHeading"

    .line 218
    invoke-virtual {v14, v15, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 217
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_5
    invoke-virtual {v10}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v13

    move-object/from16 v14, p2

    .line 222
    invoke-virtual {v14, v10}, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->updateCount(Lcom/amazon/kcp/reader/Note;)Z

    move-result v15

    if-nez v15, :cond_6

    move v8, v2

    move-object v11, v3

    move-object v13, v4

    move-object v2, v5

    goto/16 :goto_6

    :cond_6
    if-eqz v13, :cond_b

    const/4 v15, 0x1

    if-eq v13, v15, :cond_a

    const/4 v15, 0x2

    const-string v5, " "

    if-eq v13, v15, :cond_9

    const/4 v15, 0x7

    if-eq v13, v15, :cond_8

    move v8, v2

    move-object v11, v3

    move-object v13, v4

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 243
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->highlightTypeString:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 232
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->highlightTypeString:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    invoke-virtual {v10}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 236
    :cond_a
    iget-object v5, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->noteTypeString:Ljava/lang/String;

    .line 237
    invoke-virtual {v10}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 240
    :cond_b
    iget-object v5, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->bookmarkTypeString:Ljava/lang/String;

    :goto_3
    const/4 v11, 0x0

    .line 248
    :goto_4
    iget-object v13, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v13}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$900(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "#noteType"

    .line 249
    invoke-virtual {v13, v15, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v13, "#pageNumber"

    .line 250
    invoke-virtual {v5, v13, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v13, "#chapterHeading"

    .line 251
    invoke-virtual {v5, v13, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_c

    .line 254
    iget-object v5, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v5}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$1000(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Ljava/lang/String;

    move-result-object v5

    const-string v13, "#noteText"

    .line 255
    invoke-virtual {v5, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v8, :cond_e

    .line 259
    iget-object v5, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v5}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$1100(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Ljava/lang/String;

    move-result-object v5

    iget v11, v8, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter$DataURIImg;->width:I

    .line 260
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "#graphicWidth"

    invoke-virtual {v5, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget v11, v8, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter$DataURIImg;->height:I

    .line 261
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "#graphicHeight"

    invoke-virtual {v5, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, v8, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter$DataURIImg;->dataURI:Ljava/lang/String;

    if-eqz v8, :cond_d

    goto :goto_5

    :cond_d
    move-object v8, v4

    :goto_5
    const-string v11, "#dataURI"

    .line 262
    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 259
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move v8, v2

    move-object v11, v3

    int-to-long v2, v5

    move-object v13, v4

    iget-wide v4, v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->maxSize:J

    cmp-long v15, v2, v4

    if-lez v15, :cond_7

    .line 266
    invoke-interface/range {p3 .. p3}, Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;->receiveOversize()V

    const/4 v2, 0x0

    return-object v2

    :goto_6
    move-object v5, v2

    move v2, v8

    move-object v8, v10

    move-object v3, v11

    move-object v4, v13

    goto/16 :goto_0

    .line 271
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTranslatedHighlightColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "blue"

    .line 276
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    sget p1, Lcom/amazon/notebook/module/R$string;->highlight_blue:I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "orange"

    .line 278
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    sget p1, Lcom/amazon/notebook/module/R$string;->highlight_orange:I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "pink"

    .line 280
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 281
    sget p1, Lcom/amazon/notebook/module/R$string;->highlight_pink:I

    goto :goto_0

    .line 283
    :cond_2
    sget p1, Lcom/amazon/notebook/module/R$string;->highlight_yellow:I

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v0}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$200(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 139
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v0}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$000(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Lcom/amazon/notebook/module/NotebookNoteTools;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->filter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v0, v1}, Lcom/amazon/notebook/module/NotebookNoteTools;->getFilteredNotes(Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/util/List;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->clippingStatus:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    sget-object v2, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;->EXPORT_EXCEEDS:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    if-ne v1, v2, :cond_0

    .line 142
    iget-object v1, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v1}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$100(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->bookId:Ljava/lang/String;

    iget v4, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->maxClippingPercentage:F

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->getNotesUpTo(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;F)Ljava/util/List;

    move-result-object v0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v1}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$100(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->bookId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->getPercentExported(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)F

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->citationStyle:Lcom/amazon/notebook/module/exporting/citations/CitationStyle;

    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v3}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$200(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->bookTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->authors:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->publicationDate:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->publisher:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;->generate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v3}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$300(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->bookTitle:Ljava/lang/String;

    const-string v5, "#bookTitle"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->authors:Ljava/lang/String;

    const-string v5, "#authors"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#bibliography"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 150
    new-instance v3, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;

    iget-object v4, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->filter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v4}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->shouldIncludeImages()Z

    move-result v4

    iget-object v5, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->clippingStatus:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    iget-object v6, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v6}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$100(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;-><init>(ZLcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;)V

    .line 151
    iget-object v4, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->callback:Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;

    invoke-direct {p0, v0, v3, v4}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->getNotesHTML(Ljava/util/List;Lcom/amazon/notebook/module/exporting/NotebookExportStatus;Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 154
    iget-object v5, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v5}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$100(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->userId:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->bookId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v0}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->getPercentPreviouslyExported(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)F

    move-result v5

    .line 155
    iget-object v6, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->clippingStatus:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    sget-object v7, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;->MAXIMUM_FAIL:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    if-eq v6, v7, :cond_1

    .line 156
    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$400()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-float v8, v1, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", previously exported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", total exported: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v5, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v5}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$100(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->markAnnotationsAsExported(Ljava/util/List;)V

    .line 160
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v0}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$100(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    move-result-object v0

    iget-object v5, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->userId:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->bookId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v1}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->setPercentExported(Ljava/lang/String;Ljava/lang/String;F)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {v0}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$600(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->this$0:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    .line 164
    invoke-static {v5}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->access$500(Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#styles"

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "#scripts"

    const-string v6, ""

    .line 165
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "#heading"

    .line 166
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "#notes"

    .line 167
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->bookTitle:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x32

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->filterName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".html"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v2}, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->newExportFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 172
    :try_start_0
    invoke-static {v2, v0}, Lcom/amazon/kindle/io/IOUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 173
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->callback:Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;

    invoke-static {v2}, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->getUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v0, v2, v4, v3, v1}, Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;->receiveHTMLFile(Ljava/io/File;Landroid/net/Uri;Lcom/amazon/notebook/module/exporting/NotebookExportStatus;F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter$AsyncHTMLGenerateCall;->callback:Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;->receiveHTMLFile(Ljava/io/File;Landroid/net/Uri;Lcom/amazon/notebook/module/exporting/NotebookExportStatus;F)V

    :cond_2
    return-void
.end method
