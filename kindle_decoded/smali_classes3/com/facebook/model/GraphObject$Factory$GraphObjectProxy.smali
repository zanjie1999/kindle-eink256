.class final Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
.super Lcom/facebook/model/GraphObject$Factory$ProxyBase;
.source "GraphObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/model/GraphObject$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GraphObjectProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/model/GraphObject$Factory$ProxyBase<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final CASTTOMAP_METHOD:Ljava/lang/String; = "asMap"

.field private static final CAST_METHOD:Ljava/lang/String; = "cast"

.field private static final CLEAR_METHOD:Ljava/lang/String; = "clear"

.field private static final CONTAINSKEY_METHOD:Ljava/lang/String; = "containsKey"

.field private static final CONTAINSVALUE_METHOD:Ljava/lang/String; = "containsValue"

.field private static final ENTRYSET_METHOD:Ljava/lang/String; = "entrySet"

.field private static final GETINNERJSONOBJECT_METHOD:Ljava/lang/String; = "getInnerJSONObject"

.field private static final GETPROPERTYASLIST_METHOD:Ljava/lang/String; = "getPropertyAsList"

.field private static final GETPROPERTYAS_METHOD:Ljava/lang/String; = "getPropertyAs"

.field private static final GETPROPERTY_METHOD:Ljava/lang/String; = "getProperty"

.field private static final GET_METHOD:Ljava/lang/String; = "get"

.field private static final ISEMPTY_METHOD:Ljava/lang/String; = "isEmpty"

.field private static final KEYSET_METHOD:Ljava/lang/String; = "keySet"

.field private static final PUTALL_METHOD:Ljava/lang/String; = "putAll"

.field private static final PUT_METHOD:Ljava/lang/String; = "put"

.field private static final REMOVEPROPERTY_METHOD:Ljava/lang/String; = "removeProperty"

.field private static final REMOVE_METHOD:Ljava/lang/String; = "remove"

.field private static final SETPROPERTY_METHOD:Ljava/lang/String; = "setProperty"

.field private static final SIZE_METHOD:Ljava/lang/String; = "size"

.field private static final VALUES_METHOD:Ljava/lang/String; = "values"


# instance fields
.field private final graphObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 503
    invoke-direct {p0, p1}, Lcom/facebook/model/GraphObject$Factory$ProxyBase;-><init>(Ljava/lang/Object;)V

    .line 504
    iput-object p2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    return-void
.end method

