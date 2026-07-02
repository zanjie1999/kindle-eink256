.class public final Lcom/amazon/kcp/home/models/CardType$Companion;
.super Ljava/lang/Object;
.source "CardType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/models/CardType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/amazon/kcp/home/models/CardType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final typeForId(Ljava/lang/String;)Lcom/amazon/kcp/home/models/CardType;
    .locals 1

    const-string/jumbo v0, "templateId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/amazon/kcp/home/models/CardType;->access$getID_MAP$cp()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/home/models/CardType;

    return-object p1
.end method
