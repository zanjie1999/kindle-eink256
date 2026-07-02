.class public final Lcom/amazon/readingactions/ui/layout/EndActionsLayoutFactory$Companion;
.super Ljava/lang/Object;
.source "EndActionsLayoutFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/layout/EndActionsLayoutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/ea/model/layout/LayoutModel;
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ResolveLayout"

    .line 17
    invoke-static {p1}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 19
    :try_start_0
    sget-object p1, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver;->Companion:Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;

    invoke-virtual {p1, p2}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;->getLayout(Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/ea/model/layout/LayoutModel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    throw p1
.end method
