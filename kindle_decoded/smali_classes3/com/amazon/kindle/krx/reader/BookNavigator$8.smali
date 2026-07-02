.class Lcom/amazon/kindle/krx/reader/BookNavigator$8;
.super Ljava/lang/Object;
.source "BookNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/reader/BookNavigator;->animateToNextPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

.field final synthetic val$navigator:Lcom/amazon/kcp/reader/ReaderNavigator;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/reader/BookNavigator;Lcom/amazon/kcp/reader/ReaderNavigator;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$8;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    iput-object p2, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$8;->val$navigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$8;->val$navigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageNext()Z

    return-void
.end method
