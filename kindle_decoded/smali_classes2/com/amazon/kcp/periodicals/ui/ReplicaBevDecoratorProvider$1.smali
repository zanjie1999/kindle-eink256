.class Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider$1;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "ReplicaBevDecoratorProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider$1;->this$0:Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 43
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider$1;->this$0:Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->access$000(Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider$1;->this$0:Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->access$102(Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    .line 46
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider$1;->this$0:Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;

    invoke-static {p1, v0}, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->access$002(Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider$1;->this$0:Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;

    invoke-static {p1, v0}, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->access$202(Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    :cond_0
    return-void
.end method
