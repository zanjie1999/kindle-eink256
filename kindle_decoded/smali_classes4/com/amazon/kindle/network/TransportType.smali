.class public abstract Lcom/amazon/kindle/network/TransportType;
.super Ljava/lang/Object;
.source "NetworkProperties.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/network/TransportType$Wan;,
        Lcom/amazon/kindle/network/TransportType$WiFi;,
        Lcom/amazon/kindle/network/TransportType$Ethernet;,
        Lcom/amazon/kindle/network/TransportType$Bluetooth;,
        Lcom/amazon/kindle/network/TransportType$Vpn;,
        Lcom/amazon/kindle/network/TransportType$LoWPAN;,
        Lcom/amazon/kindle/network/TransportType$None;,
        Lcom/amazon/kindle/network/TransportType$Other;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/network/TransportType;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/amazon/kindle/network/TransportType;-><init>(Ljava/lang/String;)V

    return-void
.end method
