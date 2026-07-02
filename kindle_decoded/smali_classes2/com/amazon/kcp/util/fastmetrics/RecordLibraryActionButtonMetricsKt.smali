.class public final Lcom/amazon/kcp/util/fastmetrics/RecordLibraryActionButtonMetricsKt;
.super Ljava/lang/Object;
.source "RecordLibraryActionButtonMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecordLibraryActionButtonMetrics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecordLibraryActionButtonMetrics.kt\ncom/amazon/kcp/util/fastmetrics/RecordLibraryActionButtonMetricsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,128:1\n1517#2:129\n1588#2,3:130\n1517#2:133\n1588#2,3:134\n*E\n*S KotlinDebug\n*F\n+ 1 RecordLibraryActionButtonMetrics.kt\ncom/amazon/kcp/util/fastmetrics/RecordLibraryActionButtonMetricsKt\n*L\n37#1:129\n37#1,3:130\n50#1:133\n50#1,3:134\n*E\n"
.end annotation


# static fields
.field private static final ASIN:Ljava/lang/String; = "ASIN"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "ContentType"

.field private static final IS_ARCHIVABLE:Ljava/lang/String; = "IsArchivable"

.field private static final ORIGIN:Ljava/lang/String; = "Origin"

.field private static final PARENT_ASIN:Ljava/lang/String; = "ParentASIN"

.field private static final PREVIOUS_READ_STATE_ORIGIN:Ljava/lang/String; = "PreviousReadStateOrigin"

.field private static final SEPARATOR:Ljava/lang/String; = ","


# direct methods
.method public static final convertBookListToContentMetadataList(Ljava/util/List;Lcom/amazon/kindle/content/ILibraryService;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    const-string v0, "books"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 131
    check-cast v2, Lcom/amazon/kindle/krx/content/IBook;

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    .line 40
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 42
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 38
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final convertLibraryDisplayItemListToContentMetadataList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    const-string v0, "books"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 135
    check-cast v2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 51
    invoke-interface {v2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
