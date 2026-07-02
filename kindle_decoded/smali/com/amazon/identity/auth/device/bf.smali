.class public Lcom/amazon/identity/auth/device/bf;
.super Lcom/amazon/identity/auth/device/ca;
.source "DCP"


# instance fields
.field private final mSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ca;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/amazon/identity/auth/device/bf;->mSignature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bn()Ljava/lang/String;
    .locals 1

    const-string v0, "/auth/authority/signature"

    return-object v0
.end method

.method public bo()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bf;->mSignature:Ljava/lang/String;

    const-string v2, "appSignature"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ca;->bB()Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
