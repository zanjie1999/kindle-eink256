.class public Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers;
.super Ljava/lang/Object;
.source "StdJdkSerializers.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/util/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers$ClassSerializer;,
        Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers$FileSerializer;,
        Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicReferenceSerializer;,
        Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicLongSerializer;,
        Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicIntegerSerializer;,
        Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicBooleanSerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/org/codehaus/jackson/map/util/Provider<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Class<",
        "*>;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provide()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ser/std/ToStringSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/ToStringSerializer;

    .line 35
    const-class v2, Ljava/net/URL;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-class v2, Ljava/net/URI;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-class v2, Ljava/util/Currency;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-class v2, Ljava/util/UUID;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-class v2, Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-class v2, Ljava/util/Locale;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-class v2, Ljava/util/Locale;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicReferenceSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-class v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicBooleanSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const-class v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicIntegerSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-class v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers$AtomicLongSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-class v1, Ljava/io/File;

    const-class v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers$FileSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-class v1, Ljava/lang/Class;

    const-class v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers$ClassSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/NullSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
