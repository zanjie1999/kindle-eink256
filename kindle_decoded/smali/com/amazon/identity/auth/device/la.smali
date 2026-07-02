.class public Lcom/amazon/identity/auth/device/la;
.super Lcom/amazon/identity/kcpsdk/common/WebResponseParser;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/ju;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/kcpsdk/common/WebResponseParser<",
        "Lcom/amazon/identity/auth/device/ky;",
        ">;",
        "Lcom/amazon/identity/auth/device/ju;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.la"


# instance fields
.field private final dM:Lcom/amazon/identity/auth/device/kc;

.field private final rG:Lcom/amazon/identity/auth/device/mh;

.field private tD:Lcom/amazon/identity/auth/device/ky;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "com.amazon.identity.kcpsdk.auth.RegisterDeviceResponseParser"

    .line 69
    invoke-direct {p0, v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/amazon/identity/auth/device/mh;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/mh;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/la;->rG:Lcom/amazon/identity/auth/device/mh;

    .line 72
    new-instance v0, Lcom/amazon/identity/auth/device/kc;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/kc;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/la;->dM:Lcom/amazon/identity/auth/device/kc;

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/amazon/identity/auth/device/la;->tD:Lcom/amazon/identity/auth/device/ky;

    return-void
.end method

.method private a(Lorg/w3c/dom/Document;)Lcom/amazon/identity/auth/device/ky;
    .locals 1

    .line 108
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/la;->b(Lorg/w3c/dom/Document;)Lcom/amazon/identity/auth/device/ky;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/la;->c(Lorg/w3c/dom/Document;)Lcom/amazon/identity/auth/device/ky;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/amazon/identity/kcpsdk/common/ParseError;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/kcpsdk/auth/ParseErrorException;
        }
    .end annotation

    .line 339
    sget-object v0, Lcom/amazon/identity/auth/device/la;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->getParserName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Seeing parse error  %s:%s!"

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/ParseErrorException;

    invoke-direct {v0, p1}, Lcom/amazon/identity/kcpsdk/auth/ParseErrorException;-><init>(Lcom/amazon/identity/kcpsdk/common/ParseError;)V

    throw v0
.end method

