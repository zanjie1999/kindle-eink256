.class final Lcom/amazon/kcp/home/actions/BookActionsBook;
.super Lcom/amazon/kindle/krx/content/BaseBook;
.source "BookActionsActionProvider.kt"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BaseBook;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/BookActionsBook;->asin:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/home/actions/BookActionsBook;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getASIN()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/BookActionsBook;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 3

    .line 90
    new-instance v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    iget-object v1, p0, Lcom/amazon/kcp/home/actions/BookActionsBook;->asin:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmznBookID(asin, BookType.BT_EBOOK).serializedForm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getContentType()Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 88
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/BookActionsBook;->title:Ljava/lang/String;

    return-object v0
.end method
