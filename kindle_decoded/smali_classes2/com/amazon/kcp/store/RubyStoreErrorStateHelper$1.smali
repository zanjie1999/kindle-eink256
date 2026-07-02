.class Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$1;
.super Ljava/lang/Object;
.source "RubyStoreErrorStateHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->initializeErrorView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$1;->this$0:Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$1;->this$0:Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;->retryInErrorState()V

    return-void
.end method
