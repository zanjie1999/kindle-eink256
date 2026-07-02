.class public Lcom/amazon/versioning/data/UpdatedContentItem;
.super Ljava/lang/Object;
.source "UpdatedContentItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final asin:Ljava/lang/String;

.field private final embeddedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final revisionId:Ljava/lang/String;

.field private final updateTime:Ljava/lang/Long;


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/versioning/data/UpdatedContentItem;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getEmbeddedIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/amazon/versioning/data/UpdatedContentItem;->embeddedIds:Ljava/util/Set;

    return-object v0
.end method

.method public getRevisionId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/versioning/data/UpdatedContentItem;->revisionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/Long;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/versioning/data/UpdatedContentItem;->updateTime:Ljava/lang/Long;

    return-object v0
.end method
