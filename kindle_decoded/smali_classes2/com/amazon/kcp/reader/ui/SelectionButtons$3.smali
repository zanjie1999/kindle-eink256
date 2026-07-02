.class Lcom/amazon/kcp/reader/ui/SelectionButtons$3;
.super Ljava/lang/Object;
.source "SelectionButtons.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/SelectionButtons;->sortCustomButtonsByPriority(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/SelectionButtons;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/SelectionButtons;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;)I
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p2, v0}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I

    move-result p2

    int-to-double v0, p2

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    iget-object p2, p2, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1, p2}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I

    move-result p1

    int-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 346
    check-cast p1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    check-cast p2, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/SelectionButtons$3;->compare(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;)I

    move-result p1

    return p1
.end method
