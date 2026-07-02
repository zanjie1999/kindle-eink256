.class Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$1;
.super Ljava/lang/Object;
.source "WordWiseFtueDialogFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->onWordWiseContentStatusEvent(Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus$ContentStatusEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$000(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)V

    return-void
.end method
