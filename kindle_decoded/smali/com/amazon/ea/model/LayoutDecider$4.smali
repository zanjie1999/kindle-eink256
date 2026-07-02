.class final Lcom/amazon/ea/model/LayoutDecider$4;
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
        "Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;


# direct methods
.method constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/amazon/ea/model/LayoutDecider$4;->val$def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCreate()Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/amazon/ea/model/LayoutDecider$4;->val$def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;)Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tryCreate()Ljava/lang/Object;
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/amazon/ea/model/LayoutDecider$4;->tryCreate()Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;

    move-result-object v0

    return-object v0
.end method
