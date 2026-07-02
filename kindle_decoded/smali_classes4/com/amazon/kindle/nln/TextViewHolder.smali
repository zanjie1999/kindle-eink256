.class public Lcom/amazon/kindle/nln/TextViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TextViewHolder.java"


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/nln/TextViewHolder;->textView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/amazon/android/docviewer/ITOCItem;Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/nln/TextViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->updateTextView(Landroid/widget/TextView;Lcom/amazon/android/docviewer/ITOCItem;)V

    return-void
.end method
