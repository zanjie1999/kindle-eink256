.class Lcom/amazon/kindle/krx/reader/BookNavigator$1;
.super Ljava/lang/Object;
.source "BookNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/reader/BookNavigator;->commitToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

.field final synthetic val$position:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/reader/BookNavigator;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$1;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    iput-object p2, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$1;->val$position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$1;->val$position:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$1;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    invoke-static {v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->access$000(Lcom/amazon/kindle/krx/reader/BookNavigator;)Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$1;->val$position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->commitToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$1;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$1;->val$position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/reader/BookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_1
    :goto_0
    return-void
.end method
