.class Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3$1;
.super Ljava/lang/Object;
.source "TOCViewForStandAlone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3$1;->this$1:Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 173
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3$1;->this$1:Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;

    iget-object p1, p1, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    iget-object p1, p1, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
