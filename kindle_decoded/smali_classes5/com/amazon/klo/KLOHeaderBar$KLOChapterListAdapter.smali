.class Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "KLOHeaderBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/KLOHeaderBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KLOChapterListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/amazon/klo/KLOHeaderBar;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KLOHeaderBar;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter;->this$0:Lcom/amazon/klo/KLOHeaderBar;

    .line 149
    sget p1, Lcom/amazon/klo/R$layout;->klo_dropdown_item:I

    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 150
    iput-object p2, p0, Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 160
    iget-object p2, p0, Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 161
    sget v1, Lcom/amazon/klo/R$layout;->klo_dropdown_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 162
    new-instance p3, Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter$ViewHolder;-><init>(Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter;Lcom/amazon/klo/KLOHeaderBar$1;)V

    .line 163
    sget v1, Lcom/amazon/klo/R$id;->filter_checked:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    .line 164
    sget v1, Lcom/amazon/klo/R$id;->filter_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 166
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 169
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter$ViewHolder;

    .line 170
    iget-object v1, p3, Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter$ViewHolder;->label:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter;->this$0:Lcom/amazon/klo/KLOHeaderBar;

    invoke-static {v2}, Lcom/amazon/klo/KLOHeaderBar;->access$100(Lcom/amazon/klo/KLOHeaderBar;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter;->this$0:Lcom/amazon/klo/KLOHeaderBar;

    invoke-virtual {v1}, Lcom/amazon/klo/KLOHeaderBar;->getSelectedChapterPosition()I

    move-result v1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 173
    :goto_0
    iget-object p1, p3, Lcom/amazon/klo/KLOHeaderBar$KLOChapterListAdapter$ViewHolder;->checkmark:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method
