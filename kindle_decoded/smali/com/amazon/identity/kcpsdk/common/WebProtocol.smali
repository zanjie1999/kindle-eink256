.class public final enum Lcom/amazon/identity/kcpsdk/common/WebProtocol;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/kcpsdk/common/WebProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/kcpsdk/common/WebProtocol;

.field public static final enum WebProtocolHttp:Lcom/amazon/identity/kcpsdk/common/WebProtocol;

.field public static final enum WebProtocolHttps:Lcom/amazon/identity/kcpsdk/common/WebProtocol;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/WebProtocol;

    const/4 v1, 0x0

    const-string v2, "WebProtocolHttp"

    const-string v3, "http"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/kcpsdk/common/WebProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/WebProtocol;->WebProtocolHttp:Lcom/amazon/identity/kcpsdk/common/WebProtocol;

    .line 7
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/WebProtocol;

    const/4 v2, 0x1

    const-string v3, "WebProtocolHttps"

    const-string v4, "https"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/kcpsdk/common/WebProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/WebProtocol;->WebProtocolHttps:Lcom/amazon/identity/kcpsdk/common/WebProtocol;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/identity/kcpsdk/common/WebProtocol;

    .line 4
    sget-object v4, Lcom/amazon/identity/kcpsdk/common/WebProtocol;->WebProtocolHttp:Lcom/amazon/identity/kcpsdk/common/WebProtocol;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/identity/kcpsdk/common/WebProtocol;->$VALUES:[Lcom/amazon/identity/kcpsdk/common/WebProtocol;

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
    iput-object p3, p0, Lcom/amazon/identity/kcpsdk/common/WebProtocol;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/kcpsdk/common/WebProtocol;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/identity/kcpsdk/common/WebProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/kcpsdk/common/WebProtocol;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/kcpsdk/common/WebProtocol;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/WebProtocol;->$VALUES:[Lcom/amazon/identity/kcpsdk/common/WebProtocol;

    invoke-virtual {v0}, [Lcom/amazon/identity/kcpsdk/common/WebProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/kcpsdk/common/WebProtocol;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/common/WebProtocol;->mValue:Ljava/lang/String;

    return-object v0
.end method
