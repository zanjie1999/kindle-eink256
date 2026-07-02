.class Lcom/amazon/bookwizard/service/GenreUserData$GenreSelectionData;
.super Ljava/lang/Object;
.source "GenreUserData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GenreUserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenreSelectionData"
.end annotation


# instance fields
.field private selectedIds:[Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/bookwizard/data/Genre;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ItemSelectionWidgetUserData"

    .line 33
    iput-object v0, p0, Lcom/amazon/bookwizard/service/GenreUserData$GenreSelectionData;->type:Ljava/lang/String;

    .line 37
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/bookwizard/service/GenreUserData$GenreSelectionData;->selectedIds:[Ljava/lang/String;

    .line 40
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/bookwizard/data/Genre;

    .line 41
    iget-object v2, p0, Lcom/amazon/bookwizard/service/GenreUserData$GenreSelectionData;->selectedIds:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1}, Lcom/amazon/bookwizard/data/Genre;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    move v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lcom/amazon/bookwizard/service/GenreUserData$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/service/GenreUserData$GenreSelectionData;-><init>(Ljava/util/Collection;)V

    return-void
.end method
