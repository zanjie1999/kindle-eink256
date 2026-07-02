.class Lcom/amazon/bookwizard/service/GenreUserData;
.super Ljava/lang/Object;
.source "GenreUserData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/service/GenreUserData$GenreSelectionData;
    }
.end annotation


# instance fields
.field private genreSelection:Lcom/amazon/bookwizard/service/GenreUserData$GenreSelectionData;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/bookwizard/data/Genre;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/amazon/bookwizard/service/GenreUserData$GenreSelectionData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/bookwizard/service/GenreUserData$GenreSelectionData;-><init>(Ljava/util/Collection;Lcom/amazon/bookwizard/service/GenreUserData$1;)V

    iput-object v0, p0, Lcom/amazon/bookwizard/service/GenreUserData;->genreSelection:Lcom/amazon/bookwizard/service/GenreUserData$GenreSelectionData;

    return-void
.end method
