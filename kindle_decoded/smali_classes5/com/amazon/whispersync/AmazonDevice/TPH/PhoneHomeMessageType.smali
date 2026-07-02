.class public final enum Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;
.super Ljava/lang/Enum;
.source "PhoneHomeMessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

.field public static final enum PhoneHomeMessageTypeGoodBye:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

.field public static final enum PhoneHomeMessageTypeGoto:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

.field public static final enum PhoneHomeMessageTypeHello:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

.field public static final enum PhoneHomeMessageTypeNone:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

.field public static final enum PhoneHomeMessageTypePhoneHome:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

.field public static final enum PhoneHomeMessageTypePhoneHomeAck:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

.field public static final enum PhoneHomeMessageTypePhoneHomeNack:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

.field public static final enum PhoneHomeMessageTypeStillHere:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;


# instance fields
.field private mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    const/4 v1, 0x0

    const-string v2, "PhoneHomeMessageTypeHello"

    const-string v3, "Hello Packet"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypeHello:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    const/4 v2, 0x1

    const-string v3, "PhoneHomeMessageTypeGoto"

    const-string v4, "Goto Packet"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypeGoto:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    const/4 v3, 0x2

    const-string v4, "PhoneHomeMessageTypeStillHere"

    const-string v5, "StillHere Packet"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypeStillHere:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    const/4 v4, 0x3

    const-string v5, "PhoneHomeMessageTypePhoneHome"

    const-string v6, "PhoneHome Packet"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypePhoneHome:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    const/4 v5, 0x4

    const-string v6, "PhoneHomeMessageTypePhoneHomeAck"

    const-string v7, "PhoneHome Ack Packet"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypePhoneHomeAck:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    .line 11
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    const/4 v6, 0x5

    const-string v7, "PhoneHomeMessageTypePhoneHomeNack"

    const-string v8, "PhoneHome Nack Packet"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypePhoneHomeNack:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    .line 12
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    const/4 v7, 0x6

    const-string v8, "PhoneHomeMessageTypeGoodBye"

    const-string v9, "GoodBye Packet"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypeGoodBye:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    .line 13
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    const/4 v8, 0x7

    const-string v9, "PhoneHomeMessageTypeNone"

    const-string v10, "Unknown Packet"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypeNone:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    .line 4
    sget-object v10, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypeHello:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypeGoto:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypeStillHere:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypePhoneHome:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypePhoneHomeAck:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypePhoneHomeNack:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypeGoodBye:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

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

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->mMessage:Ljava/lang/String;

    return-object v0
.end method
