.class public Lcom/amazon/bookwizard/store/BookWrapper;
.super Lcom/amazon/kindle/krx/content/BaseBook;
.source "BookWrapper.java"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final authors:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final type:Lcom/amazon/kindle/krx/content/ContentType;


# direct methods
.method public constructor <init>(Lcom/amazon/bookwizard/data/Book;Lcom/amazon/kindle/krx/content/ContentType;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BaseBook;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getAsin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/store/BookWrapper;->asin:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getTitle()Lcom/amazon/bookwizard/data/LString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/LString;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/store/BookWrapper;->title:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getAuthors()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/store/BookWrapper;->authors:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/amazon/bookwizard/store/BookWrapper;->type:Lcom/amazon/kindle/krx/content/ContentType;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/bookwizard/service/PayoffRec;Lcom/amazon/kindle/krx/content/ContentType;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BaseBook;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/PayoffRec;->getAsin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/store/BookWrapper;->asin:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/PayoffRec;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/store/BookWrapper;->authors:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/PayoffRec;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/store/BookWrapper;->title:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/amazon/bookwizard/store/BookWrapper;->type:Lcom/amazon/kindle/krx/content/ContentType;

    return-void
.end method


# virtual methods
.method public getASIN()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/bookwizard/store/BookWrapper;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthors()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/bookwizard/store/BookWrapper;->authors:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/bookwizard/store/BookWrapper;->type:Lcom/amazon/kindle/krx/content/ContentType;

    return-object v0
.end method

.method public getExtendedMetadata(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentAsin()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/bookwizard/store/BookWrapper;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isDictionary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isIllustrated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
