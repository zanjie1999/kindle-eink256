.class public final Lcom/amazon/kindle/network/TransportType$Ethernet;
.super Lcom/amazon/kindle/network/TransportType;
.source "NetworkProperties.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/network/TransportType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ethernet"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/network/TransportType$Ethernet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/amazon/kindle/network/TransportType$Ethernet;

    invoke-direct {v0}, Lcom/amazon/kindle/network/TransportType$Ethernet;-><init>()V

    sput-object v0, Lcom/amazon/kindle/network/TransportType$Ethernet;->INSTANCE:Lcom/amazon/kindle/network/TransportType$Ethernet;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "Ethernet"

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/network/TransportType;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
