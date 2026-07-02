.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "GetSMSAttributesRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->attributes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 230
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;

    if-nez v2, :cond_2

    return v1

    .line 232
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;

    .line 234
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    return v1

    .line 236
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 237
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public setAttributes(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->attributes:Ljava/util/List;

    return-void

    .line 113
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->attributes:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, "}"

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributes(Ljava/util/Collection;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;"
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->setAttributes(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withAttributes([Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;
    .locals 4

    .line 150
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->attributes:Ljava/util/List;

    .line 153
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 154
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;->attributes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
