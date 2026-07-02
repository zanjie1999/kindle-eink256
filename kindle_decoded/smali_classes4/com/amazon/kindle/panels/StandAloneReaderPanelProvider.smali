.class public Lcom/amazon/kindle/panels/StandAloneReaderPanelProvider;
.super Lcom/amazon/kindle/panels/BookPanelProvider;
.source "StandAloneReaderPanelProvider.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/panels/PanelProviderState;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/BookPanelProvider;-><init>(Lcom/amazon/kindle/panels/PanelProviderState;)V

    return-void
.end method


# virtual methods
.method protected getCustomPanelButtons(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/panels/PanelKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/panels/IPanelCustomItem;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-static {p1}, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;->getPanelRows(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
