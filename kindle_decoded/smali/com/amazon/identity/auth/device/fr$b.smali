.class public Lcom/amazon/identity/auth/device/fr$b;
.super Lcom/amazon/identity/auth/device/fr;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/gy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p2, p1, p3}, Lcom/amazon/identity/auth/device/fr;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/gy;Ljava/lang/String;)V

    .line 40
    iput-object p4, p0, Lcom/amazon/identity/auth/device/fr$b;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected b(Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fr;->mW:Lcom/amazon/identity/auth/device/gy;

    const-string v1, "dms_token"

    const-string/jumbo v2, "source_token"

    const-string/jumbo v3, "refresh_token"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazon/identity/auth/device/gy;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected eH()Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
    .locals 3

    .line 46
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/fr;->bM:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fr$b;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->setPackageName(Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v0

    return-object v0
.end method
