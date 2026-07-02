.class public Lcom/amazon/kcp/search/KFCSearchHistoryAdapter;
.super Lcom/amazon/kcp/library/FastListAdapter;
.source "KFCSearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/FastListAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAYOUT_RESOURCE_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->search_history_kfc_item:I

    sput v0, Lcom/amazon/kcp/search/KFCSearchHistoryAdapter;->LAYOUT_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/FastListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/search/KFCSearchHistoryAdapter;->bindView(Landroid/view/View;Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 32
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->search_item_query:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 33
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kcp/search/KFCSearchHistoryAdapter;->LAYOUT_RESOURCE_ID:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
