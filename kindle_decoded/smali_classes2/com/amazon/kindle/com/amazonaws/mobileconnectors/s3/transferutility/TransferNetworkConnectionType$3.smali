.class final enum Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$3;
.super Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
.source "TransferNetworkConnectionType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;-><init>(Ljava/lang/String;ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$1;)V

    return-void
.end method


# virtual methods
.method protected verify(Landroid/net/NetworkInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
