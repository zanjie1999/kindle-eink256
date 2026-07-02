.class public Lcom/amazon/kindle/log/KCPLogger;
.super Ljava/lang/Object;
.source "KCPLogger.java"

# interfaces
.implements Lcom/amazon/kindle/log/ILogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/kindle/log/KCPLogger$1;->$SwitchMap$com$amazon$kindle$log$ILogger$Level:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 47
    :pswitch_0
    invoke-static {p1, p3, p4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 44
    :pswitch_1
    invoke-static {p1, p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 40
    :pswitch_2
    invoke-static {p1, p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 37
    :pswitch_3
    invoke-static {p1, p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
