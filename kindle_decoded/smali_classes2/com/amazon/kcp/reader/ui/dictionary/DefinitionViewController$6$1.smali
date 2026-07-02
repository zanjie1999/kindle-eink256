.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6$1;
.super Ljava/lang/Object;
.source "DefinitionViewController.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6;)V
    .locals 0

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 475
    check-cast p2, Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 476
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method
