.class public Lcom/amazon/kindle/model/content/SideloadBookID;
.super Ljava/lang/Object;
.source "SideloadBookID.java"

# interfaces
.implements Lcom/amazon/kindle/model/content/IBookID;


# instance fields
.field private final absoluteFilePath:Ljava/lang/String;

.field private final lastModifiedTime:J

.field private final serializedForm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/model/content/SideloadBookID;->absoluteFilePath:Ljava/lang/String;

    .line 34
    iput-wide p2, p0, Lcom/amazon/kindle/model/content/SideloadBookID;->lastModifiedTime:J

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SDLDID0"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/kindle/model/content/SideloadBookID;->absoluteFilePath:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/amazon/kindle/model/content/SideloadBookID;->lastModifiedTime:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/model/content/SideloadBookID;->serializedForm:Ljava/lang/String;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "absoluteFilePath can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isSideloadBookId(Lcom/amazon/kindle/model/content/IBookID;)Z
    .locals 1

    .line 99
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SDLDID0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/SideloadBookID;
    .locals 4

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "SDLDID0"

    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ">"

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 109
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    .line 112
    :try_start_0
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :catch_0
    new-instance v2, Lcom/amazon/kindle/model/content/SideloadBookID;

    const/4 v3, 0x1

    aget-object p0, p0, v3

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/kindle/model/content/SideloadBookID;-><init>(Ljava/lang/String;J)V

    return-object v2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 78
    :cond_0
    instance-of v0, p1, Lcom/amazon/kindle/model/content/SideloadBookID;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 81
    :cond_1
    check-cast p1, Lcom/amazon/kindle/model/content/SideloadBookID;

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kindle/model/content/SideloadBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/SideloadBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAbsoluteFilePath()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/model/content/SideloadBookID;->absoluteFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/amazon/kindle/model/content/SideloadBookID;->lastModifiedTime:J

    return-wide v0
.end method

.method public getSerializedForm()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/model/content/SideloadBookID;->serializedForm:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 66
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/amazon/kindle/model/content/SideloadBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/model/content/SideloadBookID;->serializedForm:Ljava/lang/String;

    return-object v0
.end method
