.class public final enum Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;
.super Ljava/lang/Enum;
.source "GoodreadsShelfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

.field public static final enum GET_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

.field public static final enum PUT_RATING_AND_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

.field public static final enum PUT_SHELF_AUTO:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

.field public static final enum PUT_SHELF_MANUAL:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

.field public static final enum PUT_SHELF_ODOT:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

.field public static final enum REMOVE_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;


# instance fields
.field public final isGetRequest:Z

.field public final metricName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 818
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "GET_SHELF"

    const-string v4, "GetShelfRequest"

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->GET_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 819
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    const-string v3, "PUT_SHELF_MANUAL"

    const-string v4, "PutShelfManualRequest"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_MANUAL:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 820
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    const/4 v3, 0x2

    const-string v4, "PUT_SHELF_AUTO"

    const-string v5, "PutShelfAutoRequest"

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_AUTO:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 821
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    const/4 v4, 0x3

    const-string v5, "PUT_RATING_AND_SHELF"

    const-string v6, "PutRatingAndShelfRequest"

    invoke-direct {v0, v5, v4, v2, v6}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_RATING_AND_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 822
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    const/4 v5, 0x4

    const-string v6, "PUT_SHELF_ODOT"

    const-string v7, "PutShelfOdotRequest"

    invoke-direct {v0, v6, v5, v2, v7}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_ODOT:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 823
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    const/4 v6, 0x5

    const-string v7, "REMOVE_SHELF"

    const-string v8, "RemoveShelfRequest"

    invoke-direct {v0, v7, v6, v2, v8}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->REMOVE_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 817
    sget-object v8, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->GET_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    aput-object v8, v7, v2

    sget-object v2, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_MANUAL:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    aput-object v2, v7, v1

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_AUTO:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_RATING_AND_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_ODOT:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->$VALUES:[Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 828
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 829
    iput-boolean p3, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->isGetRequest:Z

    .line 830
    iput-object p4, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->metricName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;
    .locals 1

    .line 817
    const-class v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;
    .locals 1

    .line 817
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->$VALUES:[Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    invoke-virtual {v0}, [Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    return-object v0
.end method
