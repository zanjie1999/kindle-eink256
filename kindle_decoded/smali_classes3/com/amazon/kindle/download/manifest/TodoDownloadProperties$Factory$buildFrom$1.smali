.class final Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory$buildFrom$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ManifestRequestParams.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory;->buildFrom(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/amazon/kindle/krx/messaging/ITodoItem;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory$buildFrom$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory$buildFrom$1;

    invoke-direct {v0}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory$buildFrom$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory$buildFrom$1;->INSTANCE:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory$buildFrom$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lcom/amazon/kindle/krx/messaging/ITodoItem;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory$buildFrom$1;->invoke(Lcom/amazon/kindle/krx/messaging/ITodoItem;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/krx/messaging/ITodoItem;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "$this$getBool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/16 v0, 0x31

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "1"

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_1
    return p1
.end method
