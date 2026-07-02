.class public Lamazon/whispersync/communication/connection/ConnectionClosedDetails;
.super Ljava/lang/Object;
.source "ConnectionClosedDetails.java"


# instance fields
.field private final mDetailsCode:I

.field private final mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lamazon/whispersync/communication/connection/ConnectionClosedDetails;->mDetailsCode:I

    .line 41
    iput-object p2, p0, Lamazon/whispersync/communication/connection/ConnectionClosedDetails;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDetailsCode()I
    .locals 1

    .line 51
    iget v0, p0, Lamazon/whispersync/communication/connection/ConnectionClosedDetails;->mDetailsCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lamazon/whispersync/communication/connection/ConnectionClosedDetails;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 72
    iget v1, p0, Lamazon/whispersync/communication/connection/ConnectionClosedDetails;->mDetailsCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lamazon/whispersync/communication/connection/ConnectionClosedDetails;->mMessage:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "detailsCode:%d, message:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
