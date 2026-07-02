.class final Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler$onInputStream$1;
.super Ljava/lang/Object;
.source "AuthorFollowCardBuilder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;->onInputStream(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler$onInputStream$1;->this$0:Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler$onInputStream$1;->this$0:Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;

    invoke-static {v0}, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;->access$getWidget$p(Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;)Lcom/amazon/kcp/home/widget/AuthorFollowWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->changeFollowButtonState()V

    return-void
.end method
