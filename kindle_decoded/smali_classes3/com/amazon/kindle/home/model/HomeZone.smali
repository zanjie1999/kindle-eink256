.class public abstract Lcom/amazon/kindle/home/model/HomeZone;
.super Ljava/lang/Object;
.source "HomeZones.kt"


# instance fields
.field private final transient actions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/home/model/HomeZone;->actions:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/amazon/kindle/home/model/HomeZone;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getActions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/amazon/kindle/home/model/HomeZone;->actions:Ljava/util/Map;

    return-object v0
.end method
