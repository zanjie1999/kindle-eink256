.class Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$2;
.super Ljava/lang/Object;
.source "LibrarySecondaryMenu.java"

# interfaces
.implements Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$FiltersBarTextChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->createFilterBarTextChangedListener()Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$FiltersBarTextChangeCallback;
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

    .line 170
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$2;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$2;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    iget-object v0, v0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->rootView:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->refine_menu_button_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$2;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    iget-object v2, v2, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->library_filter:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
