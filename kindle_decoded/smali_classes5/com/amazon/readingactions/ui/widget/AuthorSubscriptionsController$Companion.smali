.class public final Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$Companion;
.super Ljava/lang/Object;
.source "AuthorSubscriptionsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final tryCreate(Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;)Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;
    .locals 1

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-direct {v0, p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;-><init>(Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;)V

    return-object v0
.end method
