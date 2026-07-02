.class final Lcom/amazon/identity/auth/device/gp$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/gp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final selection:Ljava/lang/String;

.field public final selectionArgs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gp$a;->selection:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/amazon/identity/auth/device/gp$a;->selectionArgs:[Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string v0, "?"

    .line 101
    invoke-virtual {p0, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-static {p3}, Lcom/amazon/identity/auth/device/jg;->h(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gp$a;->a(Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/amazon/identity/auth/device/gp$a;
    .locals 3

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "directedId"

    .line 58
    invoke-static {v0, v1, v2, p0}, Lcom/amazon/identity/auth/device/gp$a;->a(Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key"

    .line 59
    invoke-static {v0, v1, p0, p1}, Lcom/amazon/identity/auth/device/gp$a;->a(Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "value"

    const/4 p1, 0x0

    .line 60
    invoke-static {v0, v1, p0, p1}, Lcom/amazon/identity/auth/device/gp$a;->a(Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "namespace"

    .line 61
    invoke-static {v0, v1, p0, p2}, Lcom/amazon/identity/auth/device/gp$a;->a(Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "timestamp_key"

    .line 62
    invoke-static {v0, v1, p0, p3}, Lcom/amazon/identity/auth/device/gp$a;->a(Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;)V

    .line 64
    new-instance p0, Lcom/amazon/identity/auth/device/gp$a;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ih;->k(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 65
    invoke-interface {v1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/gp$a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method
