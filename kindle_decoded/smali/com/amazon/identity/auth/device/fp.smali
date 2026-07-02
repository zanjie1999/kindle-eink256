.class public Lcom/amazon/identity/auth/device/fp;
.super Lcom/amazon/identity/auth/device/fn;
.source "DCP"


# instance fields
.field private final eN:Ljava/lang/String;

.field private final eU:Ljava/lang/String;

.field private final eb:Landroid/os/Bundle;

.field private final mR:Lcom/amazon/identity/auth/device/gz;

.field private final mS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mU:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/amazon/identity/auth/device/gz;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gz;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fn;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    .line 41
    iput-object p2, p0, Lcom/amazon/identity/auth/device/fp;->eN:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/amazon/identity/auth/device/fp;->eU:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/amazon/identity/auth/device/fp;->mU:Ljava/lang/String;

    .line 44
    iput-object p8, p0, Lcom/amazon/identity/auth/device/fp;->eb:Landroid/os/Bundle;

    .line 46
    iput-object p3, p0, Lcom/amazon/identity/auth/device/fp;->mS:Ljava/util/Map;

    .line 47
    iput-object p5, p0, Lcom/amazon/identity/auth/device/fp;->mT:Ljava/util/Map;

    .line 49
    iput-object p7, p0, Lcom/amazon/identity/auth/device/fp;->mR:Lcom/amazon/identity/auth/device/gz;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/gz;)Lcom/amazon/identity/auth/device/fp;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/gz;",
            ")",
            "Lcom/amazon/identity/auth/device/fp;"
        }
    .end annotation

    .line 114
    new-instance v9, Lcom/amazon/identity/auth/device/fp;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/amazon/identity/auth/device/fp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/amazon/identity/auth/device/gz;Landroid/os/Bundle;)V

    return-object v9
.end method


# virtual methods
.method protected b(Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fp;->mR:Lcom/amazon/identity/auth/device/gz;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fp;->eN:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/fp;->mS:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/fp;->eU:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/fp;->mT:Ljava/util/Map;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/fp;->mU:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/fp;->eb:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/identity/auth/device/gz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected eF()Ljava/lang/String;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fp;->eN:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ho;->c(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected eG()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fp;->eN:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ho;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected eH()Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/auth/upgradeToken"

    return-object v0
.end method

.method protected j(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "error_index"

    const/4 v1, 0x0

    .line 99
    invoke-static {p1, v0, v1}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
