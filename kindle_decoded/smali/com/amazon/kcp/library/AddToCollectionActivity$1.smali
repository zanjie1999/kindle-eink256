.class Lcom/amazon/kcp/library/AddToCollectionActivity$1;
.super Ljava/lang/Object;
.source "AddToCollectionActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/AddToCollectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/AddToCollectionActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/AddToCollectionActivity;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionActivity$1;->this$0:Lcom/amazon/kcp/library/AddToCollectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionActivity$1;->this$0:Lcom/amazon/kcp/library/AddToCollectionActivity;

    iget-object v0, v0, Lcom/amazon/kcp/library/AddToCollectionActivity;->query:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionActivity$1;->this$0:Lcom/amazon/kcp/library/AddToCollectionActivity;

    iput-object p1, v0, Lcom/amazon/kcp/library/AddToCollectionActivity;->query:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Lcom/amazon/kcp/library/AddToCollectionActivity;->onSearchTextChanged()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