.method private createGraphObjectsFromParameters(Lcom/facebook/model/CreateGraphObject;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-eqz p1, :cond_2

    .line 629
    invoke-interface {p1}, Lcom/facebook/model/CreateGraphObject;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 631
    invoke-interface {p1}, Lcom/facebook/model/CreateGraphObject;->value()Ljava/lang/String;

    move-result-object p1

    .line 632
    const-class v0, Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    const-class v0, Lcom/facebook/model/GraphObject;

    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->createList(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    .line 635
    check-cast p2, Ljava/util/List;

    .line 636
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 637
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v2

    .line 638
    invoke-interface {v2, p1, v1}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 639
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 644
    :cond_0
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v0

    .line 645
    invoke-interface {v0, p1, p2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move-object p2, v0

    :cond_2
    return-object p2
.end method

.method private final proxyGraphObjectGettersAndSetters(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 655
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    .line 657
    const-class v2, Lcom/facebook/model/PropertyName;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/facebook/model/PropertyName;

    if-eqz v2, :cond_0

    .line 659
    invoke-interface {v2}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->convertCamelCaseToLowercaseWithUnderscores(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 665
    iget-object p2, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 667
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 669
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 671
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 672
    move-object v2, p1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 675
    :cond_1
    invoke-static {p2, v0, v2}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 680
    const-class v1, Lcom/facebook/model/CreateGraphObject;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/facebook/model/CreateGraphObject;

    const/4 v1, 0x0

    .line 681
    aget-object p2, p2, v1

    invoke-direct {p0, p1, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->createGraphObjectsFromParameters(Lcom/facebook/model/CreateGraphObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 685
    invoke-static {p1}, Lcom/facebook/model/GraphObject$Factory;->access$200(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 686
    iget-object p2, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v2

    .line 690
    :cond_3
    invoke-virtual {p0, p1}, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final proxyGraphObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 574
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cast"

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 577
    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 579
    iget-object p3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p1

    .line 583
    :cond_0
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p2, p1}, Lcom/facebook/model/GraphObject$Factory;->access$000(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "getInnerJSONObject"

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 585
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 586
    check-cast p1, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    .line 587
    iget-object p1, p1, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    return-object p1

    :cond_2
    const-string p1, "asMap"

    .line 588
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 589
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/facebook/model/GraphObject$Factory;->access$100(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "getProperty"

    .line 590
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 591
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "getPropertyAs"

    .line 592
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    .line 593
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 594
    aget-object p2, p3, v3

    check-cast p2, Ljava/lang/Class;

    .line 596
    invoke-static {p1, p2, v1}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, "getPropertyAsList"

    .line 597
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 598
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 599
    aget-object p2, p3, v3

    check-cast p2, Ljava/lang/Class;

    .line 601
    new-instance p3, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;

    invoke-direct {p3, p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;-><init>(Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;Ljava/lang/Class;)V

    .line 617
    const-class p2, Lcom/facebook/model/GraphObjectList;

    invoke-static {p1, p2, p3}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, "setProperty"

    .line 618
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 619
    invoke-direct {p0, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, "removeProperty"

    .line 620
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 621
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 625
    :cond_8
    invoke-virtual {p0, p2}, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final proxyMapMethods(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 530
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clear"

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 532
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/facebook/model/JsonUtil;->jsonObjectClear(Lorg/json/JSONObject;)V

    return-object v2

    :cond_0
    const-string v1, "containsKey"

    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 535
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    aget-object p2, p2, v3

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "containsValue"

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    aget-object p2, p2, v3

    invoke-static {p1, p2}, Lcom/facebook/model/JsonUtil;->jsonObjectContainsValue(Lorg/json/JSONObject;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "entrySet"

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 539
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/facebook/model/JsonUtil;->jsonObjectEntrySet(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v1, "get"

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 541
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    aget-object p2, p2, v3

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v1, "isEmpty"

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 543
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v1, "keySet"

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 545
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/facebook/model/JsonUtil;->jsonObjectKeySet(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v1, "put"

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 547
    invoke-direct {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v1, "putAll"

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 550
    aget-object p1, p2, v3

    instance-of p1, p1, Ljava/util/Map;

    if-eqz p1, :cond_9

    .line 552
    aget-object p1, p2, v3

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    .line 554
    :cond_9
    aget-object p1, p2, v3

    instance-of p1, p1, Lcom/facebook/model/GraphObject;

    if-eqz p1, :cond_a

    .line 555
    aget-object p1, p2, v3

    check-cast p1, Lcom/facebook/model/GraphObject;

    invoke-interface {p1}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object p1

    .line 559
    :goto_0
    iget-object p2, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p2, p1}, Lcom/facebook/model/JsonUtil;->jsonObjectPutAll(Lorg/json/JSONObject;Ljava/util/Map;)V

    :cond_a
    return-object v2

    :cond_b
    const-string v1, "remove"

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 562
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    aget-object p2, p2, v3

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-object v2

    :cond_c
    const-string p2, "size"

    .line 564
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 565
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_d
    const-string p2, "values"

    .line 566
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 567
    iget-object p1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/facebook/model/JsonUtil;->jsonObjectValues(Lorg/json/JSONObject;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 570
    :cond_e
    invoke-virtual {p0, p1}, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 694
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 695
    aget-object p1, p1, v1

    .line 696
    invoke-static {p1}, Lcom/facebook/model/GraphObject$Factory;->access$200(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 514
    const-class v0, Lcom/facebook/model/GraphObject;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 516
    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 517
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->proxyObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 518
    :cond_0
    const-class v2, Ljava/util/Map;

    if-ne v1, v2, :cond_1

    .line 519
    invoke-direct {p0, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyMapMethods(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    if-ne v1, v0, :cond_2

    .line 521
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyGraphObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 522
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 523
    invoke-direct {p0, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyGraphObjectGettersAndSetters(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 526
    :cond_3
    invoke-virtual {p0, p2}, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 509
    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$ProxyBase;->state:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "GraphObject{graphObjectClass=%s, state=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
