.class public final enum Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;
.super Ljava/lang/Enum;
.source "WebProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

.field public static final enum WebProtocolHttp:Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

.field public static final enum WebProtocolHttps:Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    const/4 v1, 0x0

    const-string v2, "WebProtocolHttp"

    const-string v3, "http"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->WebProtocolHttp:Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    const/4 v2, 0x1

    const-string v3, "WebProtocolHttps"

    const-string v4, "https"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->WebProtocolHttps:Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    .line 4
    sget-object v4, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->WebProtocolHttp:Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;
    .locals 5

    .line 23
    invoke-static {}, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->values()[Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 25
    invoke-virtual {v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->getValue()Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->mValue:Ljava/lang/String;

    return-object v0
.end method
