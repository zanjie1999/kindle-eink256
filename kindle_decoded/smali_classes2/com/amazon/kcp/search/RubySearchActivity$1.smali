.class Lcom/amazon/kcp/search/RubySearchActivity$1;
.super Ljava/lang/Object;
.source "RubySearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/RubySearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/RubySearchActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/RubySearchActivity;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/search/RubySearchActivity$1;->this$0:Lcom/amazon/kcp/search/RubySearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/amazon/kcp/search/RubySearchActivity$1;->this$0:Lcom/amazon/kcp/search/RubySearchActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/RubySearchActivity;->clearResults()V

    return-void
.end method
