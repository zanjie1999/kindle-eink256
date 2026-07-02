.class final enum Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/kcpsdk/common/WebResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WebResponseParserState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

.field public static final enum Before_Parse:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

.field public static final enum Begin_Parse:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

.field public static final enum Completed:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

.field public static final enum Parsing:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    const/4 v1, 0x0

    const-string v2, "Before_Parse"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Before_Parse:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    .line 15
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    const/4 v2, 0x1

    const-string v3, "Begin_Parse"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Begin_Parse:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    .line 16
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    const/4 v3, 0x2

    const-string v4, "Parsing"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Parsing:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    .line 17
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    const/4 v4, 0x3

    const-string v5, "Completed"

    invoke-direct {v0, v5, v4}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Completed:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    .line 12
    sget-object v6, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Before_Parse:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Begin_Parse:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Parsing:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->$VALUES:[Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->$VALUES:[Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    invoke-virtual {v0}, [Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    return-object v0
.end method
