.class public final Lcom/amazon/kcp/home/models/voltron/SidekickBookEntityModel;
.super Ljava/lang/Object;
.source "SidekickModels.kt"


# instance fields
.field private final bookEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/BookEntity;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final getBookEntityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/BookEntity;",
            ">;"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/SidekickBookEntityModel;->bookEntityList:Ljava/util/List;

    return-object v0
.end method