.method private au(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 280
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p2

    :cond_0
    if-eqz p1, :cond_1

    .line 285
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 287
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@kindle.com"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Lorg/w3c/dom/Document;)Lcom/amazon/identity/auth/device/ky;
    .locals 26

    move-object/from16 v0, p0

    .line 120
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 121
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "response"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v3, "serverTime"

    .line 128
    invoke-static {v1, v3}, Lcom/amazon/identity/auth/device/mi;->b(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 129
    invoke-static {v3}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 132
    new-instance v1, Lcom/amazon/identity/auth/device/ky;

    invoke-direct {v1, v3}, Lcom/amazon/identity/auth/device/ky;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v3, "adp_token"

    .line 135
    invoke-static {v1, v3}, Lcom/amazon/identity/auth/device/mi;->b(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v4, "device_private_key"

    .line 136
    invoke-static {v1, v4}, Lcom/amazon/identity/auth/device/mi;->b(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string/jumbo v5, "name"

    .line 137
    invoke-static {v1, v5}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "given_name"

    .line 138
    invoke-static {v1, v6}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    const-string/jumbo v7, "user_device_name"

    .line 139
    invoke-static {v1, v7}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    const-string v8, "alias"

    .line 140
    invoke-static {v1, v8}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    const-string v9, "kindle_email_address"

    .line 141
    invoke-static {v1, v9}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    const-string v10, "cookies"

    .line 142
    invoke-static {v1, v10}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    const-string/jumbo v11, "store_authentication_cookie"

    .line 143
    invoke-static {v1, v11}, Lcom/amazon/identity/auth/device/mi;->b(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    const-string/jumbo v12, "user_directed_id"

    .line 144
    invoke-static {v1, v12}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    const-string v13, "account_pool"

    .line 145
    invoke-static {v1, v13}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    const-string v14, "home_region"

    .line 146
    invoke-static {v1, v14}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    const-string v15, "country_of_residence"

    .line 147
    invoke-static {v1, v15}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    const-string/jumbo v2, "source_of_cor"

    .line 148
    invoke-static {v15, v2}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    move-object/from16 v16, v10

    const-string/jumbo v10, "preferred_marketplace"

    .line 152
    invoke-static {v1, v10}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    move-object/from16 v17, v11

    const-string v11, "identityTokenResponse"

    .line 153
    invoke-static {v1, v11}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    move-object/from16 v18, v11

    const-string v11, "device_info"

    .line 154
    invoke-static {v1, v11}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 156
    invoke-static {v11}, Lcom/amazon/identity/auth/device/mi;->d(Lorg/w3c/dom/Element;)Ljava/util/Map;

    move-result-object v11

    .line 158
    invoke-static {v3}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v20

    .line 159
    invoke-static {v4}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v22

    .line 160
    invoke-static {v5}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v23

    .line 161
    invoke-static {v6}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v24

    .line 162
    invoke-static {v7}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v21

    .line 163
    invoke-static {v8}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {v9}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-static {v12}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-static {v13}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v6

    .line 167
    invoke-static {v14}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v7

    .line 168
    invoke-static {v15}, Lcom/amazon/identity/auth/device/mi;->e(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v8

    .line 169
    invoke-static {v2}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v10}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v9

    .line 172
    invoke-direct {v0, v3, v4}, Lcom/amazon/identity/auth/device/la;->au(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-nez v22, :cond_2

    if-nez v23, :cond_2

    if-nez v21, :cond_2

    if-nez v20, :cond_2

    const/4 v3, 0x0

    return-object v3

    :cond_2
    const-string v3, "deviceCredentials"

    .line 180
    invoke-static {v1, v3}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 181
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ka;->a(Lorg/w3c/dom/Element;)Ljava/util/Map;

    move-result-object v1

    .line 183
    new-instance v3, Lcom/amazon/identity/auth/device/ky;

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v25}, Lcom/amazon/identity/auth/device/ky;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static/range {v18 .. v18}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 189
    sget-object v10, Lcom/amazon/identity/auth/device/la;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Received embedded Panda response: "

    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v10}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 190
    invoke-static {v4}, Lcom/amazon/identity/auth/device/lo;->eD(Ljava/lang/String;)Lcom/amazon/identity/auth/device/lo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 193
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/lo;->io()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/amazon/identity/auth/device/ky;->c(I)V

    .line 194
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/lo;->getAccessToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/amazon/identity/auth/device/ky;->p(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/lo;->fY()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/amazon/identity/auth/device/ky;->q(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/lo;->ip()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/identity/auth/device/ky;->c(Lorg/json/JSONArray;)V

    .line 200
    :cond_3
    invoke-static/range {v17 .. v17}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/identity/auth/device/ky;->er(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v3, v5}, Lcom/amazon/identity/auth/device/ky;->setDirectedId(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v3, v6}, Lcom/amazon/identity/auth/device/ky;->j(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3, v7}, Lcom/amazon/identity/auth/device/ky;->k(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v3, v8}, Lcom/amazon/identity/auth/device/ky;->l(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v3, v2}, Lcom/amazon/identity/auth/device/ky;->m(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v3, v9}, Lcom/amazon/identity/auth/device/ky;->n(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v3, v11}, Lcom/amazon/identity/auth/device/ky;->o(Ljava/util/Map;)V

    .line 209
    iget-object v2, v0, Lcom/amazon/identity/auth/device/la;->dM:Lcom/amazon/identity/auth/device/kc;

    move-object/from16 v4, v16

    invoke-virtual {v2, v4}, Lcom/amazon/identity/auth/device/kc;->b(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v2

    .line 210
    invoke-virtual {v3, v2}, Lcom/amazon/identity/auth/device/ky;->m(Ljava/util/List;)V

    .line 211
    invoke-virtual {v3, v1}, Lcom/amazon/identity/auth/device/ky;->n(Ljava/util/Map;)V

    return-object v3

    :cond_4
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/mb;[B)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/kcpsdk/auth/ParseErrorException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Cannot parse XML."

    .line 297
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/mb;->iI()J

    move-result-wide v1

    const/4 p1, 0x0

    const-wide/16 v3, 0x19c

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const-wide/16 v3, 0xc8

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const-wide/16 v3, 0x12c

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    sget-object p2, Lcom/amazon/identity/auth/device/la;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "com.amazon.identity.kcpsdk.auth.RegisterDeviceResponseParser"

    aput-object v3, v0, p1

    const/4 p1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "%s: HTTP Error: %d"

    invoke-static {p2, p1, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    sget-object p1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorHttpError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/la;->a(Lcom/amazon/identity/kcpsdk/common/ParseError;)V

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 306
    iget-object v1, p0, Lcom/amazon/identity/auth/device/la;->rG:Lcom/amazon/identity/auth/device/mh;

    array-length v2, p2

    int-to-long v2, v2

    invoke-virtual {v1, p2, v2, v3}, Lcom/amazon/identity/auth/device/mh;->c([BJ)Z

    .line 312
    :cond_2
    sget-object p2, Lcom/amazon/identity/auth/device/la;->TAG:Ljava/lang/String;

    const-string v1, "Request complete"

    invoke-static {p2, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object p2, p0, Lcom/amazon/identity/auth/device/la;->rG:Lcom/amazon/identity/auth/device/mh;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/mh;->iK()Lorg/w3c/dom/Document;

    move-result-object p2

    .line 1409
    :try_start_0
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1410
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 1411
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 1412
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    .line 1413
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v4

    .line 1414
    invoke-virtual {v4, v1, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1415
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1416
    sget-object v2, Lcom/amazon/identity/auth/device/la;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    new-array p1, p1, [Ljava/lang/Object;

    .line 1417
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1425
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/la;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1421
    :catch_1
    sget-object p1, Lcom/amazon/identity/auth/device/la;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-nez p2, :cond_3

    .line 319
    sget-object p1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/identity/kcpsdk/common/ParseError;

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/la;->a(Lcom/amazon/identity/kcpsdk/common/ParseError;)V

    goto :goto_2

    .line 323
    :cond_3
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/la;->a(Lorg/w3c/dom/Document;)Lcom/amazon/identity/auth/device/ky;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/la;->tD:Lcom/amazon/identity/auth/device/ky;

    .line 333
    :goto_2
    iget-object p1, p0, Lcom/amazon/identity/auth/device/la;->tD:Lcom/amazon/identity/auth/device/ky;

    return-object p1
.end method

.method public a([BJ)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/identity/auth/device/la;->rG:Lcom/amazon/identity/auth/device/mh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/mh;->c([BJ)Z

    return-void
.end method

.method c(Lorg/w3c/dom/Document;)Lcom/amazon/identity/auth/device/ky;
    .locals 7

    .line 218
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognized:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 222
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ls;->d(Lorg/w3c/dom/Document;)Lcom/amazon/identity/auth/device/lr;

    move-result-object v1

    .line 223
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lv;->e(Lorg/w3c/dom/Document;)Lcom/amazon/identity/auth/device/lu;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    .line 1243
    sget-object v0, Lcom/amazon/identity/auth/device/la$1;->tE:[I

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/lr;->iw()Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1258
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognizedFirs:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "PrimaryAccountDeregisteredWhenRegisterSecondary"

    .line 1254
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1255
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypePrimaryAccountDeregisteredWhenRegisterSecondary:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    .line 1252
    :cond_1
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInternal:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    .line 1250
    :cond_2
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDuplicateDeviceName:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    .line 1248
    :cond_3
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    .line 1246
    :cond_4
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeCustomerNotFound:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_9

    .line 1264
    sget-object v0, Lcom/amazon/identity/auth/device/la$1;->tF:[I

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/lu;->ix()Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    .line 1274
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognizedKindle:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    .line 1271
    :cond_6
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInternal:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    .line 1269
    :cond_7
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDuplicateDeviceName:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    .line 1267
    :cond_8
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 234
    :cond_9
    :goto_0
    sget-object v1, Lcom/amazon/identity/auth/device/la;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->getErrorString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "RegisterDeviceResponseParser: response received a %s error."

    invoke-static {v1, v3, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FIRS returned error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazon/identity/auth/device/mf;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gF()V

    .line 236
    new-instance p1, Lcom/amazon/identity/auth/device/kx;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/kx;-><init>(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)V

    .line 238
    new-instance v0, Lcom/amazon/identity/auth/device/ky;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/ky;-><init>(Lcom/amazon/identity/auth/device/kx;)V

    return-object v0
.end method

.method public g(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 5

    .line 357
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    const-string v1, "CannotGetError"

    if-eqz p1, :cond_0

    .line 372
    :try_start_1
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    return-object v1

    :cond_0
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_1

    return-object v1

    .line 385
    :cond_1
    new-instance v2, Lcom/amazon/identity/auth/device/mh;

    invoke-direct {v2}, Lcom/amazon/identity/auth/device/mh;-><init>()V

    .line 386
    array-length v3, p1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/amazon/identity/auth/device/mh;->c([BJ)Z

    .line 391
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/mh;->iK()Lorg/w3c/dom/Document;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    .line 396
    :cond_2
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ls;->d(Lorg/w3c/dom/Document;)Lcom/amazon/identity/auth/device/lr;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    .line 402
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/lr;->iw()Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic hh()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/la;->ib()Lcom/amazon/identity/auth/device/ky;

    move-result-object v0

    return-object v0
.end method

.method public hi()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/identity/auth/device/la;->rG:Lcom/amazon/identity/auth/device/mh;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/mh;->iK()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/identity/kcpsdk/common/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->b(Lcom/amazon/identity/kcpsdk/common/ParseError;)Z

    return-void

    .line 102
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/la;->a(Lorg/w3c/dom/Document;)Lcom/amazon/identity/auth/device/ky;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/la;->tD:Lcom/amazon/identity/auth/device/ky;

    return-void
.end method

.method public ib()Lcom/amazon/identity/auth/device/ky;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/identity/auth/device/la;->tD:Lcom/amazon/identity/auth/device/ky;

    return-object v0
.end method
