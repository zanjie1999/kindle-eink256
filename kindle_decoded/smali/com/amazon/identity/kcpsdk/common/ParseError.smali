.class public final enum Lcom/amazon/identity/kcpsdk/common/ParseError;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/kcpsdk/common/ParseError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/kcpsdk/common/ParseError;

.field public static final enum ParseErrorHttpError:Lcom/amazon/identity/kcpsdk/common/ParseError;

.field public static final enum ParseErrorIllegalOperation:Lcom/amazon/identity/kcpsdk/common/ParseError;

.field public static final enum ParseErrorInvalidParameters:Lcom/amazon/identity/kcpsdk/common/ParseError;

.field public static final enum ParseErrorMalformedBody:Lcom/amazon/identity/kcpsdk/common/ParseError;

.field public static final enum ParseErrorNoError:Lcom/amazon/identity/kcpsdk/common/ParseError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 6
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/ParseError;

    const/4 v1, 0x0

    const-string v2, "ParseErrorNoError"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/kcpsdk/common/ParseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorNoError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 7
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/ParseError;

    const/4 v2, 0x1

    const-string v3, "ParseErrorInvalidParameters"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/kcpsdk/common/ParseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorInvalidParameters:Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 8
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/ParseError;

    const/4 v3, 0x2

    const-string v4, "ParseErrorHttpError"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/kcpsdk/common/ParseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorHttpError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 9
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/ParseError;

    const/4 v4, 0x3

    const-string v5, "ParseErrorMalformedBody"

    invoke-direct {v0, v5, v4}, Lcom/amazon/identity/kcpsdk/common/ParseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 10
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/ParseError;

    const/4 v5, 0x4

    const-string v6, "ParseErrorIllegalOperation"

    invoke-direct {v0, v6, v5}, Lcom/amazon/identity/kcpsdk/common/ParseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorIllegalOperation:Lcom/amazon/identity/kcpsdk/common/ParseError;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 4
    sget-object v7, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorNoError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorInvalidParameters:Lcom/amazon/identity/kcpsdk/common/ParseError;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorHttpError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/identity/kcpsdk/common/ParseError;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/identity/kcpsdk/common/ParseError;->$VALUES:[Lcom/amazon/identity/kcpsdk/common/ParseError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/kcpsdk/common/ParseError;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/identity/kcpsdk/common/ParseError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/kcpsdk/common/ParseError;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/kcpsdk/common/ParseError;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/ParseError;->$VALUES:[Lcom/amazon/identity/kcpsdk/common/ParseError;

    invoke-virtual {v0}, [Lcom/amazon/identity/kcpsdk/common/ParseError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/kcpsdk/common/ParseError;

    return-object v0
.end method
