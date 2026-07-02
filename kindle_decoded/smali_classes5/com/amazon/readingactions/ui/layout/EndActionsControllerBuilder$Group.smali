.class final Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;
.super Ljava/lang/Object;
.source "EndActionsControllerBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Group"
.end annotation


# instance fields
.field private final controller:Lcom/amazon/ea/ui/widget/WidgetController;

.field private final def:Lcom/amazon/ea/sidecar/def/layouts/GroupDef;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/sidecar/def/layouts/GroupDef;Lcom/amazon/ea/ui/widget/WidgetController;)V
    .locals 1

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;->def:Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;->controller:Lcom/amazon/ea/ui/widget/WidgetController;

    return-void
.end method


# virtual methods
.method public final getController()Lcom/amazon/ea/ui/widget/WidgetController;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;->controller:Lcom/amazon/ea/ui/widget/WidgetController;

    return-object v0
.end method

.method public final getDef()Lcom/amazon/ea/sidecar/def/layouts/GroupDef;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;->def:Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    return-object v0
.end method
