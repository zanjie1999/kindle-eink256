.class public abstract Lcom/amazon/identity/kcpsdk/common/WebResponseParser;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;
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
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.kcpsdk.common.WebResponseParser"


# instance fields
.field private final uJ:Ljava/lang/String;

.field private uK:Lcom/amazon/identity/kcpsdk/common/ParseError;

.field private uL:Lcom/amazon/identity/auth/device/mb;

.field private uM:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

.field private uN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->uJ:Ljava/lang/String;

    .line 30
    sget-object p1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorNoError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->uK:Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 31
    sget-object p1, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Before_Parse:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->uM:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    return-void
.end method

.method private a(Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;)V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->uM:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Before_Parse:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Begin_Parse:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_0

    .line 150
    sget-object p1, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s: beginParse has been called more than once."

    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->uM:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Before_Parse:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    if-ne v0, v1, :cond_2

    .line 156
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Parsing:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_1

    .line 158
    sget-object p1, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s: parseBodyChunk called before beginParse"

    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 162
    :cond_1
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Completed:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_5

    .line 164
    sget-object p1, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s: endParse called before beginParse"

    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 168
    :cond_2
    sget-object v1, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Begin_Parse:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    if-ne v0, v1, :cond_4

    .line 170
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Completed:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hf()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    iput-boolean v3, p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->uN:Z

    return-void

    .line 176
    :cond_3
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Parsing:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hf()Z

    move-result v0

    if-nez v0, :cond_5

    .line 178
    sget-object p1, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s: shouldParseBody is false. parseBodyChunk should not be called"

    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 182
    :cond_4
    sget-object v1, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Completed:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    if-ne v0, v1, :cond_5

    .line 184
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Parsing:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    if-ne p1, v0, :cond_5

    .line 186
    sget-object p1, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s: parseBodyChunk called after endParse"

    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 191
    :cond_5
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->uM:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    return-void
.end method


# virtual methods
.method protected abstract a([BJ)V
.end method

.method public b([BJ)Lcom/amazon/identity/kcpsdk/common/ParseError;
    .locals 4

    .line 55
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Parsing:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    invoke-direct {p0, v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->a(Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;)V

    .line 57
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorNoError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 59
    sget-object p1, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->TAG:Ljava/lang/String;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "%s: parseBodyChunk: called after another method returned a parse error."

    invoke-static {p1, p3, p2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->a([BJ)V

    .line 66
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object p1

    sget-object p2, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/identity/kcpsdk/common/ParseError;

    if-ne p1, p2, :cond_1

    .line 68
    sget-object p1, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->TAG:Ljava/lang/String;

    new-array p2, v3, [Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "%s: parseBodyChunk: Malformed response. confirm all received data is being properly passed to the parser, device capabilities are set properly, and no server-side behavior changes have occurred."

    .line 68
    invoke-static {p1, p3, p2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/amazon/identity/auth/device/mb;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected b(Lcom/amazon/identity/kcpsdk/common/ParseError;)Z
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->uK:Lcom/amazon/identity/kcpsdk/common/ParseError;

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorNoError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 120
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->uK:Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 123
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x2

    .line 124
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "%s: setParseError has been called more than once.  Was %s, Now %s."

    .line 120
    invoke-static {v0, v3, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->uK:Lcom/amazon/identity/kcpsdk/common/ParseError;

    return v2
.end method

.method public c(Lcom/amazon/identity/auth/device/mb;)V
    .locals 6

    .line 36
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Begin_Parse:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    invoke-direct {p0, v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->a(Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;)V

    .line 38
    iput-object p1, p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->uL:Lcom/amazon/identity/auth/device/mb;

    .line 40
    invoke-virtual {p0, p1}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->b(Lcom/amazon/identity/auth/device/mb;)Z

    move-result p1

    .line 42
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->uL:Lcom/amazon/identity/auth/device/mb;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/mb;->iI()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 45
    :cond_0
    sget-object v2, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "%s: HTTP Error: %d"

    invoke-static {v2, v0, v3}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    .line 48
    sget-object p1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorHttpError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->b(Lcom/amazon/identity/kcpsdk/common/ParseError;)Z

    :cond_1
    return-void
.end method

.method protected getParserName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->uJ:Ljava/lang/String;

    return-object v0
.end method

.method public hf()Z
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorHttpError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract hh()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract hi()V
.end method

.method public hj()Lcom/amazon/identity/kcpsdk/common/ParseError;
    .locals 5

    .line 78
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;->Completed:Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;

    invoke-direct {p0, v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->a(Lcom/amazon/identity/kcpsdk/common/WebResponseParser$WebResponseParserState;)V

    .line 80
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorNoError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 82
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s: endParse: called after another method returned a parse error."

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hi()V

    .line 89
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/identity/kcpsdk/common/ParseError;

    if-ne v0, v1, :cond_2

    .line 91
    iget-boolean v0, p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->uN:Z

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, "%s: endParse called before parseBodyChunk. Confirm that this is by design."

    .line 93
    invoke-static {v0, v4, v1}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_1
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    .line 100
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s: endParse: Malformed response. Confirm all received data is being properly passed to the parser, device capabilities are set properly, and no server-side behavior changes have occurred."

    .line 98
    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object v0

    return-object v0
.end method

.method public hk()Lcom/amazon/identity/kcpsdk/common/ParseError;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->uK:Lcom/amazon/identity/kcpsdk/common/ParseError;

    return-object v0
.end method
