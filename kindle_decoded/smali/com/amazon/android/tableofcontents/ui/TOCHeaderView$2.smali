.class final Lcom/amazon/android/tableofcontents/ui/TOCHeaderView$2;
.super Ljava/lang/Object;
.source "TOCHeaderView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;-><init>(Landroid/content/Context;Lcom/amazon/android/tableofcontents/data/TOCHeader;Landroid/view/View$OnClickListener;Lcom/amazon/android/tableofcontents/TOCAttrs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $headerClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView$2;->$headerClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView$2;->$headerClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
