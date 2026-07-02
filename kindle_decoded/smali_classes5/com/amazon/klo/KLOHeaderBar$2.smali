.class Lcom/amazon/klo/KLOHeaderBar$2;
.super Ljava/lang/Object;
.source "KLOHeaderBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KLOHeaderBar;->loadContent(Landroidx/appcompat/app/ActionBarActivity;Ljava/util/List;ZILcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;Lcom/amazon/klo/IKLOHeaderBar$IKLOOnHeaderActionBarClickListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/KLOHeaderBar;

.field final synthetic val$dropdownWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KLOHeaderBar;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/klo/KLOHeaderBar$2;->this$0:Lcom/amazon/klo/KLOHeaderBar;

    iput-object p2, p0, Lcom/amazon/klo/KLOHeaderBar$2;->val$dropdownWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 102
    iget-object p1, p0, Lcom/amazon/klo/KLOHeaderBar$2;->this$0:Lcom/amazon/klo/KLOHeaderBar;

    invoke-virtual {p1, p3, p4, p5}, Lcom/amazon/klo/KLOHeaderBar;->onNavigationItemSelected(IJ)Z

    .line 103
    iget-object p1, p0, Lcom/amazon/klo/KLOHeaderBar$2;->val$dropdownWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
