.class public Lcom/amazon/kindle/krx/content/GroupedBook;
.super Lcom/amazon/kindle/krx/content/BaseBook;
.source "GroupedBook.java"


# instance fields
.field private final metadata:Lcom/amazon/kindle/model/content/IListableBook;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/content/IListableBook;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BaseBook;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/GroupedBook;->metadata:Lcom/amazon/kindle/model/content/IListableBook;

    return-void
.end method


# virtual methods
.method public getASIN()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/GroupedBook;->metadata:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/GroupedBook;->metadata:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/GroupedBook;->metadata:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
