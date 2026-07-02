.class Lcom/amazon/identity/auth/device/fg$9;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/fg;->getCustomerInformationHint(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ms:Ljava/lang/String;

.field final synthetic mt:Lcom/amazon/identity/auth/device/fg;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/fg;Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fg$9;->mt:Lcom/amazon/identity/auth/device/fg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/fg$9;->ms:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg$9;->mt:Lcom/amazon/identity/auth/device/fg;

    .line 1037
    iget-object v1, v0, Lcom/amazon/identity/auth/device/fg;->eq:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;

    const-string/jumbo v2, "mapJSCallback"

    if-nez v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fg$9;->ms:Ljava/lang/String;

    const-string/jumbo v3, "{\"error\":\"Not_Supported\"}"

    .line 2037
    invoke-virtual {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 298
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fg$9;->ms:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "hintTypes"

    .line 299
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 301
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 303
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;->valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg$9;->mt:Lcom/amazon/identity/auth/device/fg;

    .line 3037
    iget-object v0, v0, Lcom/amazon/identity/auth/device/fg;->eq:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;

    .line 305
    new-instance v3, Lcom/amazon/identity/auth/device/fg$9$1;

    invoke-direct {v3, p0}, Lcom/amazon/identity/auth/device/fg$9$1;-><init>(Lcom/amazon/identity/auth/device/fg$9;)V

    invoke-virtual {v0, v1, v3}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->a(Ljava/util/Set;Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 352
    :catch_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg$9;->mt:Lcom/amazon/identity/auth/device/fg;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fg$9;->ms:Ljava/lang/String;

    const-string/jumbo v3, "{\"error\":\"Invalid_Input_Param\"}"

    .line 4037
    invoke-virtual {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
