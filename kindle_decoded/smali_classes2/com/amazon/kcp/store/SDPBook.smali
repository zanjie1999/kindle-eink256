.class public final Lcom/amazon/kcp/store/SDPBook;
.super Lcom/amazon/kindle/krx/content/BaseBook;
.source "SDPBook.kt"


# instance fields
.field private final authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bookID:Lcom/amazon/kindle/model/content/IBookID;

.field private final isFalkorEpisode:Z

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "bookID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BaseBook;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/store/SDPBook;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    iput-object p2, p0, Lcom/amazon/kcp/store/SDPBook;->authors:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/kcp/store/SDPBook;->title:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/amazon/kcp/store/SDPBook;->isFalkorEpisode:Z

    return-void
.end method


# virtual methods
.method public getASIN()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kcp/store/SDPBook;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getAuthors()Ljava/lang/String;
    .locals 9

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/store/SDPBook;->authors:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/store/SDPBook;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookID.serializedForm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getContentType()Lcom/amazon/kindle/krx/content/ContentType;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/amazon/kcp/store/SDPBook;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    const-string v1, "bookID.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    const-string v1, "bookID.type.contentType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/store/SDPBook;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isArchivable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFalkorEpisode()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/amazon/kcp/store/SDPBook;->isFalkorEpisode:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/amazon/kcp/store/SDPBook;->isFalkorEpisode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorAddToLibraryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
