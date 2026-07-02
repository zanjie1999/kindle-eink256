.class public Lcom/amazon/whispersync/communication/connection/ClosedConnectionReasonFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReasonForStatusCode(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unkown reason."

    goto :goto_0

    :pswitch_0
    const-string p0, "Server side closed this connection. No error happened."

    goto :goto_0

    :pswitch_1
    const-string p0, "Server side closed this connection because it detects a new connection to this device."

    goto :goto_0

    :pswitch_2
    const-string p0, "Server side closed this connection for communication error."

    goto :goto_0

    :pswitch_3
    const-string p0, "Websocket PingPong handle failure"

    goto :goto_0

    :pswitch_4
    const-string p0, "Websocket frame header incorrect."

    goto :goto_0

    :pswitch_5
    const-string p0, "IO Problem in the connection."

    goto :goto_0

    :pswitch_6
    const-string p0, "Extra data is read on the websocket connection."

    goto :goto_0

    :pswitch_7
    const-string p0, "Connection is closed on device side."

    goto :goto_0

    :pswitch_8
    const-string p0, "Connection closed for authentication failure. Please make sure you have registered an valid accout."

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectTrue(Z)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xfa1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
