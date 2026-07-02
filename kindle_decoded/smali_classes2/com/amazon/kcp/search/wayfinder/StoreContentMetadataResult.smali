.class public Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;
.super Ljava/lang/Object;
.source "StoreContentMetadataResult.java"

# interfaces
.implements Lcom/amazon/kcp/library/ICoverCacheable;


# instance fields
.field final bookID:Lcom/amazon/kindle/model/content/IBookID;

.field private final imageExtension:Ljava/lang/String;

.field private final imageId:Ljava/lang/String;

.field final storeItem:Lcom/amazon/kcp/search/store/StoreContentMetadata;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/store/StoreContentMetadata;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->storeItem:Lcom/amazon/kcp/search/store/StoreContentMetadata;

    .line 22
    iput-object p2, p0, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    .line 23
    iput-object p3, p0, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->imageId:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->imageExtension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public getImageExtension()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->imageExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreItem()Lcom/amazon/kcp/search/store/StoreContentMetadata;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->storeItem:Lcom/amazon/kcp/search/store/StoreContentMetadata;

    return-object v0
.end method
