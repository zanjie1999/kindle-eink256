.class public Lcom/amazon/kindle/yj/events/ContentMissingEvent;
.super Ljava/lang/Object;
.source "ContentMissingEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field assetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field bookId:Lcom/amazon/kindle/model/content/IBookID;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/yj/events/ContentMissingEvent;->assetIds:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcom/amazon/kindle/yj/events/ContentMissingEvent;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    return-void
.end method


# virtual methods
.method public getAssetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/yj/events/ContentMissingEvent;->assetIds:Ljava/util/List;

    return-object v0
.end method

.method public getBookId()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/yj/events/ContentMissingEvent;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
