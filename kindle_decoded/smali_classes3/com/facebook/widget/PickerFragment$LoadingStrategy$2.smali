.class Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/PickerFragment$LoadingStrategy;->attach(Lcom/facebook/widget/GraphObjectAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment$LoadingStrategy;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/facebook/FacebookException;Lcom/facebook/widget/GraphObjectPagingLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookException;",
            "Lcom/facebook/widget/GraphObjectPagingLoader<",
            "*>;)V"
        }
    .end annotation

    .line 872
    iget-object p2, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object p2, p2, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-virtual {p2}, Lcom/facebook/widget/PickerFragment;->hideActivityCircle()V

    .line 873
    iget-object p2, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object p2, p2, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-static {p2}, Lcom/facebook/widget/PickerFragment;->access$500(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$OnErrorListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 874
    iget-object p2, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object p2, p2, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-static {p2}, Lcom/facebook/widget/PickerFragment;->access$500(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$OnErrorListener;

    move-result-object p2

    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object v0, v0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-interface {p2, v0, p1}, Lcom/facebook/widget/PickerFragment$OnErrorListener;->onError(Lcom/facebook/widget/PickerFragment;Lcom/facebook/FacebookException;)V

    :cond_0
    return-void
.end method
