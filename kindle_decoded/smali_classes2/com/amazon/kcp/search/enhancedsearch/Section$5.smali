.class Lcom/amazon/kcp/search/enhancedsearch/Section$5;
.super Ljava/lang/Object;
.source "Section.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/enhancedsearch/Section;->onEndSearchResultGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/Section;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$400(Lcom/amazon/kcp/search/enhancedsearch/Section;)I

    move-result v0

    const/4 v1, -0x1

    if-ge v1, v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$410(Lcom/amazon/kcp/search/enhancedsearch/Section;)I

    :cond_0
    return-void
.end method
