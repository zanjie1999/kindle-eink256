.class public final Lcom/amazon/kindle/deletecontent/action/DeleteContentActionUtilsKt;
.super Ljava/lang/Object;
.source "DeleteContentActionUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteContentActionUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteContentActionUtils.kt\ncom/amazon/kindle/deletecontent/action/DeleteContentActionUtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,98:1\n1690#2,3:99\n1711#2,3:102\n1711#2,3:105\n*E\n*S KotlinDebug\n*F\n+ 1 DeleteContentActionUtils.kt\ncom/amazon/kindle/deletecontent/action/DeleteContentActionUtilsKt\n*L\n60#1,3:99\n65#1,3:102\n70#1,3:105\n*E\n"
.end annotation


# static fields
.field private static final DELETABLE_CONTENT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/deletecontent/action/SupportedContent;",
            ">;"
        }
    .end annotation
.end field

.field private static final REMOVABLE_SINGLE_CONTENT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/deletecontent/action/SupportedContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    .line 54
    sget-object v2, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->SAMPLE:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->SEND_TO_KINDLE:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->SIDELOADED:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->PERSONAL_LETTER:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/deletecontent/action/DeleteContentActionUtilsKt;->REMOVABLE_SINGLE_CONTENT_LIST:Ljava/util/List;

    new-array v0, v0, [Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    .line 55
    sget-object v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->PURCHASED_BOOK:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->PURCHASED_MAGAZINE:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->PURCHASED_NEWSPAPER:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->COMIXOLOGY:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    aput-object v1, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/deletecontent/action/DeleteContentActionUtilsKt;->DELETABLE_CONTENT_LIST:Ljava/util/List;

    return-void
.end method

.method public static final areMultipleBooksRemovable(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "books"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/content/IBook;

    .line 60
    sget-object v2, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->SAMPLE:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->isSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static final hasAudibleCompanion(Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 79
    invoke-interface {p0, p1}, Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;->getOwnsCompanionBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isBookDeletable(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    const-string v0, "book"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/amazon/kindle/deletecontent/action/DeleteContentActionUtilsKt;->DELETABLE_CONTENT_LIST:Ljava/util/List;

    .line 105
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    .line 70
    invoke-virtual {v1, p0}, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->isSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public static final isSingleBookRemovable(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    const-string v0, "book"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/amazon/kindle/deletecontent/action/DeleteContentActionUtilsKt;->REMOVABLE_SINGLE_CONTENT_LIST:Ljava/util/List;

    .line 102
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    .line 65
    invoke-virtual {v1, p0}, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->isSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public static final toArchivableContentData(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;)Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;
    .locals 9

    const-string v0, "$this$toArchivableContentData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v1, "title"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v3

    const-string v1, "bookId"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    const-string v1, "asin"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v5

    const-string v1, "contentType"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getOriginType()Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-static {p1, p0}, Lcom/amazon/kindle/deletecontent/action/DeleteContentActionUtilsKt;->hasAudibleCompanion(Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v7

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getParentAsin()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    .line 85
    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static synthetic toArchivableContentData$default(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;ILjava/lang/Object;)Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 84
    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/kindle/deletecontent/action/DeleteContentActionUtilsKt;->toArchivableContentData(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;)Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object p0

    return-object p0
.end method

.method public static final toDeleteContentAsinDetail(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;
    .locals 4

    const-string v0, "$this$toDeleteContentAsinDetail"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asin"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v2

    const-string v3, "contentType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiUtilsKt;->convertContentTypeToCategory(Lcom/amazon/kindle/krx/content/ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getParentAsin()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toNonArchivableContentData(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;
    .locals 7

    const-string v0, "$this$toNonArchivableContentData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v1, "title"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v3

    const-string v1, "bookId"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v5

    const-string v1, "contentType"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getOriginType()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V

    return-object v0
.end method
