.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;
.super Ljava/lang/Object;
.source "ObjectTagging.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private tagSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/Tag;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;->tagSet:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTagSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/Tag;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;->tagSet:Ljava/util/List;

    return-object v0
.end method
