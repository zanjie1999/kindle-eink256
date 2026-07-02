.class public final enum Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;
.super Ljava/lang/Enum;
.source "DcpAuthType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

.field public static final enum ADPAuthenticator:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

.field public static final enum OAuth:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    const/4 v1, 0x0

    const-string v2, "ADPAuthenticator"

    invoke-direct {v0, v2, v1}, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;->ADPAuthenticator:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    .line 18
    new-instance v0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    const/4 v2, 0x1

    const-string v3, "OAuth"

    invoke-direct {v0, v3, v2}, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;->OAuth:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    .line 9
    sget-object v4, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;->ADPAuthenticator:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;->$VALUES:[Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;->$VALUES:[Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    invoke-virtual {v0}, [Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    return-object v0
.end method
