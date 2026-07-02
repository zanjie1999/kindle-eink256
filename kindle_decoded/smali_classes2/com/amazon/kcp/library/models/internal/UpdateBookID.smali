.class public Lcom/amazon/kcp/library/models/internal/UpdateBookID;
.super Ljava/lang/Object;
.source "UpdateBookID.java"

# interfaces
.implements Lcom/amazon/kindle/model/content/IBookID;


# static fields
.field private static final DIVIDER:Ljava/lang/String; = "/"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final serializedForm:Ljava/lang/String;

.field private final type:Lcom/amazon/kcp/library/models/BookType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/UpdateBookID;->asin:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/UpdateBookID;->type:Lcom/amazon/kcp/library/models/BookType;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDTID0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/models/BookType;->getValue()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/UpdateBookID;->serializedForm:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/UpdateBookID;
    .locals 8

    if-eqz p0, :cond_3

    const-string v0, "UPDTID0"

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/"

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 92
    array-length v1, p0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 94
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 95
    invoke-static {}, Lcom/amazon/kcp/library/models/BookType;->values()[Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 96
    invoke-virtual {v6}, Lcom/amazon/kcp/library/models/BookType;->getValue()I

    move-result v7

    if-ne v1, v7, :cond_2

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    .line 98
    :goto_1
    array-length v4, p0

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_1

    if-le v3, v2, :cond_0

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 104
    :cond_1
    new-instance p0, Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/amazon/kcp/library/models/internal/UpdateBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 68
    :cond_0
    instance-of v0, p1, Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    if-eqz v0, :cond_1

    .line 69
    check-cast p1, Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/UpdateBookID;->serializedForm:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/library/models/internal/UpdateBookID;->serializedForm:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/UpdateBookID;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedForm()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/UpdateBookID;->serializedForm:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/UpdateBookID;->type:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/UpdateBookID;->serializedForm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/UpdateBookID;->serializedForm:Ljava/lang/String;

    return-object v0
.end method
