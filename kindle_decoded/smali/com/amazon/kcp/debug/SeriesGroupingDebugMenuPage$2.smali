.class Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$2;
.super Ljava/lang/Object;
.source "SeriesGroupingDebugMenuPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeSeriesCoverImageToggle(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;Landroid/widget/CheckBox;)V
    .locals 0

    .line 113
    iput-object p2, p0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$2;->val$cb:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$2;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p1}, Lcom/amazon/kcp/util/GroupContentUtils;->setSeriesCoverImageDebugEnabled(Z)V

    return-void
.end method
