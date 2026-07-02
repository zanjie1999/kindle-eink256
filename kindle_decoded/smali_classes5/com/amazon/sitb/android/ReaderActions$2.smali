.class Lcom/amazon/sitb/android/ReaderActions$2;
.super Ljava/lang/Object;
.source "ReaderActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/ReaderActions;->refreshActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/ReaderActions;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/ReaderActions;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/amazon/sitb/android/ReaderActions$2;->this$0:Lcom/amazon/sitb/android/ReaderActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/amazon/sitb/android/ReaderActions$2;->this$0:Lcom/amazon/sitb/android/ReaderActions;

    iget-object v0, v0, Lcom/amazon/sitb/android/ReaderActions;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshActionBarDecoration()V

    return-void
.end method
