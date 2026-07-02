.class public Lcom/amazon/notebook/module/exporting/NotebookExportStatus;
.super Ljava/lang/Object;
.source "NotebookExportStatus.java"


# instance fields
.field private final clippingLimitManager:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

.field private final includeImages:Z

.field private final noNewExports:Z

.field private final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/notebook/module/exporting/NotebookExportCounter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->types:Ljava/util/Map;

    .line 29
    new-instance v1, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;

    invoke-direct {v1}, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;-><init>()V

    const-string v2, "ExportResultNumBookmarksExported"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->types:Ljava/util/Map;

    new-instance v1, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;

    invoke-direct {v1}, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;-><init>()V

    const-string v2, "ExportResultNumGHLsExported"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->types:Ljava/util/Map;

    new-instance v1, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;

    invoke-direct {v1}, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;-><init>()V

    const-string v2, "ExportResultNumHighlightsExported"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->types:Ljava/util/Map;

    new-instance v1, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;

    invoke-direct {v1}, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;-><init>()V

    const-string v2, "ExportResultNumNotesExported"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iput-boolean p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->includeImages:Z

    .line 39
    sget-object p1, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;->EXPORT_EXCEEDS:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->noNewExports:Z

    .line 40
    iput-object p3, p0, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->clippingLimitManager:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    return-void
.end method


# virtual methods
.method public totalExportableCount()I
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->types:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;

    .line 57
    iget v2, v2, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;->exportable:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public totalOriginalCount()I
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->types:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;

    .line 65
    iget v2, v2, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;->original:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method transferToIntent(Ljava/io/File;Landroid/net/Uri;F)Landroid/content/Intent;
    .locals 2

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ExportResultURI"

    .line 45
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    const-string v1, "ExportResultFileSize"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "ExportPercentageClippingUsed"

    .line 47
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 48
    iget-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->types:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;

    iget p2, p2, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;->exportable:I

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public updateCount(Lcom/amazon/kcp/reader/Note;)Z
    .locals 6

    .line 74
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    return v1

    :cond_0
    const-string v0, "ExportResultNumGHLsExported"

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "ExportResultNumHighlightsExported"

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const-string v0, "ExportResultNumNotesExported"

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "ExportResultNumBookmarksExported"

    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x1

    .line 94
    :goto_2
    iget-boolean v5, p0, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->includeImages:Z

    if-nez v5, :cond_4

    if-eqz v3, :cond_4

    return v1

    .line 97
    :cond_4
    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->types:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;

    .line 98
    iget v3, v0, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;->original:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;->original:I

    if-nez v4, :cond_5

    .line 99
    iget-boolean v3, p0, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->noNewExports:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->clippingLimitManager:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    invoke-virtual {v3, p1}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->hasAnnotationBeenExported(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    .line 102
    :cond_5
    iget p1, v0, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;->exportable:I

    add-int/2addr p1, v2

    iput p1, v0, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;->exportable:I

    return v2
.end method
