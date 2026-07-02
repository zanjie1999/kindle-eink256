.class public final Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser;
.super Ljava/lang/Object;
.source "AuthorSubscriptionsWidgetDefParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser;->Companion:Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser$Companion;

    .line 19
    const-class v0, Lcom/amazon/ea/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;"
        }
    .end annotation

    sget-object v0, Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser;->Companion:Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser$Companion;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    move-result-object p0

    return-object p0
.end method
