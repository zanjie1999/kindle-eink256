.class public Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# instance fields
.field private authors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bookTitle:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private physicalId:Ljava/lang/String;

.field private productDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthors()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;->authors:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getBookTitle()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;->bookTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPhysicalId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;->physicalId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDescription()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;->productDescription:Ljava/lang/String;

    return-object v0
.end method
