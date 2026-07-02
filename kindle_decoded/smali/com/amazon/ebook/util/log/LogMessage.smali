.class public Lcom/amazon/ebook/util/log/LogMessage;
.super Ljava/lang/Object;


# instance fields
.field private final mIdent:Ljava/lang/String;

.field private final mKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/ebook/util/log/LogMessage;->mIdent:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/ebook/util/log/LogMessage;->mKeys:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/amazon/ebook/util/log/LogMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p1, Lcom/amazon/ebook/util/log/LogMessage;

    iget-object v0, p0, Lcom/amazon/ebook/util/log/LogMessage;->mIdent:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/ebook/util/log/LogMessage;->mIdent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazon/ebook/util/log/LogMessage;->mKeys:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/amazon/ebook/util/log/LogMessage;->mKeys:[Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p1, Lcom/amazon/ebook/util/log/LogMessage;->mKeys:[Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/ebook/util/log/LogMessage;->mKeys:[Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/amazon/ebook/util/log/LogMessage;->mKeys:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v0, v0

    iget-object v2, p1, Lcom/amazon/ebook/util/log/LogMessage;->mKeys:[Ljava/lang/String;

    array-length v2, v2

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amazon/ebook/util/log/LogMessage;->mKeys:[Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amazon/ebook/util/log/LogMessage;->mKeys:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/amazon/ebook/util/log/LogMessage;->mKeys:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/log/LogMessage;->mIdent:Ljava/lang/String;

    return-object v0
.end method

.method public getKeys()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/log/LogMessage;->mKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/amazon/ebook/util/log/LogMessage;->mIdent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/ebook/util/log/LogMessage;->mKeys:[Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amazon/ebook/util/log/LogMessage;->mKeys:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazon/ebook/util/log/LogMessage;->mIdent:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/ebook/util/log/LogMessage;->mKeys:[Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amazon/ebook/util/log/LogMessage;->mKeys:[Ljava/lang/String;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
