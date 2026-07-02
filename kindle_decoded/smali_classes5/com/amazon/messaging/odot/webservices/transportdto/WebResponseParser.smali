.class public abstract Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;
.super Ljava/lang/Object;
.source "WebResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCurrentState:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

.field private mParseBodyChunkWasMaybeNeeded:Z

.field private mParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

.field private final mParserName:Ljava/lang/String;

.field private mWebResponseHeaders:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->mParserName:Ljava/lang/String;

    .line 32
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorNoError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->mParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    .line 33
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;->Before_Parse:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->mCurrentState:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    return-void
.end method

.method private checkAndChangeState(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->mCurrentState:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;->Before_Parse:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;->Begin_Parse:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "%s: beginParse has been called more than once."

    invoke-static {v0, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->mCurrentState:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;->Before_Parse:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    if-ne v0, v1, :cond_2

    .line 132
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;->Parsing:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "%s: parseBodyChunk called before beginParse"

    invoke-static {v0, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 137
    :cond_1
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;->Completed:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "%s: endParse called before beginParse"

    invoke-static {v0, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_2
    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;->Begin_Parse:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    if-ne v0, v1, :cond_4

    .line 142
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;->Completed:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->shouldParseBody()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->mParseBodyChunkWasMaybeNeeded:Z

    return-void

    .line 147
    :cond_3
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;->Parsing:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->shouldParseBody()Z

    move-result v0

    if-nez v0, :cond_5

    .line 148
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "%s: shouldParseBody is false. parseBodyChunk should not be called"

    invoke-static {v0, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_4
    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;->Completed:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    if-ne v0, v1, :cond_5

    .line 152
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;->Parsing:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_5

    .line 153
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "%s: parseBodyChunk called after endParse"

    invoke-static {v0, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 158
    :cond_5
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->mCurrentState:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    return-void
.end method


# virtual methods
.method public beginParse(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)V
    .locals 5

    .line 37
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;->Begin_Parse:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->checkAndChangeState(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;)V

    .line 39
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->mWebResponseHeaders:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->internalBeginParse(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)Z

    move-result p1

    .line 43
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->mWebResponseHeaders:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->getStatusCode()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 45
    :cond_0
    sget-object v2, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": HTTP Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 47
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorHttpError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    invoke-virtual {p0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->setParseError(Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;)Z

    :cond_1
    return-void
.end method

.method public endParse()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;
    .locals 2

    .line 73
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;->Completed:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->checkAndChangeState(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;)V

    .line 75
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorNoError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    if-eq v0, v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s: endParse: called after another method returned a parse error."

    invoke-static {v1, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->internalEndParse()V

    .line 83
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorMalformedBody:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    if-ne v0, v1, :cond_2

    .line 84
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->mParseBodyChunkWasMaybeNeeded:Z

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s: endParse called before parseBodyChunk. Confirm that this is by design."

    invoke-static {v1, v0}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s: endParse: Malformed response. Confirm all received data is being properly passed to the parser, device capabilities are set properly, and no server-side behavior changes have occurred."

    .line 88
    invoke-static {v1, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object v0

    return-object v0
.end method

.method public getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->mParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    return-object v0
.end method

.method public abstract getParsedResponse()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected getParserName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->mParserName:Ljava/lang/String;

    return-object v0
.end method

.method protected internalBeginParse(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract internalEndParse()V
.end method

.method protected abstract internalParseBodyChunk([BJ)V
.end method

.method public parseBodyChunk([BJ)Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;
    .locals 2

    .line 53
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;->Parsing:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;

    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->checkAndChangeState(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser$WebResponseParserState;)V

    .line 55
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorNoError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    if-eq v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "%s: parseBodyChunk: called after another method returned a parse error."

    invoke-static {p2, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->internalParseBodyChunk([BJ)V

    .line 63
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object p1

    sget-object p2, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorMalformedBody:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    if-ne p1, p2, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "%s: parseBodyChunk: Malformed response. confirm all received data is being properly passed to the parser, device capabilities are set properly, and no server-side behavior changes have occurred."

    .line 64
    invoke-static {p2, p1}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object p1

    return-object p1
.end method

.method protected setParseError(Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;)Z
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->mParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorNoError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    if-eq v0, v1, :cond_0

    .line 106
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": setParseError has been called more than once.  Was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->mParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->mParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    const/4 p1, 0x1

    return p1
.end method

.method public shouldParseBody()Z
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorHttpError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
