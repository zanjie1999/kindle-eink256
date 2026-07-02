.class Lcom/amazon/bookwizard/genre/GenreController$4;
.super Ljava/lang/Object;
.source "GenreController.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/genre/GenreController;->downloadGenres()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/amazon/bookwizard/service/GetGenresRequest$GenreView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/genre/GenreController;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/genre/GenreController;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/amazon/bookwizard/genre/GenreController$4;->this$0:Lcom/amazon/bookwizard/genre/GenreController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/bookwizard/service/GetGenresRequest$GenreView;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenreController$4;->this$0:Lcom/amazon/bookwizard/genre/GenreController;

    invoke-static {v0}, Lcom/amazon/bookwizard/genre/GenreController;->access$000(Lcom/amazon/bookwizard/genre/GenreController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/GetGenresRequest$GenreView;->getRunningState()Lcom/amazon/bookwizard/service/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/data/DataProvider;->setRunningState(Lcom/amazon/bookwizard/service/State;)V

    .line 172
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenreController$4;->this$0:Lcom/amazon/bookwizard/genre/GenreController;

    invoke-static {v0}, Lcom/amazon/bookwizard/genre/GenreController;->access$000(Lcom/amazon/bookwizard/genre/GenreController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/GetGenresRequest$GenreView;->getGenres()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/data/DataProvider;->addGenres(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 168
    check-cast p1, Lcom/amazon/bookwizard/service/GetGenresRequest$GenreView;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/genre/GenreController$4;->onResponse(Lcom/amazon/bookwizard/service/GetGenresRequest$GenreView;)V

    return-void
.end method
