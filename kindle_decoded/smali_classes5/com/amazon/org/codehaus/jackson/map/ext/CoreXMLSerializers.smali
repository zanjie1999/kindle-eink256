.class public Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLSerializers;
.super Ljava/lang/Object;
.source "CoreXMLSerializers.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/util/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/org/codehaus/jackson/map/util/Provider<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Class<",
        "*>;",
        "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
        "*>;>;>;"
    }
.end annotation


# static fields
.field static final _serializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLSerializers;->_serializers:Ljava/util/HashMap;

    .line 44
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/ToStringSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/ToStringSerializer;

    .line 45
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLSerializers;->_serializers:Ljava/util/HashMap;

    const-class v2, Ljavax/xml/datatype/Duration;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLSerializers;->_serializers:Ljava/util/HashMap;

    const-class v2, Ljavax/xml/datatype/XMLGregorianCalendar;

    new-instance v3, Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;

    invoke-direct {v3}, Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLSerializers;->_serializers:Ljava/util/HashMap;

    const-class v2, Ljavax/xml/namespace/QName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provide()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;>;"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLSerializers;->_serializers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
