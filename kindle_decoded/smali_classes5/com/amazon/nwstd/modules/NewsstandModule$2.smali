.class Lcom/amazon/nwstd/modules/NewsstandModule$2;
.super Ljava/lang/Object;
.source "NewsstandModule.java"

# interfaces
.implements Lcom/amazon/kindle/factory/IKindleObjectProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/modules/NewsstandModule;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/factory/IKindleObjectProvider<",
        "Lcom/amazon/kindle/panels/PanelProvider<",
        "+",
        "Landroid/app/Activity;",
        ">;",
        "Lcom/amazon/kindle/panels/PanelProviderState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/modules/NewsstandModule;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/panels/PanelProviderState;)Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;
    .locals 2

    .line 150
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/PanelProviderState;->getStateType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "newsstand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 153
    :cond_0
    new-instance v0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;

    invoke-direct {v0, p1}, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;-><init>(Lcom/amazon/kindle/panels/PanelProviderState;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 145
    check-cast p1, Lcom/amazon/kindle/panels/PanelProviderState;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/modules/NewsstandModule$2;->get(Lcom/amazon/kindle/panels/PanelProviderState;)Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;

    move-result-object p1

    return-object p1
.end method
