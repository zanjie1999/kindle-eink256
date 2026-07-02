.class Lcom/amazon/kindle/krx/reader/BookNavigator$10;
.super Ljava/lang/Object;
.source "BookNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/reader/BookNavigator;->animateToPreviousPage()V
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

    .line 627
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$10;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    iput-object p2, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$10;->val$navigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$10;->val$navigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pagePrev()Z

    return-void
.end method
