.class public final enum Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;
.super Ljava/lang/Enum;
.source "GoodreadsMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

.field public static final enum EA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

.field public static final enum NA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

.field public static final enum SA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;


# instance fields
.field public final originName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    const/4 v1, 0x0

    const-string v2, "SA"

    const-string v3, "StartActions"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->SA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    .line 33
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    const/4 v2, 0x1

    const-string v3, "EA"

    const-string v4, "EndActions"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->EA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    .line 34
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    const/4 v3, 0x2

    const-string v4, "NA"

    const-string v5, "None"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->NA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    .line 31
    sget-object v5, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->SA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->EA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->$VALUES:[Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->originName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->$VALUES:[Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    invoke-virtual {v0}, [Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    return-object v0
.end method
