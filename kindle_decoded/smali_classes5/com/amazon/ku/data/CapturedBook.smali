.class public Lcom/amazon/ku/data/CapturedBook;
.super Ljava/lang/Object;
.source "CapturedBook.java"


# instance fields
.field asin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asin"
    .end annotation
.end field

.field author:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author"
    .end annotation
.end field

.field title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ku/data/CapturedBook;->asin:Ljava/lang/String;

    .line 41
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ku/data/CapturedBook;->title:Ljava/lang/String;

    .line 42
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getAuthors()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ku/data/CapturedBook;->author:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/ku/data/CapturedBook;->asin:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/amazon/ku/data/CapturedBook;->title:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/amazon/ku/data/CapturedBook;->author:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 82
    const-class v0, Lcom/amazon/ku/data/CapturedBook;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    check-cast p1, Lcom/amazon/ku/data/CapturedBook;

    .line 85
    iget-object v0, p0, Lcom/amazon/ku/data/CapturedBook;->asin:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ku/data/CapturedBook;->asin:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/ku/data/CapturedBook;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/ku/data/CapturedBook;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/ku/data/CapturedBook;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/amazon/ku/data/CapturedBook;->asin:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/amazon/ku/data/CapturedBook;->asin:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-object v1, p0, Lcom/amazon/ku/data/CapturedBook;->title:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-object v1, p0, Lcom/amazon/ku/data/CapturedBook;->author:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    .line 75
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
