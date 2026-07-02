.class Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$2;
.super Ljava/lang/Object;
.source "WordWiseFtueDialogFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->checkAndShowFtueDialog()V
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

    .line 225
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$2;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$2;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->showFtueDialog()V

    return-void
.end method
