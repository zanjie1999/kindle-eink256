.class Lcom/amazon/klo/KLOHeaderBar$1;
.super Ljava/lang/Object;
.source "KLOHeaderBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KLOHeaderBar;->loadContent(Landroidx/appcompat/app/ActionBarActivity;Ljava/util/List;ZILcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;Lcom/amazon/klo/IKLOHeaderBar$IKLOOnHeaderActionBarClickListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dropdownButton:Landroid/view/View;

.field final synthetic val$dropdownWindow:Landroid/widget/PopupWindow;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KLOHeaderBar;Landroid/widget/PopupWindow;Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 0

    .line 87
    iput-object p2, p0, Lcom/amazon/klo/KLOHeaderBar$1;->val$dropdownWindow:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/amazon/klo/KLOHeaderBar$1;->val$dropdownButton:Landroid/view/View;

    iput-object p4, p0, Lcom/amazon/klo/KLOHeaderBar$1;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 91
    iget-object p1, p0, Lcom/amazon/klo/KLOHeaderBar$1;->val$dropdownWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/amazon/klo/KLOHeaderBar$1;->val$dropdownButton:Landroid/view/View;

    iget-object v1, p0, Lcom/amazon/klo/KLOHeaderBar$1;->val$res:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/klo/R$dimen;->klo_action_bar_dropdown_offset_x:I

    .line 92
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/amazon/klo/KLOHeaderBar$1;->val$res:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/klo/R$dimen;->klo_action_bar_dropdown_offset_y:I

    .line 93
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 91
    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
