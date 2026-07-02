.class public final Lcom/amazon/kindle/network/INetworkService_ExtensionsKt;
.super Ljava/lang/Object;
.source "INetworkService+Extensions.kt"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kindle/network/INetworkService;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/network/INetworkService_ExtensionsKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final getTodoTransportMethodForCurrentNetwork(Lcom/amazon/kindle/network/INetworkService;)Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
    .locals 3

    const-string v0, "$this$getTodoTransportMethodForCurrentNetwork"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lcom/amazon/kindle/network/INetworkService;->getActiveNetworkProperties()Lcom/amazon/kindle/network/NetworkProperties;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/amazon/kindle/network/NetworkProperties;->getTransportMethod()Lcom/amazon/kindle/network/TransportType;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 17
    :goto_0
    instance-of v2, v1, Lcom/amazon/kindle/network/TransportType$WiFi;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lcom/amazon/kindle/network/TransportType$Ethernet;

    if-eqz v2, :cond_2

    :goto_1
    sget-object v0, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->WIFI:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    goto :goto_3

    .line 18
    :cond_2
    instance-of v2, v1, Lcom/amazon/kindle/network/TransportType$Wan;

    if-eqz v2, :cond_3

    sget-object v0, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->WAN:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    goto :goto_3

    .line 19
    :cond_3
    instance-of v1, v1, Lcom/amazon/kindle/network/TransportType$None;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p0, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/amazon/kindle/network/NetworkProperties;->getTransportMethod()Lcom/amazon/kindle/network/TransportType;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_6

    .line 22
    sget-object v0, Lcom/amazon/kindle/network/INetworkService_ExtensionsKt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No appropriate ITodoItem.TransportMethod mapping for value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, Lcom/amazon/kindle/network/NetworkProperties;->getTransportMethod()Lcom/amazon/kindle/network/TransportType;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", returning ITodoItem.TransportMethod.WAN"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->WAN:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    :cond_6
    :goto_3
    return-object v0
.end method
