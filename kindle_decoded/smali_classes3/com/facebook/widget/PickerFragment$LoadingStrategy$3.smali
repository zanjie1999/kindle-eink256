.class Lcom/facebook/widget/PickerFragment$LoadingStrategy$3;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;


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

    .line 882
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$3;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/facebook/widget/GraphObjectAdapter;Lcom/facebook/FacebookException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/GraphObjectAdapter<",
            "*>;",
            "Lcom/facebook/FacebookException;",
            ")V"
        }
    .end annotation

    .line 885
    iget-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$3;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object p1, p1, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-static {p1}, Lcom/facebook/widget/PickerFragment;->access$500(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 886
    iget-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$3;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object p1, p1, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-static {p1}, Lcom/facebook/widget/PickerFragment;->access$500(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$OnErrorListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$3;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object v0, v0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-interface {p1, v0, p2}, Lcom/facebook/widget/PickerFragment$OnErrorListener;->onError(Lcom/facebook/widget/PickerFragment;Lcom/facebook/FacebookException;)V

    :cond_0
    return-void
.end method
