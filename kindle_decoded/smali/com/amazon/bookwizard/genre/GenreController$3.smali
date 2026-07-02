.class Lcom/amazon/bookwizard/genre/GenreController$3;
.super Ljava/util/HashMap;
.source "GenreController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/genre/GenreController;->onNotNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/genre/GenreController;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/genre/GenreController;)V
    .locals 1

    .line 152
    iput-object p1, p0, Lcom/amazon/bookwizard/genre/GenreController$3;->this$0:Lcom/amazon/bookwizard/genre/GenreController;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 153
    iget-object p1, p0, Lcom/amazon/bookwizard/genre/GenreController$3;->this$0:Lcom/amazon/bookwizard/genre/GenreController;

    invoke-static {p1}, Lcom/amazon/bookwizard/genre/GenreController;->access$000(Lcom/amazon/bookwizard/genre/GenreController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/DataProvider;->getPreferredGenres()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "GenresSelectedCount"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
