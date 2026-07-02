.class Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;
.super Ljava/lang/Object;
.source "ReadingActionsGoodreadsShelfComponentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShelfOption"
.end annotation


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final shelfName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 830
    iput-object p2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;->shelfName:Ljava/lang/String;

    .line 831
    iput-object p3, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;->displayName:Ljava/lang/String;

    return-object v0
.end method
