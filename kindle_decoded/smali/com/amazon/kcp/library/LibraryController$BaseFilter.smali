.class public Lcom/amazon/kcp/library/LibraryController$BaseFilter;
.super Ljava/lang/Object;
.source "LibraryController.java"

# interfaces
.implements Lcom/amazon/kindle/content/filter/SQLQueryFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseFilter"
.end annotation


# static fields
.field private static final PUNCTUATIONS:Ljava/lang/String; = "()"


# instance fields
.field private final processedQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 1257
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1258
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryController$BaseFilter;->removePunctuations(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryController$BaseFilter;->processedQuery:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLimit()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 2

    .line 1279
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController$BaseFilter;->processedQuery:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/SearchUtils;->getAllItemsSearchArgs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1280
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getWhereClause()Ljava/lang/String;
    .locals 1

    .line 1274
    invoke-static {}, Lcom/amazon/kcp/util/SearchUtils;->getAllItemsExcludeFalkorSampleSearchFilter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public orderBy()Ljava/lang/String;
    .locals 2

    .line 1290
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->supportsSortableColumns()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1292
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ASC"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected removePunctuations(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1263
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1264
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, "()"

    .line 1265
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 1266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1269
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
