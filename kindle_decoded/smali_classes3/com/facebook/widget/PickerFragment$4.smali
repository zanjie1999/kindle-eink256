.class Lcom/facebook/widget/PickerFragment$4;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/PickerFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/PickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$4;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0

    .line 189
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result p1

    if-nez p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/facebook/widget/PickerFragment$4;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-static {p1}, Lcom/facebook/widget/PickerFragment;->access$100(Lcom/facebook/widget/PickerFragment;)V

    :cond_0
    return-void
.end method
