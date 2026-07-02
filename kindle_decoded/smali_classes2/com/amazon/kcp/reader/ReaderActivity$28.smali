.class Lcom/amazon/kcp/reader/ReaderActivity$28;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->createClosingBookOnDeletionDialog(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 4003
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$28;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4006
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$28;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$2500(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/kcp/reader/ReaderController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderController;->finishAllActivities()V

    return-void
.end method
