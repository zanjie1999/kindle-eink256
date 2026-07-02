.class Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3$1;
.super Ljava/lang/Object;
.source "LibrarySecondaryMenu.java"

# interfaces
.implements Lcom/amazon/kindle/library/ui/popup/DismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3$1;->this$1:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3$1;->this$1:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;

    iget-object v0, v0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->refine_button:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$700(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;II)V

    return-void
.end method
