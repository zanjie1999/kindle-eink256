.class final Lcom/amazon/ea/model/LayoutDecider$2;
.super Ljava/lang/Object;
.source "LayoutDecider.java"

# interfaces
.implements Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/model/LayoutDecider;->getWidgetModel(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)Lcom/amazon/ea/model/widget/WidgetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory<",
        "Lcom/amazon/readingactions/ui/widget/BlurbCardController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;


# direct methods
.method constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/amazon/ea/model/LayoutDecider$2;->val$def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCreate()Lcom/amazon/readingactions/ui/widget/BlurbCardController;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/amazon/ea/model/LayoutDecider$2;->val$def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->tryCreate(Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;)Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tryCreate()Ljava/lang/Object;
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/amazon/ea/model/LayoutDecider$2;->tryCreate()Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    move-result-object v0

    return-object v0
.end method
