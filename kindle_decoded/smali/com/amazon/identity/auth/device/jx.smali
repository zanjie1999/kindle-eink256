.class public Lcom/amazon/identity/auth/device/jx;
.super Lcom/amazon/identity/kcpsdk/common/WebResponseParser;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/identity/kcpsdk/common/WebResponseParser<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.jx"


# instance fields
.field private final rG:Lcom/amazon/identity/auth/device/mh;

.field private final rH:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/identity/kcpsdk/common/WebResponseParser<",
            "TT;>;"
        }
    .end annotation
.end field

.field private rI:Lcom/amazon/identity/kcpsdk/common/ParseError;

.field private rJ:Lcom/amazon/identity/kcpsdk/common/ParseError;

.field private rK:Z

.field private rL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "com.amazon.identity.kcpsdk.auth.AuthenticatedResponseHandler"

    .line 30
    invoke-direct {p0, v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/amazon/identity/auth/device/mh;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/mh;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rG:Lcom/amazon/identity/auth/device/mh;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rH:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;

    .line 35
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorNoError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rI:Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 36
    iput-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rJ:Lcom/amazon/identity/kcpsdk/common/ParseError;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/jx;->rK:Z

    return-void
.end method


# virtual methods
.method public a([BJ)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rJ:Lcom/amazon/identity/kcpsdk/common/ParseError;

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorNoError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/jx;->rL:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rG:Lcom/amazon/identity/auth/device/mh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/mh;->c([BJ)Z

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rI:Lcom/amazon/identity/kcpsdk/common/ParseError;

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorNoError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rH:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rH:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->b([BJ)Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/jx;->rI:Lcom/amazon/identity/kcpsdk/common/ParseError;

    :cond_1
    return-void
.end method

.method public b(Lcom/amazon/identity/auth/device/mb;)Z
    .locals 7

    .line 80
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rH:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->c(Lcom/amazon/identity/auth/device/mb;)V

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/mb;->iI()J

    move-result-wide v0

    const-string v2, "content-type"

    .line 93
    invoke-virtual {p1, v2}, Lcom/amazon/identity/auth/device/mb;->eI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_2

    const-wide/16 v2, 0xc8

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    if-eqz p1, :cond_2

    const-string/jumbo v2, "text/xml"

    .line 98
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/amazon/identity/auth/device/jx;->rL:Z

    if-eqz v2, :cond_3

    .line 102
    sget-object v2, Lcom/amazon/identity/auth/device/jx;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    aput-object p1, v3, v5

    const-string p1, "AuthenticatedResponseHandler: beginParse: Response could be an authentication error. Will try to parse as an authentication error. Status Code: %d Content-Type: %s"

    .line 102
    invoke-static {v2, p1, v3}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v5
.end method

.method public hf()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rH:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hf()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/jx;->rL:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hg()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/jx;->rK:Z

    return v0
.end method

.method public hh()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rH:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hh()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hi()V
    .locals 4

    .line 134
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/jx;->rL:Z

    if-eqz v0, :cond_7

    .line 1173
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rJ:Lcom/amazon/identity/kcpsdk/common/ParseError;

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorNoError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    .line 1180
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rG:Lcom/amazon/identity/auth/device/mh;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/mh;->iK()Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1188
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ls;->d(Lorg/w3c/dom/Document;)Lcom/amazon/identity/auth/device/lr;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1189
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/lr;->iw()Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    move-result-object v1

    sget-object v3, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeInternalError:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    if-eq v1, v3, :cond_5

    .line 2150
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2151
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Errors"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Error"

    .line 2156
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "Code"

    .line 2162
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 2168
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_MASTER_SERVICE_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 1192
    :cond_5
    sget-object v0, Lcom/amazon/identity/auth/device/jx;->TAG:Ljava/lang/String;

    const-string v1, "AuthenticatedResponseHandler: endParse: Server returned an authentication error. You can ignore any malformed response errors from the inner parser."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    .line 136
    :goto_2
    iput-boolean v2, p0, Lcom/amazon/identity/auth/device/jx;->rK:Z

    .line 139
    :cond_7
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rI:Lcom/amazon/identity/kcpsdk/common/ParseError;

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorNoError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rH:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hf()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rH:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;

    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hj()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rI:Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 145
    :cond_8
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/jx;->rK:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rI:Lcom/amazon/identity/kcpsdk/common/ParseError;

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jx;->rJ:Lcom/amazon/identity/kcpsdk/common/ParseError;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->b(Lcom/amazon/identity/kcpsdk/common/ParseError;)Z

    return-void
.end method
