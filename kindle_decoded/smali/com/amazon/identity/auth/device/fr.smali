.class public abstract Lcom/amazon/identity/auth/device/fr;
.super Lcom/amazon/identity/auth/device/fn;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/fr$a;,
        Lcom/amazon/identity/auth/device/fr$c;,
        Lcom/amazon/identity/auth/device/fr$b;
    }
.end annotation


# instance fields
.field protected final bM:Ljava/lang/String;

.field protected final mW:Lcom/amazon/identity/auth/device/gy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/gy;Ljava/lang/String;)V
    .locals 0

    .line 161
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fn;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    .line 162
    iput-object p3, p0, Lcom/amazon/identity/auth/device/fr;->bM:Ljava/lang/String;

    .line 163
    iput-object p2, p0, Lcom/amazon/identity/auth/device/fr;->mW:Lcom/amazon/identity/auth/device/gy;

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/gy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/fr$a;
    .locals 10

    .line 235
    new-instance v9, Lcom/amazon/identity/auth/device/fr$a;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/amazon/identity/auth/device/fr$a;-><init>(Lcom/amazon/identity/auth/device/gy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public static a(Lcom/amazon/identity/auth/device/gy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/fr$b;
    .locals 1

    .line 207
    new-instance v0, Lcom/amazon/identity/auth/device/fr$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/fr$b;-><init>(Lcom/amazon/identity/auth/device/gy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/amazon/identity/auth/device/gy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/fr$c;
    .locals 7

    .line 219
    new-instance v6, Lcom/amazon/identity/auth/device/fr$c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/fr$c;-><init>(Lcom/amazon/identity/auth/device/gy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v6
.end method


# virtual methods
.method protected eF()Ljava/lang/String;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fr;->bM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ho;->c(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected eG()Ljava/lang/String;
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fr;->bM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ho;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected eK()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    invoke-super {p0}, Lcom/amazon/identity/auth/device/fn;->eK()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/auth/token"

    return-object v0
.end method

.method protected j(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "error_index"

    const/4 v1, 0x0

    .line 199
    invoke-static {p1, v0, v1}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
