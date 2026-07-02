.class public final enum Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
.super Ljava/lang/Enum;
.source "ParseError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

.field public static final enum ParseErrorHttpError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

.field public static final enum ParseErrorIllegalOperation:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

.field public static final enum ParseErrorInvalidParameters:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

.field public static final enum ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

.field public static final enum ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    const/4 v1, 0x0

    const-string v2, "ParseErrorNoError"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    const/4 v2, 0x1

    const-string v3, "ParseErrorInvalidParameters"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorInvalidParameters:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    const/4 v3, 0x2

    const-string v4, "ParseErrorHttpError"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorHttpError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    const/4 v4, 0x3

    const-string v5, "ParseErrorMalformedBody"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    const/4 v5, 0x4

    const-string v6, "ParseErrorIllegalOperation"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorIllegalOperation:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 4
    sget-object v7, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorInvalidParameters:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorHttpError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    return-object v0
.end method
