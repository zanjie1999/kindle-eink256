.class Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;
.super Ljava/lang/Object;
.source "GoodreadsShelfComponentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShelfOption"
.end annotation


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final shelfName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    iput-object p2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;->shelfName:Ljava/lang/String;

    .line 866
    iput-object p3, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;->displayName:Ljava/lang/String;

    return-object v0
.end method
