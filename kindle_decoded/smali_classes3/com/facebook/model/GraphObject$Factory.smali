.class public final Lcom/facebook/model/GraphObject$Factory;
.super Ljava/lang/Object;
.source "GraphObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/model/GraphObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;,
        Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;,
        Lcom/facebook/model/GraphObject$Factory$ProxyBase;
    }
.end annotation


# static fields
.field private static final dateFormats:[Ljava/text/SimpleDateFormat;

.field private static final verifiedGraphObjectClasses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    .line 113
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/model/GraphObject$Factory;->dateFormats:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    .locals 0

    .line 111
    invoke-static {p0, p1}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 0

    .line 111
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 111
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TU;>;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")TU;"
        }
    .end annotation

    .line 300
    const-class v0, Ljava/lang/String;

    const-class v1, Lcom/facebook/model/GraphObject;

    const/4 v2, 0x0

    if-nez p0, :cond_3

    .line 301
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 303
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 305
    :cond_0
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 307
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 309
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 311
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 318
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 319
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object p0

    .line 325
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_5

    return-object p0

    .line 332
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 337
    const-class p2, Lorg/json/JSONObject;

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 340
    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p1, p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object p0

    return-object p0

    .line 342
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 345
    check-cast p0, Lcom/facebook/model/GraphObject;

    invoke-interface {p0, p1}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object p0

    return-object p0

    .line 348
    :cond_7
    new-instance p0, Lcom/facebook/FacebookGraphObjectException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t create GraphObject from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 350
    :cond_8
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_f

    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-class v1, Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-class v1, Lcom/facebook/model/GraphObjectList;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_2

    .line 373
    :cond_9
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 374
    const-class p2, Ljava/lang/Double;

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_b

    const-class p2, Ljava/lang/Float;

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_0

    .line 379
    :cond_a
    const-class p2, Ljava/lang/Number;

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_e

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "%d"

    .line 381
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_0
    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "%f"

    .line 377
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 384
    :cond_c
    const-class p2, Ljava/util/Date;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 385
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 386
    sget-object p2, Lcom/facebook/model/GraphObject$Factory;->dateFormats:[Ljava/text/SimpleDateFormat;

    array-length v0, p2

    :goto_1
    if-ge v2, v0, :cond_e

    aget-object v1, p2, v2

    .line 388
    :try_start_0
    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_d

    return-object v1

    :catch_0
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 400
    :cond_e
    new-instance p0, Lcom/facebook/FacebookGraphObjectException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t convert type"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_2
    if-eqz p2, :cond_12

    .line 356
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 358
    array-length p2, p1

    if-ne p2, v4, :cond_11

    aget-object p2, p1, v2

    instance-of p2, p2, Ljava/lang/Class;

    if-eqz p2, :cond_11

    .line 363
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Class;

    .line 365
    const-class p2, Lorg/json/JSONArray;

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 366
    check-cast p0, Lorg/json/JSONArray;

    .line 368
    invoke-static {p0, p1}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object p0

    return-object p0

    .line 371
    :cond_10
    new-instance p0, Lcom/facebook/FacebookGraphObjectException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t create Collection from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 360
    :cond_11
    new-instance p0, Lcom/facebook/FacebookGraphObjectException;

    const-string p1, "Expect collection properties to be of a type with exactly one generic parameter."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 353
    :cond_12
    new-instance p0, Lcom/facebook/FacebookGraphObjectException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t infer generic type of: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static convertCamelCaseToLowercaseWithUnderscores(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "([a-z])([A-Z])"

    const-string v1, "$1_$2"

    .line 405
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 406
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static create()Lcom/facebook/model/GraphObject;
    .locals 1

    .line 154
    const-class v0, Lcom/facebook/model/GraphObject;

    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 166
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    .locals 1

    .line 130
    const-class v0, Lcom/facebook/model/GraphObject;

    invoke-static {p0, v0}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 143
    invoke-static {p1, p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object p0

    return-object p0
.end method

.method private static createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .line 216
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->verifyCanProxyClass(Ljava/lang/Class;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 219
    new-instance v1, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    invoke-direct {v1, p1, p0}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 222
    const-class p0, Lcom/facebook/model/GraphObject;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/model/GraphObject;

    return-object p0
.end method

.method private static createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 228
    const-class v2, Ljava/util/Map;

    aput-object v2, v0, v1

    .line 229
    new-instance v1, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    const-class v2, Ljava/util/Map;

    invoke-direct {v1, p0, v2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 232
    const-class p0, Lcom/facebook/model/GraphObject;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static createList(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/facebook/model/GraphObjectList<",
            "TT;>;"
        }
    .end annotation

    .line 212
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0, p0}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object p0

    return-object p0
.end method

.method public static createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/facebook/model/GraphObjectList<",
            "TT;>;"
        }
    .end annotation

    .line 200
    new-instance v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;

    invoke-direct {v0, p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 410
    const-class v0, Lcom/facebook/model/GraphObject;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 414
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    check-cast p0, Lcom/facebook/model/GraphObject;

    .line 417
    invoke-interface {p0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 418
    :cond_1
    const-class v2, Lcom/facebook/model/GraphObjectList;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 419
    check-cast p0, Lcom/facebook/model/GraphObjectList;

    .line 420
    invoke-interface {p0}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    .line 421
    :cond_2
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 422
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 423
    check-cast p0, Ljava/lang/Iterable;

    .line 424
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 425
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 426
    check-cast v2, Lcom/facebook/model/GraphObject;

    invoke-interface {v2}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 428
    :cond_3
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_4
    return-object v1

    :cond_5
    return-object p0
.end method

.method private static declared-synchronized hasClassBeenVerified(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    const-class v0, Lcom/facebook/model/GraphObject$Factory;

    monitor-enter v0

    .line 239
    :try_start_0
    sget-object v1, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static hasSameId(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 176
    invoke-interface {p0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 182
    :cond_1
    invoke-interface {p0, v2}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 183
    invoke-interface {p1, v2}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 184
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_3

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static declared-synchronized recordClassHasBeenVerified(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-class v0, Lcom/facebook/model/GraphObject$Factory;

    monitor-enter v0

    .line 243
    :try_start_0
    sget-object v1, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static verifyCanProxyClass(Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 247
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->hasClassBeenVerified(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 256
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 257
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 258
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    .line 260
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 261
    const-class v7, Lcom/facebook/model/PropertyName;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    .line 263
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcom/facebook/model/GraphObject;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x3

    const/4 v9, 0x1

    if-ne v5, v9, :cond_3

    .line 266
    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v6, v9, :cond_3

    if-eqz v7, :cond_2

    .line 270
    const-class v4, Lcom/facebook/model/PropertyName;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/facebook/model/PropertyName;

    invoke-interface {v4}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_2
    const-string v5, "set"

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_5

    goto :goto_1

    :cond_3
    if-nez v5, :cond_5

    .line 277
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v6, v5, :cond_5

    if-eqz v7, :cond_4

    .line 281
    const-class v4, Lcom/facebook/model/PropertyName;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/facebook/model/PropertyName;

    invoke-interface {v4}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_4
    const-string v5, "get"

    .line 284
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    :cond_5
    new-instance p0, Lcom/facebook/FacebookGraphObjectException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Factory can\'t proxy method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 293
    :cond_6
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->recordClassHasBeenVerified(Ljava/lang/Class;)V

    return-void

    .line 252
    :cond_7
    new-instance v0, Lcom/facebook/FacebookGraphObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Factory can only wrap interfaces, not class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
