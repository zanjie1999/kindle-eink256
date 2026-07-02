.class final Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$3;
.super Ljava/lang/Object;
.source "EndActionsLayoutResolver.kt"

# interfaces
.implements Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;->tryCreateWidget(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)Lcom/amazon/ea/model/widget/WidgetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory<",
        "Lcom/amazon/readingactions/ui/widget/BookGridController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $adapterWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;


# direct methods
.method constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$3;->$adapterWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final tryCreate()Lcom/amazon/readingactions/ui/widget/BookGridController;
    .locals 2

    .line 135
    sget-object v0, Lcom/amazon/readingactions/ui/widget/BookGridController;->Companion:Lcom/amazon/readingactions/ui/widget/BookGridController$Companion;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$3;->$adapterWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$Companion;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)Lcom/amazon/readingactions/ui/widget/BookGridController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tryCreate()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$3;->tryCreate()Lcom/amazon/readingactions/ui/widget/BookGridController;

    move-result-object v0

    return-object v0
.end method
