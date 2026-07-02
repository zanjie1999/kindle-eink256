.class public final enum Lcom/amazon/kindle/messaging/OdotMessageField;
.super Ljava/lang/Enum;
.source "OdotMessageField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/messaging/OdotMessageField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/messaging/OdotMessageField;

.field public static final enum CRC:Lcom/amazon/kindle/messaging/OdotMessageField;

.field public static final enum CREATION_DATE_UTC:Lcom/amazon/kindle/messaging/OdotMessageField;

.field public static final enum ID:Lcom/amazon/kindle/messaging/OdotMessageField;

.field public static final enum PAYLOAD:Lcom/amazon/kindle/messaging/OdotMessageField;

.field public static final enum REQUESTER:Lcom/amazon/kindle/messaging/OdotMessageField;

.field public static final enum RETRIES:Lcom/amazon/kindle/messaging/OdotMessageField;

.field public static final enum RETRY_AFTER_UTC:Lcom/amazon/kindle/messaging/OdotMessageField;

.field public static final enum SIGNATURE:Lcom/amazon/kindle/messaging/OdotMessageField;

.field public static final enum STATUS:Lcom/amazon/kindle/messaging/OdotMessageField;

.field public static final enum TOKEN_ID:Lcom/amazon/kindle/messaging/OdotMessageField;

.field public static final enum TOPIC:Lcom/amazon/kindle/messaging/OdotMessageField;

.field public static final enum TRANSPORT:Lcom/amazon/kindle/messaging/OdotMessageField;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 7
    new-instance v0, Lcom/amazon/kindle/messaging/OdotMessageField;

    const/4 v1, 0x0

    const-string v2, "ID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/messaging/OdotMessageField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/messaging/OdotMessageField;->ID:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 8
    new-instance v0, Lcom/amazon/kindle/messaging/OdotMessageField;

    const/4 v2, 0x1

    const-string v3, "PAYLOAD"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/messaging/OdotMessageField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/messaging/OdotMessageField;->PAYLOAD:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 9
    new-instance v0, Lcom/amazon/kindle/messaging/OdotMessageField;

    const/4 v3, 0x2

    const-string v4, "TOPIC"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/messaging/OdotMessageField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/messaging/OdotMessageField;->TOPIC:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 10
    new-instance v0, Lcom/amazon/kindle/messaging/OdotMessageField;

    const/4 v4, 0x3

    const-string v5, "STATUS"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/messaging/OdotMessageField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/messaging/OdotMessageField;->STATUS:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 11
    new-instance v0, Lcom/amazon/kindle/messaging/OdotMessageField;

    const/4 v5, 0x4

    const-string v6, "CREATION_DATE_UTC"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/messaging/OdotMessageField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/messaging/OdotMessageField;->CREATION_DATE_UTC:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 12
    new-instance v0, Lcom/amazon/kindle/messaging/OdotMessageField;

    const/4 v6, 0x5

    const-string v7, "CRC"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/messaging/OdotMessageField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/messaging/OdotMessageField;->CRC:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 13
    new-instance v0, Lcom/amazon/kindle/messaging/OdotMessageField;

    const/4 v7, 0x6

    const-string v8, "SIGNATURE"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/messaging/OdotMessageField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/messaging/OdotMessageField;->SIGNATURE:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 14
    new-instance v0, Lcom/amazon/kindle/messaging/OdotMessageField;

    const/4 v8, 0x7

    const-string v9, "RETRIES"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/messaging/OdotMessageField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/messaging/OdotMessageField;->RETRIES:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 15
    new-instance v0, Lcom/amazon/kindle/messaging/OdotMessageField;

    const/16 v9, 0x8

    const-string v10, "TOKEN_ID"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/messaging/OdotMessageField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/messaging/OdotMessageField;->TOKEN_ID:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 16
    new-instance v0, Lcom/amazon/kindle/messaging/OdotMessageField;

    const/16 v10, 0x9

    const-string v11, "REQUESTER"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kindle/messaging/OdotMessageField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/messaging/OdotMessageField;->REQUESTER:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 17
    new-instance v0, Lcom/amazon/kindle/messaging/OdotMessageField;

    const/16 v11, 0xa

    const-string v12, "TRANSPORT"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kindle/messaging/OdotMessageField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/messaging/OdotMessageField;->TRANSPORT:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 18
    new-instance v0, Lcom/amazon/kindle/messaging/OdotMessageField;

    const/16 v12, 0xb

    const-string v13, "RETRY_AFTER_UTC"

    invoke-direct {v0, v13, v12}, Lcom/amazon/kindle/messaging/OdotMessageField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/messaging/OdotMessageField;->RETRY_AFTER_UTC:Lcom/amazon/kindle/messaging/OdotMessageField;

    const/16 v13, 0xc

    new-array v13, v13, [Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 6
    sget-object v14, Lcom/amazon/kindle/messaging/OdotMessageField;->ID:Lcom/amazon/kindle/messaging/OdotMessageField;

    aput-object v14, v13, v1

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->PAYLOAD:Lcom/amazon/kindle/messaging/OdotMessageField;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->TOPIC:Lcom/amazon/kindle/messaging/OdotMessageField;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->STATUS:Lcom/amazon/kindle/messaging/OdotMessageField;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->CREATION_DATE_UTC:Lcom/amazon/kindle/messaging/OdotMessageField;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->CRC:Lcom/amazon/kindle/messaging/OdotMessageField;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->SIGNATURE:Lcom/amazon/kindle/messaging/OdotMessageField;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->RETRIES:Lcom/amazon/kindle/messaging/OdotMessageField;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->TOKEN_ID:Lcom/amazon/kindle/messaging/OdotMessageField;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->REQUESTER:Lcom/amazon/kindle/messaging/OdotMessageField;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->TRANSPORT:Lcom/amazon/kindle/messaging/OdotMessageField;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lcom/amazon/kindle/messaging/OdotMessageField;->$VALUES:[Lcom/amazon/kindle/messaging/OdotMessageField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/messaging/OdotMessageField;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kindle/messaging/OdotMessageField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/messaging/OdotMessageField;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/messaging/OdotMessageField;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kindle/messaging/OdotMessageField;->$VALUES:[Lcom/amazon/kindle/messaging/OdotMessageField;

    invoke-virtual {v0}, [Lcom/amazon/kindle/messaging/OdotMessageField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/messaging/OdotMessageField;

    return-object v0
.end method
