.class final Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$2;
.super Ljava/lang/Object;
.source "SearchSortFilterMenu.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->setUpAccessibilityButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$2;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$2;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->dismiss()V

    return-void
.end method
