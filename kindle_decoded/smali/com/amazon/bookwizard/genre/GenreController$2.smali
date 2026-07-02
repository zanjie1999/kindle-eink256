.class Lcom/amazon/bookwizard/genre/GenreController$2;
.super Ljava/util/HashMap;
.source "GenreController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/genre/GenreController;->onGenreSelected(Lcom/amazon/bookwizard/data/Genre;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/genre/GenreController;

.field final synthetic val$isPreferred:Z


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/genre/GenreController;Z)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/amazon/bookwizard/genre/GenreController$2;->this$0:Lcom/amazon/bookwizard/genre/GenreController;

    iput-boolean p2, p0, Lcom/amazon/bookwizard/genre/GenreController$2;->val$isPreferred:Z

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 143
    iget-boolean p1, p0, Lcom/amazon/bookwizard/genre/GenreController$2;->val$isPreferred:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "IsGenreSelected"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
