.class Lcom/amazon/kcp/store/StoreScreenlet$1;
.super Ljava/lang/Object;
.source "StoreScreenlet.java"

# interfaces
.implements Lcom/amazon/kcp/store/IStoreFragmentClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/StoreScreenlet;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreScreenlet;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreScreenlet$1;->this$0:Lcom/amazon/kcp/store/StoreScreenlet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanGoBackChanged()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreScreenlet$1;->this$0:Lcom/amazon/kcp/store/StoreScreenlet;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreScreenlet;->access$000(Lcom/amazon/kcp/store/StoreScreenlet;)Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->notifyCanGoBackChanged()V

    return-void
.end method
