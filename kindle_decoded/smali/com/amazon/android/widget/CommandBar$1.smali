.class Lcom/amazon/android/widget/CommandBar$1;
.super Ljava/lang/Object;
.source "CommandBar.java"

# interfaces
.implements Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/CommandBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/widget/CommandBar;


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/CommandBar;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBar$1;->this$0:Lcom/amazon/android/widget/CommandBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/amazon/android/widget/CommandActionView;Lcom/amazon/android/widget/IInternalWidgetItem;)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/amazon/android/widget/CommandBar$1;->this$0:Lcom/amazon/android/widget/CommandBar;

    invoke-static {p1}, Lcom/amazon/android/widget/CommandBar;->access$000(Lcom/amazon/android/widget/CommandBar;)Lcom/amazon/android/widget/CommandBar$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    instance-of v0, p2, Lcom/amazon/android/widget/IWidgetItem;

    if-eqz v0, :cond_0

    .line 88
    check-cast p2, Lcom/amazon/android/widget/IWidgetItem;

    invoke-interface {p1, p2}, Lcom/amazon/android/widget/CommandBar$OnItemClickListener;->onItemClicked(Lcom/amazon/android/widget/IWidgetItem;)V

    :cond_0
    return-void
.end method

.method public onOverflowClicked(Lcom/amazon/android/widget/CommandActionView;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBar$1;->this$0:Lcom/amazon/android/widget/CommandBar;

    invoke-static {v0}, Lcom/amazon/android/widget/CommandBar;->access$000(Lcom/amazon/android/widget/CommandBar;)Lcom/amazon/android/widget/CommandBar$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v1, p0, Lcom/amazon/android/widget/CommandBar$1;->this$0:Lcom/amazon/android/widget/CommandBar;

    invoke-static {v1}, Lcom/amazon/android/widget/CommandBar;->access$100(Lcom/amazon/android/widget/CommandBar;)Lcom/amazon/android/widget/CommandActionView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v2, p0, Lcom/amazon/android/widget/CommandBar$1;->this$0:Lcom/amazon/android/widget/CommandBar;

    invoke-virtual {v1}, Lcom/amazon/android/widget/CommandActionView;->getPopupButtonItems()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/android/widget/CommandBar;->access$202(Lcom/amazon/android/widget/CommandBar;Ljava/util/List;)Ljava/util/List;

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/widget/CommandBar$1;->this$0:Lcom/amazon/android/widget/CommandBar;

    invoke-static {v1}, Lcom/amazon/android/widget/CommandBar;->access$300(Lcom/amazon/android/widget/CommandBar;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/widget/CommandBar$Position;

    invoke-interface {v0, p1}, Lcom/amazon/android/widget/CommandBar$OnItemClickListener;->onOverflowClicked(Lcom/amazon/android/widget/CommandBar$Position;)V

    :cond_1
    return-void
.end method
