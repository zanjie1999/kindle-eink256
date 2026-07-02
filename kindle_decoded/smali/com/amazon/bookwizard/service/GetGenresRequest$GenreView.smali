.class public Lcom/amazon/bookwizard/service/GetGenresRequest$GenreView;
.super Lcom/amazon/bookwizard/service/ViewResponse;
.source "GetGenresRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetGenresRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenreView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/service/ViewResponse<",
        "Lcom/amazon/bookwizard/service/GetGenresRequest$GenreData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/amazon/bookwizard/service/ViewResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getGenres()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Genre;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/amazon/bookwizard/service/ViewResponse;->view:Lcom/amazon/bookwizard/service/ViewResponse$View;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amazon/bookwizard/service/ViewResponse$View;->data:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/amazon/bookwizard/service/GetGenresRequest$GenreData;

    invoke-static {v0}, Lcom/amazon/bookwizard/service/GetGenresRequest$GenreData;->access$000(Lcom/amazon/bookwizard/service/GetGenresRequest$GenreData;)Lcom/amazon/bookwizard/service/GetGenresRequest$GenreItemList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/bookwizard/service/ViewResponse;->view:Lcom/amazon/bookwizard/service/ViewResponse$View;

    iget-object v0, v0, Lcom/amazon/bookwizard/service/ViewResponse$View;->data:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/bookwizard/service/GetGenresRequest$GenreData;

    invoke-static {v0}, Lcom/amazon/bookwizard/service/GetGenresRequest$GenreData;->access$000(Lcom/amazon/bookwizard/service/GetGenresRequest$GenreData;)Lcom/amazon/bookwizard/service/GetGenresRequest$GenreItemList;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/bookwizard/service/GetGenresRequest$GenreItemList;->access$100(Lcom/amazon/bookwizard/service/GetGenresRequest$GenreItemList;)[Lcom/amazon/bookwizard/data/Genre;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/service/ViewResponse;->view:Lcom/amazon/bookwizard/service/ViewResponse$View;

    iget-object v0, v0, Lcom/amazon/bookwizard/service/ViewResponse$View;->data:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/bookwizard/service/GetGenresRequest$GenreData;

    invoke-static {v0}, Lcom/amazon/bookwizard/service/GetGenresRequest$GenreData;->access$000(Lcom/amazon/bookwizard/service/GetGenresRequest$GenreData;)Lcom/amazon/bookwizard/service/GetGenresRequest$GenreItemList;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/bookwizard/service/GetGenresRequest$GenreItemList;->access$100(Lcom/amazon/bookwizard/service/GetGenresRequest$GenreItemList;)[Lcom/amazon/bookwizard/data/Genre;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
