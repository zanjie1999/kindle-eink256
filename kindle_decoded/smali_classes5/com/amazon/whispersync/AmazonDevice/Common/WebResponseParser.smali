.class public abstract Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;
.super Ljava/lang/Object;
.source "WebResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;
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


# instance fields
.field private mCurrentState:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

.field private mParseBodyChunkWasMaybeNeeded:Z

.field private mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

.field private final mParserName:Ljava/lang/String;

.field private mWebResponseHeaders:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mParserName:Ljava/lang/String;

    .line 26
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 27
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;->Before_Parse:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mCurrentState:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    return-void
.end method

.method private checkAndChangeState(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mCurrentState:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;->Before_Parse:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;->Begin_Parse:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    .line 143
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "%s: beginParse has been called more than once."

    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mCurrentState:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;->Before_Parse:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    if-ne v0, v1, :cond_2

    .line 149
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;->Parsing:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "%s: parseBodyChunk called before beginParse"

    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 155
    :cond_1
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;->Completed:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_5

    new-array p1, v3, [Ljava/lang/Object;

    .line 157
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "%s: endParse called before beginParse"

    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 161
    :cond_2
    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;->Begin_Parse:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    if-ne v0, v1, :cond_4

    .line 163
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;->Completed:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->shouldParseBody()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    iput-boolean v3, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mParseBodyChunkWasMaybeNeeded:Z

    return-void

    .line 169
    :cond_3
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;->Parsing:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->shouldParseBody()Z

    move-result v0

    if-nez v0, :cond_5

    new-array p1, v3, [Ljava/lang/Object;

    .line 171
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "%s: shouldParseBody is false. parseBodyChunk should not be called"

    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 175
    :cond_4
    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;->Completed:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    if-ne v0, v1, :cond_5

    .line 177
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;->Parsing:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_5

    new-array p1, v3, [Ljava/lang/Object;

    .line 179
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "%s: parseBodyChunk called after endParse"

    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 184
    :cond_5
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mCurrentState:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    return-void
.end method


# virtual methods
.method public beginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V
    .locals 5

    .line 32
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;->Begin_Parse:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->checkAndChangeState(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;)V

    .line 34
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mWebResponseHeaders:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;

    .line 36
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->internalBeginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)Z

    move-result p1

    .line 38
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mWebResponseHeaders:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->getStatusCode()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%s: HTTP Error: %d"

    invoke-static {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    .line 44
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorHttpError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    :cond_1
    return-void
.end method

.method public endParse()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 4

    .line 74
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;->Completed:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->checkAndChangeState(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;)V

    .line 76
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s: endParse: called after another method returned a parse error."

    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->internalEndParse()V

    .line 85
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    if-ne v0, v1, :cond_2

    .line 87
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mParseBodyChunkWasMaybeNeeded:Z

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    .line 89
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s: endParse called before parseBodyChunk. Confirm that this is by design."

    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s: endParse: Malformed response. Confirm all received data is being properly passed to the parser, device capabilities are set properly, and no server-side behavior changes have occurred."

    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    return-object v0
.end method

.method public getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

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

    .line 126
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mParserName:Ljava/lang/String;

    return-object v0
.end method

.method protected getWebResponseHeaders()Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mWebResponseHeaders:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;

    return-object v0
.end method

.method protected internalBeginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract internalEndParse()V
.end method

.method protected abstract internalParseBodyChunk([BJ)V
.end method

.method public parseBodyChunk([BJ)Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 4

    .line 51
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;->Parsing:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->checkAndChangeState(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser$WebResponseParserState;)V

    .line 53
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    .line 55
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "%s: parseBodyChunk: called after another method returned a parse error."

    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->internalParseBodyChunk([BJ)V

    .line 62
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object p1

    sget-object p2, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    if-ne p1, p2, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "%s: parseBodyChunk: Malformed response. confirm all received data is being properly passed to the parser, device capabilities are set properly, and no server-side behavior changes have occurred."

    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object p1

    return-object p1
.end method

.method protected setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "%s: setParseError has been called more than once.  Was %s, Now %s."

    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    return v2
.end method

.method public shouldParseBody()Z
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorHttpError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
