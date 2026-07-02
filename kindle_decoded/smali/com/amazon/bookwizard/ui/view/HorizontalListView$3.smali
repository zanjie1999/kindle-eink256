.class Lcom/amazon/bookwizard/ui/view/HorizontalListView$3;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/ui/view/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$3;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$3;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method
