.class public Lcom/amazon/kcp/cover/ThumbnailData;
.super Ljava/lang/Object;
.source "ThumbnailData.java"


# instance fields
.field private itemCount:I

.field private topBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/kcp/cover/ThumbnailData;->topBooks:Ljava/util/List;

    .line 13
    iput p2, p0, Lcom/amazon/kcp/cover/ThumbnailData;->itemCount:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/amazon/kcp/cover/ThumbnailData;->itemCount:I

    return v0
.end method

.method public getTopBooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/cover/ThumbnailData;->topBooks:Ljava/util/List;

    return-object v0
.end method
