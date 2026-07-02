.class public Lcom/amazon/identity/auth/device/mb;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.mb"


# instance fields
.field private final hO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uI:J

.field private final uy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/mb;->hO:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/mb;->uy:Ljava/util/List;

    const-wide/16 v0, 0xc8

    .line 25
    iput-wide v0, p0, Lcom/amazon/identity/auth/device/mb;->uI:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/amazon/identity/auth/device/mb;->uI:J

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mb;->uy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mb;->hO:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 80
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/identity/auth/device/mb;->TAG:Ljava/lang/String;

    const-string p2, "WebResponseHeaders: addHeader: Header cannot be added. Name or value was null."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public eI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mb;->hO:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public iI()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/amazon/identity/auth/device/mb;->uI:J

    return-wide v0
.end method
