.class public Lcom/amazon/identity/auth/device/token/MAPCookie;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final gK:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x8056234039L


# instance fields
.field private final mCookieData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPorts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/amazon/identity/auth/device/token/MAPCookie;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/token/MAPCookie;->gK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/token/MAPCookie;->mCookieData:Ljava/util/Map;

    const-string v1, "Name"

    .line 83
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/amazon/identity/auth/device/token/MAPCookie;->mCookieData:Ljava/util/Map;

    const-string v0, "Value"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object p1, p0, Lcom/amazon/identity/auth/device/token/MAPCookie;->mCookieData:Ljava/util/Map;

    const-string p2, "Domain"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Lcom/amazon/identity/auth/device/token/MAPCookie;->mCookieData:Ljava/util/Map;

    const-string p2, "Expires"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/amazon/identity/auth/device/token/MAPCookie;->mCookieData:Ljava/util/Map;

    const-string p2, "Path"

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Lcom/amazon/identity/auth/device/token/MAPCookie;->mCookieData:Ljava/util/Map;

    const-string p2, "DirectedId"

    invoke-interface {p1, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0, p7}, Lcom/amazon/identity/auth/device/token/MAPCookie;->setSecure(Z)V

    .line 92
    invoke-virtual {p0, p8}, Lcom/amazon/identity/auth/device/token/MAPCookie;->setHttpOnly(Z)V

    .line 94
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->fP()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/token/MAPCookie;->mCookieData:Ljava/util/Map;

    const-string v1, "Name"

    .line 62
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/amazon/identity/auth/device/token/MAPCookie;->mCookieData:Ljava/util/Map;

    const-string v0, "Value"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lcom/amazon/identity/auth/device/token/MAPCookie;->mCookieData:Ljava/util/Map;

    const-string p2, "DirectedId"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/amazon/identity/auth/device/token/MAPCookie;->mCookieData:Ljava/util/Map;

    const-string p2, "Domain"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p0, p5}, Lcom/amazon/identity/auth/device/token/MAPCookie;->setSecure(Z)V

    .line 68
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->fP()V

    return-void
.end method

.method private fP()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 112
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 113
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getDirectedId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 114
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Creating Cookie: %s , domain: %s , for id: %s from cookie data %s"

    .line 109
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public S(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/MAPCookie;->mCookieData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public cH(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Expires"

    .line 183
    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/token/MAPCookie;->S(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public fQ()Ljava/lang/String;
    .locals 5

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; path="

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "/"

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "; domain="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "; secure"

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->isHttpOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "; httponly"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "; expires="

    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 308
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Cookie %s expired : "

    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :cond_3
    invoke-static {}, Lcom/amazon/identity/auth/device/hx;->gA()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/MAPCookie;->mCookieData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDirectedId()Ljava/lang/String;
    .locals 1

    const-string v0, "DirectedId"

    .line 124
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    const-string v0, "Domain"

    .line 160
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .locals 3

    const-string v0, "Expires"

    .line 165
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/hx;->gA()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 174
    :catch_0
    sget-object v0, Lcom/amazon/identity/auth/device/token/MAPCookie;->gK:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dm(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Name"

    .line 188
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "Path"

    .line 193
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    const-string v0, "Value"

    .line 219
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHttpOnly()Z
    .locals 2

    const-string v0, "HttpOnly"

    .line 132
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 137
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    const-string v0, "Secure"

    .line 255
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/MAPCookie;->mCookieData:Ljava/util/Map;

    const-string v1, "Domain"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHttpOnly(Z)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/MAPCookie;->mCookieData:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "HttpOnly"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Path"

    .line 198
    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/token/MAPCookie;->S(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method protected setSecure(Z)V
    .locals 1

    .line 260
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Secure"

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/token/MAPCookie;->S(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
