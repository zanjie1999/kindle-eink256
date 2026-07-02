.class public final Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProviderKt;
.super Ljava/lang/Object;
.source "LibraryBookDataContentProvider.kt"


# direct methods
.method public static final synthetic access$getContentFilePath(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/io/IPathDescriptor;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProviderKt;->getContentFilePath(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/io/IPathDescriptor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getContentFilePath(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/io/IPathDescriptor;)Ljava/lang/String;
    .locals 2

    .line 233
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    const-string v1, "metadata.bookType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->Companion:Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider$Companion;

    invoke-virtual {p0}, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider$Companion;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Using document file path"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 235
    invoke-interface {p1, p0}, Lcom/amazon/kindle/io/IPathDescriptor;->getDocumentPath(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "pathDescriptor.getDocumentPath(false)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_0
    sget-object v0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->Companion:Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Using book file path"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "pathDescriptor.getBookPath(metadata.bookID)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
