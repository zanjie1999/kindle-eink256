.class public Lcom/amazon/identity/auth/device/ai;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/s;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ai"


# instance fields
.field private final cG:Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ai;->cG:Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;

    return-void
.end method

.method static synthetic a(JLjava/util/Map;[B)Lcom/amazon/identity/auth/device/ky;
    .locals 2

    .line 1110
    new-instance v0, Lcom/amazon/identity/auth/device/la;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/la;-><init>()V

    .line 1123
    new-instance v1, Lcom/amazon/identity/auth/device/mb;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/mb;-><init>()V

    .line 1124
    invoke-virtual {v1, p0, p1}, Lcom/amazon/identity/auth/device/mb;->a(J)V

    .line 1126
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1128
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1129
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1130
    invoke-virtual {v1, p2, p1}, Lcom/amazon/identity/auth/device/mb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1111
    :cond_0
    invoke-virtual {v0, v1}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->c(Lcom/amazon/identity/auth/device/mb;)V

    .line 1112
    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hf()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1114
    array-length p0, p3

    int-to-long p0, p0

    invoke-virtual {v0, p3, p0, p1}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->b([BJ)Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 1116
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hj()Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 1118
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/la;->ib()Lcom/amazon/identity/auth/device/ky;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/t;Lcom/amazon/identity/auth/device/ej;)V
    .locals 6

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ai;->cG:Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ma;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 39
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ma;->iD()Ljava/lang/String;

    move-result-object v2

    .line 1095
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ma;->iE()I

    move-result p1

    .line 1096
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p1}, Ljava/util/HashMap;-><init>(I)V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_0

    .line 1099
    invoke-virtual {p2, p4}, Lcom/amazon/identity/auth/device/ma;->o(I)Ljava/lang/String;

    move-result-object v4

    .line 1100
    invoke-virtual {p2, p4}, Lcom/amazon/identity/auth/device/ma;->p(I)Ljava/lang/String;

    move-result-object v5

    .line 1101
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ma;->iF()[B

    move-result-object v4

    new-instance v5, Lcom/amazon/identity/auth/device/ai$1;

    invoke-direct {v5, p0, p3}, Lcom/amazon/identity/auth/device/ai$1;-><init>(Lcom/amazon/identity/auth/device/ai;Lcom/amazon/identity/auth/device/t;)V

    .line 38
    invoke-interface/range {v0 .. v5}, Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;->callGetCredentialsWebservice(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/dcp/sso/IWebserviceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 89
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/ai;->TAG:Ljava/lang/String;

    const-string p2, "RemoteException calling AmazonAccountAuthenticator.callGetCredentialsWebservice"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
