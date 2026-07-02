.class public final Lcom/amazon/readingactions/ui/widget/BookGridController$Companion;
.super Ljava/lang/Object;
.source "BookGridController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BookGridController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final tryCreate(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)Lcom/amazon/readingactions/ui/widget/BookGridController;
    .locals 1

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-direct {v0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridController;-><init>(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)V

    return-object v0
.end method
