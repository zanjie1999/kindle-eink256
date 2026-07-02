.class public final Lcom/amazon/readingactions/ui/widget/BlurbCardController$Companion;
.super Ljava/lang/Object;
.source "BlurbCardController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BlurbCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final tryCreate(Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;)Lcom/amazon/readingactions/ui/widget/BlurbCardController;
    .locals 1

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-direct {v0, p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;-><init>(Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;)V

    return-object v0
.end method
