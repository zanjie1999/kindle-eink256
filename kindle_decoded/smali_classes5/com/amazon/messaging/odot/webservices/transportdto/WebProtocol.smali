.class public final enum Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;
.super Ljava/lang/Enum;
.source "WebProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

.field public static final enum WebProtocolHttp:Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

.field public static final enum WebProtocolHttps:Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

    const/4 v1, 0x0

    const-string v2, "WebProtocolHttp"

    const-string v3, "http"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;->WebProtocolHttp:Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

    .line 10
    new-instance v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

    const/4 v2, 0x1

    const-string v3, "WebProtocolHttps"

    const-string v4, "https"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;->WebProtocolHttps:Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

    .line 8
    sget-object v4, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;->WebProtocolHttp:Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;->$VALUES:[Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;
    .locals 5

    .line 23
    invoke-static {}, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;->values()[Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 24
    invoke-virtual {v3}, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

    return-object p0
.end method

.method public static values()[Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;->$VALUES:[Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

    invoke-virtual {v0}, [Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;->mValue:Ljava/lang/String;

    return-object v0
.end method
