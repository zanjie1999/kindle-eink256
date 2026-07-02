.class public Lcom/amazon/identity/auth/device/fr$a;
.super Lcom/amazon/identity/auth/device/fr;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final ef:Ljava/lang/String;

.field private final mX:Ljava/lang/String;

.field private final mY:Ljava/lang/String;

.field private final mZ:Ljava/lang/String;

.field private final na:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/gy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0, p2, p1, p3}, Lcom/amazon/identity/auth/device/fr;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/gy;Ljava/lang/String;)V

    .line 134
    iput-object p4, p0, Lcom/amazon/identity/auth/device/fr$a;->mX:Ljava/lang/String;

    .line 135
    iput-object p5, p0, Lcom/amazon/identity/auth/device/fr$a;->mY:Ljava/lang/String;

    .line 136
    iput-object p6, p0, Lcom/amazon/identity/auth/device/fr$a;->mZ:Ljava/lang/String;

    .line 137
    iput-object p7, p0, Lcom/amazon/identity/auth/device/fr$a;->ef:Ljava/lang/String;

    .line 138
    iput-object p8, p0, Lcom/amazon/identity/auth/device/fr$a;->na:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected b(Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fr;->mW:Lcom/amazon/identity/auth/device/gy;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fr$a;->mX:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/fr$a;->mY:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/fr$a;->mZ:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/fr$a;->ef:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/fr$a;->na:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected eH()Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
