.class public final Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$Companion;
.super Ljava/lang/Object;
.source "HeaderWidgetController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final tryCreate(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;)Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;
    .locals 1

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    invoke-direct {v0, p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;-><init>(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;)V

    return-object v0
.end method
