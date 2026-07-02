.class public Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;
.super Ljava/lang/Object;
.source "GoodreadsProfileEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

.field private final rating:I

.field private final reason:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

.field private final requestType:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

.field private final shelf:Ljava/lang/String;

.field private final success:Z


# direct methods
.method public constructor <init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;ILjava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;Z)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;ILjava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;ZLcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;ILjava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;ZLcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    .line 37
    iput p2, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->rating:I

    .line 38
    iput-object p3, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->shelf:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->requestType:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 40
    iput-boolean p5, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->success:Z

    .line 41
    iput-object p6, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->reason:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;Z)V
    .locals 7

    const/4 v2, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;ILjava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;ZLcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;ZLcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V
    .locals 7

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 32
    invoke-direct/range {v0 .. v6}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;ILjava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;ZLcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    return-void
.end method


# virtual methods
.method public getFailureReason()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->reason:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    return-object v0
.end method

.method public getGoodreadsInfo()Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->rating:I

    return v0
.end method

.method public getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->requestType:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    return-object v0
.end method

.method public getShelf()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->shelf:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->success:Z

    return v0
.end method
