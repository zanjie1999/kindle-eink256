.class public final Lcom/facebook/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AccessToken$SerializationProxyV2;
    }
.end annotation


# static fields
.field private static final ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

.field private static final DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/facebook/AccessTokenSource;

.field private static final DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

.field private static final DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

.field private static final MAX_DATE:Ljava/util/Date;

.field private static final MIN_DATE:Ljava/util/Date;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final declinedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final expires:Ljava/util/Date;

.field private final lastRefresh:Ljava/util/Date;

.field private final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Lcom/facebook/AccessTokenSource;

.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/facebook/AccessToken;->MIN_DATE:Ljava/util/Date;

    .line 47
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/facebook/AccessToken;->MAX_DATE:Ljava/util/Date;

    .line 48
    sput-object v0, Lcom/facebook/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

    .line 49
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    .line 50
    sget-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    sput-object v0, Lcom/facebook/AccessToken;->DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/facebook/AccessTokenSource;

    .line 51
    sget-object v0, Lcom/facebook/AccessToken;->MIN_DATE:Ljava/util/Date;

    sput-object v0, Lcom/facebook/AccessToken;->ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_0
    if-nez p4, :cond_1

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 68
    :cond_1
    iput-object p2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    .line 69
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    .line 70
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/AccessToken;->declinedPermissions:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    .line 73
    iput-object p6, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    return-void
.end method

.method private appendPermissions(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, " permissions:"

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 335
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "["

    .line 337
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    const-string v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    .line 339
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method static createEmptyToken()Lcom/facebook/AccessToken;
    .locals 8

    .line 200
    new-instance v7, Lcom/facebook/AccessToken;

    sget-object v2, Lcom/facebook/AccessToken;->ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

    sget-object v5, Lcom/facebook/AccessTokenSource;->NONE:Lcom/facebook/AccessTokenSource;

    sget-object v6, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v7
.end method

.method static createFromCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .locals 8

    const-string v0, "com.facebook.TokenCachingStrategy.Permissions"

    .line 271
    invoke-static {p0, v0}, Lcom/facebook/AccessToken;->getPermissionsFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string v0, "com.facebook.TokenCachingStrategy.DeclinedPermissions"

    .line 272
    invoke-static {p0, v0}, Lcom/facebook/AccessToken;->getPermissionsFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 274
    new-instance v0, Lcom/facebook/AccessToken;

    const-string v1, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {p0, v1}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-static {p0}, Lcom/facebook/TokenCachingStrategy;->getSource(Landroid/os/Bundle;)Lcom/facebook/AccessTokenSource;

    move-result-object v6

    const-string v1, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-static {p0, v1}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0
.end method

.method static createFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .locals 3

    .line 209
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string v1, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    invoke-static {p0, v1, v0}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    const-string v1, "com.facebook.platform.extra.PERMISSIONS"

    .line 211
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "com.facebook.platform.extra.ACCESS_TOKEN"

    .line 212
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 214
    invoke-static {v1, v2, p0, v0, p1}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object p0

    return-object p0
.end method

.method static createFromRefresh(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid token source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string v1, "expires_in"

    invoke-static {p1, v1, v0}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    const-string v1, "access_token"

    .line 246
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    invoke-static {v1, v2, p1, v0, p0}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object p0

    return-object p0
.end method

.method static createFromTokenWithRefreshedPermissions(Lcom/facebook/AccessToken;Ljava/util/List;Ljava/util/List;)Lcom/facebook/AccessToken;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .line 255
    new-instance v7, Lcom/facebook/AccessToken;

    iget-object v1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    iget-object v5, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    iget-object v6, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v7
.end method

.method static createFromWebBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/facebook/AccessTokenSource;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "expires_in"

    invoke-static {p1, v1, v0}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    const-string v1, "access_token"

    .line 219
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "granted_scopes"

    .line 222
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ","

    if-nez v3, :cond_0

    .line 224
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    const-string v2, "denied_scopes"

    .line 226
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 228
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    :cond_1
    invoke-static {p0, v2, v1, v0, p2}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object p0

    return-object p0
.end method

.method private static createNew(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/facebook/AccessTokenSource;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .line 263
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    new-instance v0, Lcom/facebook/AccessToken;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0

    .line 264
    :cond_1
    :goto_0
    invoke-static {}, Lcom/facebook/AccessToken;->createEmptyToken()Lcom/facebook/AccessToken;

    move-result-object p0

    return-object p0
.end method

.method private static getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 407
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 408
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 409
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_0

    .line 410
    :cond_1
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 412
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_2

    .line 421
    new-instance p0, Ljava/util/Date;

    const-wide p1, 0x7fffffffffffffffL

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object p0

    .line 423
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long p0, p0, v3

    add-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :catch_0
    :cond_3
    return-object v0
.end method

.method static getPermissionsFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 282
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 287
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 396
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Cannot readObject, serialization proxy required"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private tokenToString()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 325
    :cond_0
    sget-object v0, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "ACCESS_TOKEN_REMOVED"

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 9

    .line 391
    new-instance v8, Lcom/facebook/AccessToken$SerializationProxyV2;

    iget-object v1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    iget-object v3, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    iget-object v4, p0, Lcom/facebook/AccessToken;->declinedPermissions:Ljava/util/List;

    iget-object v5, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    iget-object v6, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/AccessToken$SerializationProxyV2;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Lcom/facebook/AccessToken$1;)V

    return-object v8
.end method


# virtual methods
.method public getDeclinedPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/facebook/AccessToken;->declinedPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getLastRefresh()Ljava/util/Date;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getSource()Lcom/facebook/AccessTokenSource;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method isInvalid()Z
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method toCacheBundle()Landroid/os/Bundle;
    .locals 3

    .line 293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 295
    iget-object v1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    const-string v2, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    const-string v2, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {v0, v2, v1}, Lcom/facebook/TokenCachingStrategy;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "com.facebook.TokenCachingStrategy.Permissions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/AccessToken;->declinedPermissions:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "com.facebook.TokenCachingStrategy.DeclinedPermissions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 299
    iget-object v1, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    const-string v2, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 300
    iget-object v1, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    const-string v2, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-static {v0, v2, v1}, Lcom/facebook/TokenCachingStrategy;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{AccessToken"

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " token:"

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/facebook/AccessToken;->tokenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-direct {p0, v0}, Lcom/facebook/AccessToken;->appendPermissions(Ljava/lang/StringBuilder;)V

    const-string v1, "}"

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
