.class public Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;
.super Ljava/lang/Object;
.source "RawLayoutDef.java"


# instance fields
.field public final metricsTag:Ljava/lang/String;

.field public final options:Lorg/json/JSONObject;

.field public final requiredWidgets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final strings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Ljava/lang/String;

.field public final widgetPlacement:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lorg/json/JSONObject;Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->metricsTag:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->type:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->requiredWidgets:Ljava/util/Set;

    .line 51
    iput-object p4, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->widgetPlacement:Lorg/json/JSONObject;

    .line 52
    iput-object p5, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->strings:Ljava/util/Map;

    .line 53
    iput-object p6, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->options:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 64
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;

    if-eq v2, v3, :cond_2

    return v1

    .line 67
    :cond_2
    check-cast p1, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;

    .line 68
    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->type:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->metricsTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->metricsTag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->requiredWidgets:Ljava/util/Set;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->requiredWidgets:Ljava/util/Set;

    .line 69
    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->widgetPlacement:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->widgetPlacement:Lorg/json/JSONObject;

    .line 70
    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->strings:Ljava/util/Map;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->strings:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->options:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->options:Lorg/json/JSONObject;

    .line 71
    invoke-static {v2, p1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->type:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->requiredWidgets:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->widgetPlacement:Lorg/json/JSONObject;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->options:Lorg/json/JSONObject;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    invoke-static {p0}, Lcom/amazon/ea/guava/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->type:Ljava/lang/String;

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->metricsTag:Ljava/lang/String;

    const-string/jumbo v2, "metricsTag"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->requiredWidgets:Ljava/util/Set;

    const-string/jumbo v2, "requiredWidgets"

    .line 82
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->widgetPlacement:Lorg/json/JSONObject;

    const-string/jumbo v2, "widgetPlacement"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->strings:Ljava/util/Map;

    const-string/jumbo v2, "strings"

    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v2, "options"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    invoke-virtual {v0}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
