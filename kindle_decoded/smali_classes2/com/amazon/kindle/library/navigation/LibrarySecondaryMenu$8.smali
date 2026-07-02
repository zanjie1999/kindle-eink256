.class Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$8;
.super Ljava/lang/Object;
.source "LibrarySecondaryMenu.java"

# interfaces
.implements Lcom/amazon/kindle/library/ui/popup/DismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->createLibrarySortViewMenu(Landroid/view/ViewGroup;)Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$8;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$8;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sort_button:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$700(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;II)V

    return-void
.end method
