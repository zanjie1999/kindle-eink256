.class public final enum Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;
.super Ljava/lang/Enum;
.source "SPHParserError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

.field public static final enum SPHParserErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

.field public static final enum SPHParserErrorNoSchedule:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

.field public static final enum SPHParserErrorNone:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

.field public static final enum SPHParserErrorSPHVersionUnsupported:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

.field public static final enum SPHParserErrorTimeFormat:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

.field public static final enum SPHParserErrorUnknownType:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    const/4 v1, 0x0

    const-string v2, "SPHParserErrorMalformedBody"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    const/4 v2, 0x1

    const-string v3, "SPHParserErrorSPHVersionUnsupported"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorSPHVersionUnsupported:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    const/4 v3, 0x2

    const-string v4, "SPHParserErrorNoSchedule"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorNoSchedule:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    const/4 v4, 0x3

    const-string v5, "SPHParserErrorTimeFormat"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorTimeFormat:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    const/4 v5, 0x4

    const-string v6, "SPHParserErrorUnknownType"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorUnknownType:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    .line 11
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    const/4 v6, 0x5

    const-string v7, "SPHParserErrorNone"

    invoke-direct {v0, v7, v6}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorNone:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    .line 4
    sget-object v8, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorSPHVersionUnsupported:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorNoSchedule:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorTimeFormat:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorUnknownType:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    return-object v0
.end method
