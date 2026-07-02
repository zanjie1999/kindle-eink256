.class public Lcom/amazon/kindle/krx/reader/Page;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IPage;


# instance fields
.field private bookId:Ljava/lang/String;

.field private endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private pageLabel:Ljava/lang/String;

.field private position:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, p1, p2, v0}, Lcom/amazon/kindle/krx/reader/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/amazon/kindle/krx/reader/Page;->pageLabel:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/amazon/kindle/krx/reader/Page;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/Page;->bookId:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/amazon/kindle/krx/reader/Page;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/Page;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/Page;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getPageLabel()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/Page;->pageLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/Page;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public setPage(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 51
    iput-object p2, p0, Lcom/amazon/kindle/krx/reader/Page;->pageLabel:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/amazon/kindle/krx/reader/Page;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 53
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/Page;->bookId:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/amazon/kindle/krx/reader/Page;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method
