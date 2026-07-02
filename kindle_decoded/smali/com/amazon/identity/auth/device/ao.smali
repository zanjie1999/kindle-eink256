.class public Lcom/amazon/identity/auth/device/ao;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/as;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final dm:Landroid/net/Uri;

.field public static final dn:Landroid/net/Uri;

.field public static final do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aZ:Lcom/amazon/identity/auth/device/ds;

.field private final dp:Lcom/amazon/identity/auth/device/ec;

.field private final dq:Z

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://amazon_customer_attribute_store"

    .line 50
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ao;->dm:Landroid/net/Uri;

    const-string v0, "content://amazon_customer_attribute_store_directboot"

    .line 51
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ao;->dn:Landroid/net/Uri;

    const-string v0, "bundle_value"

    .line 54
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ao;->do:Ljava/util/List;

    .line 56
    const-class v0, Lcom/amazon/identity/auth/device/ao;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ao;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 3

    const-string/jumbo v0, "sso_platform"

    .line 69
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/ds;

    new-instance v1, Lcom/amazon/identity/auth/device/ec;

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/ec;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/identity/auth/device/ao;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ds;Lcom/amazon/identity/auth/device/ec;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;B)V
    .locals 2

    const-string/jumbo p2, "sso_platform"

    .line 78
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/identity/auth/device/ds;

    new-instance v0, Lcom/amazon/identity/auth/device/ec;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/ec;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 77
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/identity/auth/device/ao;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ds;Lcom/amazon/identity/auth/device/ec;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ds;Lcom/amazon/identity/auth/device/ec;Z)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ao;->o:Lcom/amazon/identity/auth/device/ed;

    .line 89
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ao;->aZ:Lcom/amazon/identity/auth/device/ds;

    .line 90
    iput-object p3, p0, Lcom/amazon/identity/auth/device/ao;->dp:Lcom/amazon/identity/auth/device/ec;

    .line 91
    iput-boolean p4, p0, Lcom/amazon/identity/auth/device/ao;->dq:Z

    return-void
.end method

.method public static a(Landroid/database/Cursor;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 326
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "bundle_value"

    .line 332
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/hz;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 335
    sget-object p0, Lcom/amazon/identity/auth/device/ao;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v0

    .line 339
    :cond_1
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ir;->dr(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 328
    :cond_2
    :goto_0
    sget-object p0, Lcom/amazon/identity/auth/device/ao;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "No results found from central store: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/ao;Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ao;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 311
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ao;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ds;->dz()Z

    move-result v1

    const-string v2, "key"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_0

    .line 315
    sget-object v1, Lcom/amazon/identity/auth/device/ao;->TAG:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/ao;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    const-string p1, "%s try get customer attribute in direct mode for %s"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object p1, p0, Lcom/amazon/identity/auth/device/ao;->dp:Lcom/amazon/identity/auth/device/ec;

    sget-object v1, Lcom/amazon/identity/auth/device/ao;->dn:Landroid/net/Uri;

    .line 317
    invoke-direct {p0, v1, v0}, Lcom/amazon/identity/auth/device/ao;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dj;

    move-result-object v0

    .line 316
    invoke-virtual {p1, v1, v0}, Lcom/amazon/identity/auth/device/ec;->a(Landroid/net/Uri;Lcom/amazon/identity/auth/device/dj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    return-object p1

    .line 319
    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/ao;->TAG:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/ao;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    const-string p1, "%s try get customer attribute out of direct mode fo %s"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lcom/amazon/identity/auth/device/ao;->dp:Lcom/amazon/identity/auth/device/ec;

    sget-object v1, Lcom/amazon/identity/auth/device/ao;->dm:Landroid/net/Uri;

    .line 321
    invoke-direct {p0, v1, v0}, Lcom/amazon/identity/auth/device/ao;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dj;

    move-result-object v0

    .line 320
    invoke-virtual {p1, v1, v0}, Lcom/amazon/identity/auth/device/ec;->a(Landroid/net/Uri;Lcom/amazon/identity/auth/device/dj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    return-object p1
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/identity/auth/device/dj<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance v0, Lcom/amazon/identity/auth/device/ao$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/identity/auth/device/ao$3;-><init>(Lcom/amazon/identity/auth/device/ao;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/ao;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/EnumSet;)Lorg/json/JSONObject;
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/amazon/identity/auth/device/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/EnumSet;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/EnumSet;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 351
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "command"

    .line 352
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "directedId"

    .line 353
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    iget-boolean p1, p0, Lcom/amazon/identity/auth/device/ao;->dq:Z

    if-eqz p1, :cond_0

    .line 358
    iget-object p1, p0, Lcom/amazon/identity/auth/device/ao;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/hr;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "accountType"

    .line 361
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "accountName"

    .line 362
    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "key"

    .line 365
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bundleInfo"

    .line 366
    invoke-static {p4}, Lcom/amazon/identity/auth/device/ir;->L(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p5, :cond_1

    const-string p1, "getOptions"

    .line 369
    invoke-static {p5}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->serializeList(Ljava/util/EnumSet;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 376
    sget-object p2, Lcom/amazon/identity/auth/device/ao;->TAG:Ljava/lang/String;

    const-string p3, "Error creating Customer Attribute IPC Command"

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/bl;Landroid/os/Bundle;ILjava/lang/String;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1266
    invoke-static {p0, p4, p5, p2, p3}, Lcom/amazon/identity/auth/device/am;->c(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const-string p2, "error_code_key"

    .line 1268
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1270
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void

    .line 1274
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/bl;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic ao()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/identity/auth/device/ao;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Landroid/os/Bundle;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;",
            ">;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance p6, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p6, p3}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 104
    new-instance p3, Lcom/amazon/identity/auth/device/ao$1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/amazon/identity/auth/device/ao$1;-><init>(Lcom/amazon/identity/auth/device/ao;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/bl;)V

    invoke-static {p3}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-object p6
.end method

.method public peekAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    const-string v0, "CustomerAttributeStore returned null"

    const-string/jumbo v2, "peekAttribute"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 161
    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/EnumSet;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 164
    sget-object p1, Lcom/amazon/identity/auth/device/ao;->TAG:Ljava/lang/String;

    const-string p2, "Failed to construct peek attribute command"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x4

    .line 170
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ao;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    .line 176
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;->GET_ATTRIBUTE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;

    invoke-static {p1, v0, p2, v0}, Lcom/amazon/identity/auth/device/am;->e(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Failed to call peekAttribute"

    .line 189
    sget-object v1, Lcom/amazon/identity/auth/device/ao;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;->GET_ATTRIBUTE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;

    invoke-static {p1, v0, p2, v0}, Lcom/amazon/identity/auth/device/am;->e(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v6, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v6, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 207
    new-instance p4, Lcom/amazon/identity/auth/device/ao$2;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/ao$2;-><init>(Lcom/amazon/identity/auth/device/ao;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/bl;)V

    invoke-static {p4}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-object v6
.end method
