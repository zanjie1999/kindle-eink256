.class public abstract Lcom/amazon/kindle/panels/PanelProvider;
.super Ljava/lang/Object;
.source "PanelProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final activity:Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/panels/PanelProviderState;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/PanelProviderState;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/panels/PanelProvider;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getListener()Lcom/amazon/kindle/panels/PanelListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public setCustomPanelItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/panels/IPanelCustomItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
