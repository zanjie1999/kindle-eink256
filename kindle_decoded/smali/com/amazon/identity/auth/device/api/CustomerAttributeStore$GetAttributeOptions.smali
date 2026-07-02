.class public final enum Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GetAttributeOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

.field public static final enum ForceRefresh:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# instance fields
.field private final mUniqueValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 302
    new-instance v0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    const/4 v1, 0x0

    const-string v2, "ForceRefresh"

    const-string v3, "forceRefresh"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->ForceRefresh:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    aput-object v0, v2, v1

    .line 296
    sput-object v2, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->$VALUES:[Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 308
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 309
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->mUniqueValue:Ljava/lang/String;

    return-void
.end method

.method public static deserializeList(Lorg/json/JSONArray;)Ljava/util/EnumSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;",
            ">;"
        }
    .end annotation

    .line 351
    const-class v0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    .line 352
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 356
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->getOptionFromValue(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 360
    invoke-static {}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Could not deseralize part of getAttribute options"

    invoke-static {v3, v4, v2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getOptionFromValue(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;
    .locals 5

    .line 376
    invoke-static {}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->values()[Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 378
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static serializeList(Ljava/util/EnumSet;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 333
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 334
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    .line 336
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;
    .locals 1

    .line 296
    const-class v0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;
    .locals 1

    .line 296
    sget-object v0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->$VALUES:[Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->mUniqueValue:Ljava/lang/String;

    return-object v0
.end method
