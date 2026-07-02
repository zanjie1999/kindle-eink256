.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/TransportProvider$DefaultTransportProvider;
.super Ljava/lang/Object;
.source "TransportProvider.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/TransportProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/TransportProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTransportProvider"
.end annotation


# instance fields
.field private final mRadioTransports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whisperbridge/Transport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whisperbridge/Transport;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 18
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/TransportProvider$DefaultTransportProvider;->mRadioTransports:Ljava/util/Map;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Radio Transports can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getTransportForRadio(Ljava/lang/String;)Lcom/amazon/whisperbridge/Transport;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/TransportProvider$DefaultTransportProvider;->mRadioTransports:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/Transport;

    return-object p1
.end method
