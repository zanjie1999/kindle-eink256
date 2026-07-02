.class public final Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;
.super Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MultipleAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionPackageMappingType"
.end annotation


# static fields
.field public static final JSON_KEY_SESSION_PACKAGE_MAPPING_OWNER:Ljava/lang/String; = "owner"

.field public static final JSON_KEY_SESSION_PACKAGE_MAPPING_PACKAGES:Ljava/lang/String; = "packages"

.field public static final JSON_KEY_SESSION_PACKAGE_MAPPING_REMOVE_ACTIVITY_CLASS_NAME:Ljava/lang/String; = "activity"


# instance fields
.field private final gG:Ljava/lang/String;

.field private final gH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gI:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 361
    invoke-static {p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->a(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.dcp.sso.property.account.extratokens.account_session_packages"

    invoke-direct {p0, v1, v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->gH:Ljava/util/Set;

    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->gG:Ljava/lang/String;

    .line 364
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->gI:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "com.amazon.dcp.sso.property.account.extratokens.account_session_packages"

    .line 369
    invoke-direct {p0, v1, v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->gH:Ljava/util/Set;

    .line 371
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->gG:Ljava/lang/String;

    .line 372
    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->gI:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 403
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "owner"

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "activity"

    .line 407
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 409
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 411
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "packages"

    .line 413
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 417
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unable to create session package mapping json."

    invoke-static {p1, p2, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createNewSessionPackageMapping(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 447
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    return-object v0

    .line 449
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot pass empty or null parameters when construct a new session package mapping."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createSessionPackageMappingInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    if-eqz p0, :cond_0

    .line 466
    new-instance v0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 464
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot pass null context when construct session package mapping."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSupportedOnThisPlatform(Landroid/content/Context;)Z
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 428
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    const-string/jumbo v0, "sso_platform"

    .line 430
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/ds;

    .line 431
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ds;->dr()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getCallingPackage()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->gG:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoveActivityClassName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->gI:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionPackages()Ljava/util/Set;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->gH:Ljava/util/Set;

    return-object v0
.end method
