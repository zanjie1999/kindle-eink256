.class public Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;
.super Ljava/lang/Object;
.source "GoodreadsInfo.java"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final customerId:Ljava/lang/String;

.field private final goodreadsId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->asin:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->customerId:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->goodreadsId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 41
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 45
    :cond_2
    check-cast p1, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    .line 46
    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->asin:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->asin:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->customerId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->customerId:Ljava/lang/String;

    .line 47
    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->goodreadsId:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->goodreadsId:Ljava/lang/String;

    .line 48
    invoke-static {v2, p1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodreadsId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->goodreadsId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->asin:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->customerId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->goodreadsId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
